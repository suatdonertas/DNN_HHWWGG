def checkBatches(df,batch_size=128,weight_column='weight'):
    N_checks = 1000
    sum_sig = 0.
    N_sig = 0
    sum_back = 0.
    N_back = 0
    for i in range(N_checks):
        rnd_df = df.sample(batch_size)
        sum_sig  += rnd_df[rnd_df['label']==1][weight_column].sum()
        sum_back += rnd_df[rnd_df['label']==0][weight_column].sum()
        N_sig    += rnd_df[rnd_df['label']==1].shape[0]
        N_back   += rnd_df[rnd_df['label']==0].shape[0]
    sum_sig  /= N_checks
    sum_back /= N_checks
    N_sig    /= N_checks
    N_back   /= N_checks

    print (f'On average, per batch the total learning weight is')
    print (f'\t... signal     : {sum_sig:15.9f} [{N_sig} events]')
    print (f'\t... background : {sum_back:15.9f} [{N_back} events]')


