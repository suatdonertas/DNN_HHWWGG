import numpy as np
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.collections import LineCollection
from sklearn import metrics 

def rocAndSig(y_true,y_pred,w_roc=None,w_sig=None,outputName=None,colormap='gist_rainbow'):
    """
        y_true      : Numpy array of target labels (0s and 1s)
        y_pred      : Numpy array of the DNN predictions
        w_roc       : Numpy array of the weights to be used in the roc curve and significance
        w_sig       : Numpy array of the weights to be used in the significance
        outputName  : Name of the output path for the plot (default = None, no output)
        colormap    : Matplotlib color map name in https://matplotlib.org/stable/tutorials/colors/colormaps.html
    """
    # Get roc curve data #
    fpr, tpr, threshold = metrics.roc_curve(y_true, y_pred, sample_weight=w_roc,drop_intermediate=True)
    auc = metrics.auc(fpr, tpr) 
    
    N = 100 # Number of significance points
    sig_fpr    = fpr[::threshold.shape[0]//N]
    sig_thresh = threshold[::threshold.shape[0]//N]
    
    # Get significance #
    z = np.zeros(sig_thresh.shape[0])
    for i in range(sig_thresh.shape[0]):
        if w_sig is not None:
            s = w_sig[np.logical_and(y_pred>sig_thresh[i],y_true==1)].sum()
            b = w_sig[np.logical_and(y_pred>sig_thresh[i],y_true==0)].sum()
        else: 
            s = (np.logical_and(y_pred>sig_thresh[i],y_true==1)).sum()
            b = (np.logical_and(y_pred>sig_thresh[i],y_true==0)).sum()
        if b > 0 and s/b > 0 and (s+b)*np.log(1+s/b) >= s:
            z[i] = np.sqrt(2*((s+b)*np.log(1+s/b)-s))
    # Significance of counting experiment with known b : arXiv:1007.1727v3
        
#    if w_sig is None:
#        N_s = y_true[y_true==1].shape[0]
#        N_b = y_true[y_true==0].shape[0]
#    else:
#        N_s = w_sig[y_true==1].sum()
#        N_b = w_sig[y_true==0].sum()
#        N_s *= N_b*0.001/N_s
#    s = tpr * N_s
#    b = fpr * N_b
#    z = np.nan_to_num(np.sqrt(2*((s+b)*np.log(1+s/b)-s)))
    
    # Make figure #
    fig,(ax,cax) = plt.subplots(ncols=2,figsize=(9,6),gridspec_kw={"width_ratios":[1, 0.05]})
    fig.subplots_adjust(left=0.1, right=0.9, top=0.98, bottom=0.1, wspace=0.3)

    # Plot ROC #

    ax.plot([0, 1], [0, 1], 'k--')
    ax.text(0.5,0.1,f'AUC = {auc:.3f}',fontsize=18)
    ax.set_xlabel('Background contamination [FPR]',fontsize=18)
    ax.set_ylabel('Signal efficiency [TPR]',fontsize=18)
    ax.set_xlim([0,1])
    ax.set_ylim([0,1])

    # Create a set of line segments so that we can color them individually
    # This creates the points as a N x 1 x 2 array so that we can stack points
    # together easily to get the segments. The segments array for line collection
    # needs to be numlines x points per line x 2 (x and y)
    points = np.array([fpr,tpr]).T.reshape(-1, 1, 2)
    segments = np.concatenate([points[:-1], points[1:]], axis=1)

    # Create the line collection object, setting the colormapping parameters.
    # Have to set the actual values used for colormapping separately.
    cmap = plt.get_cmap('gist_rainbow')
    norm = plt.Normalize(0, 1)
    lc = LineCollection(segments, cmap=cmap,norm=norm)
    lc.set_array(threshold)
    lc.set_linewidth(3)
    ax.add_collection(lc)

    # Add colorbar for DNN score #
    cbar = plt.colorbar(cm.ScalarMappable(norm=norm, cmap=cmap),cax=cax)
    cbar.set_label('DNN score',fontsize=18)

    # Add significance as second y axis 
#     ax2=ax.twinx()
#     ax2.plot(sig_fpr,z)
#     ax2.set_yscale("log")
#     #ax2.set_ylim([0,z.max()*1.1])
#     ax2.set_ylabel('Significance',fontsize=18)

    # Save and show #
    plt.show()
    if outputName is not None:
        fig.savefig(outputName)
        print (f'Saved ROC as {outputName}')
        
    print (f'Best WP based on significance = {sig_thresh[z.argmax()]:6.5f}')

if __name__ == '__main__':
    # Just a test to check the setup #
    # Use 1000 signal events and 10000 background events
    # Predictions are random and weights as well
    y_true = np.zeros(11000)
    y_true[:1000] = 1
    np.random.shuffle(y_true)
    y_pred = np.random.random(11000)
    w= np.random.random(11000)
    rocAndSig(y_true,y_pred,w,w,'test.pdf')


