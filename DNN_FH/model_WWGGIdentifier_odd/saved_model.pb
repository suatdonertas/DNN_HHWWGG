??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
;
Elu
features"T
activations"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
|
Normalization/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:3*#
shared_nameNormalization/mean
u
&Normalization/mean/Read/ReadVariableOpReadVariableOpNormalization/mean*
_output_shapes
:3*
dtype0
?
Normalization/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:3*'
shared_nameNormalization/variance
}
*Normalization/variance/Read/ReadVariableOpReadVariableOpNormalization/variance*
_output_shapes
:3*
dtype0
z
Normalization/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *$
shared_nameNormalization/count
s
'Normalization/count/Read/ReadVariableOpReadVariableOpNormalization/count*
_output_shapes
: *
dtype0	
x
dense_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3@*
shared_namedense_0/kernel
q
"dense_0/kernel/Read/ReadVariableOpReadVariableOpdense_0/kernel*
_output_shapes

:3@*
dtype0
p
dense_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_0/bias
i
 dense_0/bias/Read/ReadVariableOpReadVariableOpdense_0/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_7/gamma
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_7/beta
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_7/moving_mean
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_7/moving_variance
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_8/gamma
?
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_8/beta
?
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_8/moving_mean
?
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_8/moving_variance
?
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_9/gamma
?
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_9/beta
?
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_9/moving_mean
?
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_9/moving_variance
?
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@@*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_10/gamma
?
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_10/beta
?
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_10/moving_mean
?
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_10/moving_variance
?
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:@*
dtype0
?
predictions/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*#
shared_namepredictions/kernel
y
&predictions/kernel/Read/ReadVariableOpReadVariableOppredictions/kernel*
_output_shapes

:@*
dtype0
x
predictions/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namepredictions/bias
q
$predictions/bias/Read/ReadVariableOpReadVariableOppredictions/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:?*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:?*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:?*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:?*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
z
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_positives_1
s
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes
:*
dtype0
x
true_positives_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_2
q
$true_positives_2/Read/ReadVariableOpReadVariableOptrue_positives_2*
_output_shapes
:*
dtype0
z
false_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_negatives_1
s
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes
:*
dtype0
?
Adam/dense_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3@*&
shared_nameAdam/dense_0/kernel/m

)Adam/dense_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_0/kernel/m*
_output_shapes

:3@*
dtype0
~
Adam/dense_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_0/bias/m
w
'Adam/dense_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_0/bias/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/m
?
6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/m
?
5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes
:@*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_8/gamma/m
?
6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_8/beta/m
?
5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@@*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_9/gamma/m
?
6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/m*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_9/beta/m
?
5Adam/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/m*
_output_shapes
:@*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@@*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_10/gamma/m
?
7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_10/beta/m
?
6Adam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/m*
_output_shapes
:@*
dtype0
?
Adam/predictions/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nameAdam/predictions/kernel/m
?
-Adam/predictions/kernel/m/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/predictions/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/m

+Adam/predictions/bias/m/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3@*&
shared_nameAdam/dense_0/kernel/v

)Adam/dense_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_0/kernel/v*
_output_shapes

:3@*
dtype0
~
Adam/dense_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_0/bias/v
w
'Adam/dense_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_0/bias/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/v
?
6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/v
?
5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes
:@*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_8/gamma/v
?
6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_8/beta/v
?
5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@@*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_9/gamma/v
?
6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/v*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_9/beta/v
?
5Adam/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/v*
_output_shapes
:@*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@@*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_10/gamma/v
?
7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_10/beta/v
?
6Adam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/v*
_output_shapes
:@*
dtype0
?
Adam/predictions/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nameAdam/predictions/kernel/v
?
-Adam/predictions/kernel/v/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/predictions/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/v

+Adam/predictions/bias/v/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?v
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?u
value?uB?u B?u
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
?

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean
variance
	count
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?
 axis
	!gamma
"beta
#moving_mean
$moving_variance
%	variables
&trainable_variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4	variables
5trainable_variables
6regularization_losses
7	keras_api
h

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
h

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?
Maxis
	Ngamma
Obeta
Pmoving_mean
Qmoving_variance
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
h

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
?
\iter

]beta_1

^beta_2
	_decay
`learning_ratem?m?!m?"m?)m?*m?0m?1m?8m?9m??m?@m?Gm?Hm?Nm?Om?Vm?Wm?v?v?!v?"v?)v?*v?0v?1v?8v?9v??v?@v?Gv?Hv?Nv?Ov?Vv?Wv?
?
0
1
2
3
4
!5
"6
#7
$8
)9
*10
011
112
213
314
815
916
?17
@18
A19
B20
G21
H22
N23
O24
P25
Q26
V27
W28
?
0
1
!2
"3
)4
*5
06
17
88
99
?10
@11
G12
H13
N14
O15
V16
W17
 
?
alayer_regularization_losses
	variables
bmetrics
trainable_variables
cnon_trainable_variables
dlayer_metrics

elayers
regularization_losses
 
 
 
 
 
\Z
VARIABLE_VALUENormalization/mean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUENormalization/variance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUENormalization/count5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
ZX
VARIABLE_VALUEdense_0/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_0/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
flayer_regularization_losses
	variables
gmetrics
hnon_trainable_variables
trainable_variables
ilayer_metrics

jlayers
regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
#2
$3

!0
"1
 
?
klayer_regularization_losses
%	variables
lmetrics
mnon_trainable_variables
&trainable_variables
nlayer_metrics

olayers
'regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
player_regularization_losses
+	variables
qmetrics
rnon_trainable_variables
,trainable_variables
slayer_metrics

tlayers
-regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

00
11
22
33

00
11
 
?
ulayer_regularization_losses
4	variables
vmetrics
wnon_trainable_variables
5trainable_variables
xlayer_metrics

ylayers
6regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91

80
91
 
?
zlayer_regularization_losses
:	variables
{metrics
|non_trainable_variables
;trainable_variables
}layer_metrics

~layers
<regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
A2
B3

?0
@1
 
?
layer_regularization_losses
C	variables
?metrics
?non_trainable_variables
Dtrainable_variables
?layer_metrics
?layers
Eregularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

G0
H1

G0
H1
 
?
 ?layer_regularization_losses
I	variables
?metrics
?non_trainable_variables
Jtrainable_variables
?layer_metrics
?layers
Kregularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

N0
O1
P2
Q3

N0
O1
 
?
 ?layer_regularization_losses
R	variables
?metrics
?non_trainable_variables
Strainable_variables
?layer_metrics
?layers
Tregularization_losses
^\
VARIABLE_VALUEpredictions/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEpredictions/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

V0
W1

V0
W1
 
?
 ?layer_regularization_losses
X	variables
?metrics
?non_trainable_variables
Ytrainable_variables
?layer_metrics
?layers
Zregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
(
?0
?1
?2
?3
?4
N
0
1
2
#3
$4
25
36
A7
B8
P9
Q10
 
N
0
1
2
3
4
5
6
7
	8

9
10
 
 
 
 
 
 
 

#0
$1
 
 
 
 
 
 
 
 
 

20
31
 
 
 
 
 
 
 
 
 

A0
B1
 
 
 
 
 
 
 
 
 

P0
Q1
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
ca
VARIABLE_VALUEtrue_positives_2=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
}{
VARIABLE_VALUEAdam/dense_0/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_0/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_7/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_9/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_9/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_10/gamma/mQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_10/beta/mPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/predictions/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/predictions/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_0/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_0/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_7/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_9/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_9/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_10/gamma/vQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_10/beta/vPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/predictions/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/predictions/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_particlesPlaceholder*'
_output_shapes
:?????????3*
dtype0*
shape:?????????3
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_particlesNormalization/meanNormalization/variancedense_0/kerneldense_0/bias%batch_normalization_7/moving_variancebatch_normalization_7/gamma!batch_normalization_7/moving_meanbatch_normalization_7/betadense_1/kerneldense_1/bias%batch_normalization_8/moving_variancebatch_normalization_8/gamma!batch_normalization_8/moving_meanbatch_normalization_8/betadense_2/kerneldense_2/bias%batch_normalization_9/moving_variancebatch_normalization_9/gamma!batch_normalization_9/moving_meanbatch_normalization_9/betadense_3/kerneldense_3/bias&batch_normalization_10/moving_variancebatch_normalization_10/gamma"batch_normalization_10/moving_meanbatch_normalization_10/betapredictions/kernelpredictions/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2255211
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&Normalization/mean/Read/ReadVariableOp*Normalization/variance/Read/ReadVariableOp'Normalization/count/Read/ReadVariableOp"dense_0/kernel/Read/ReadVariableOp dense_0/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp&predictions/kernel/Read/ReadVariableOp$predictions/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp%false_positives_1/Read/ReadVariableOp$true_positives_2/Read/ReadVariableOp%false_negatives_1/Read/ReadVariableOp)Adam/dense_0/kernel/m/Read/ReadVariableOp'Adam/dense_0/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_9/beta/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_10/beta/m/Read/ReadVariableOp-Adam/predictions/kernel/m/Read/ReadVariableOp+Adam/predictions/bias/m/Read/ReadVariableOp)Adam/dense_0/kernel/v/Read/ReadVariableOp'Adam/dense_0/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_9/beta/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_10/beta/v/Read/ReadVariableOp-Adam/predictions/kernel/v/Read/ReadVariableOp+Adam/predictions/bias/v/Read/ReadVariableOpConst*_
TinX
V2T		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_2256505
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameNormalization/meanNormalization/varianceNormalization/countdense_0/kerneldense_0/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense_1/kerneldense_1/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_2/kerneldense_2/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense_3/kerneldense_3/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_variancepredictions/kernelpredictions/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivestrue_negativesfalse_positivesfalse_negativestrue_positives_1false_positives_1true_positives_2false_negatives_1Adam/dense_0/kernel/mAdam/dense_0/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/mAdam/dense_1/kernel/mAdam/dense_1/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/dense_2/kernel/mAdam/dense_2/bias/m"Adam/batch_normalization_9/gamma/m!Adam/batch_normalization_9/beta/mAdam/dense_3/kernel/mAdam/dense_3/bias/m#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/mAdam/predictions/kernel/mAdam/predictions/bias/mAdam/dense_0/kernel/vAdam/dense_0/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/vAdam/dense_1/kernel/vAdam/dense_1/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/dense_2/kernel/vAdam/dense_2/bias/v"Adam/batch_normalization_9/gamma/v!Adam/batch_normalization_9/beta/vAdam/dense_3/kernel/vAdam/dense_3/bias/v#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/vAdam/predictions/kernel/vAdam/predictions/bias/v*^
TinW
U2S*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_2256761??
?

?
H__inference_predictions_layer_call_and_return_conditional_losses_2256236

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2253598

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_7_layer_call_fn_2255807

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22535982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
H__inference_predictions_layer_call_and_return_conditional_losses_2254381

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_dense_0_layer_call_and_return_conditional_losses_2254245

inputs0
matmul_readvariableop_resource:3@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:3@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2254063

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2255861

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2255827

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2253948

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2255961

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_dense_0_layer_call_fn_2255770

inputs
unknown:3@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_0_layer_call_and_return_conditional_losses_22542452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????3: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_8_layer_call_fn_2255894

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_22537132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
G
0__inference_dense_0_activity_regularizer_2253514
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2253538

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ۭ
?
D__inference_model_4_layer_call_and_return_conditional_losses_2255142
	particles;
-normalization_reshape_readvariableop_resource:3=
/normalization_reshape_1_readvariableop_resource:3!
dense_0_2255035:3@
dense_0_2255037:@+
batch_normalization_7_2255048:@+
batch_normalization_7_2255050:@+
batch_normalization_7_2255052:@+
batch_normalization_7_2255054:@!
dense_1_2255057:@@
dense_1_2255059:@+
batch_normalization_8_2255070:@+
batch_normalization_8_2255072:@+
batch_normalization_8_2255074:@+
batch_normalization_8_2255076:@!
dense_2_2255079:@@
dense_2_2255081:@+
batch_normalization_9_2255092:@+
batch_normalization_9_2255094:@+
batch_normalization_9_2255096:@+
batch_normalization_9_2255098:@!
dense_3_2255101:@@
dense_3_2255103:@,
batch_normalization_10_2255114:@,
batch_normalization_10_2255116:@,
batch_normalization_10_2255118:@,
batch_normalization_10_2255120:@%
predictions_2255123:@!
predictions_2255125:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??$Normalization/Reshape/ReadVariableOp?&Normalization/Reshape_1/ReadVariableOp?.batch_normalization_10/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall?dense_0/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?
$Normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:3*
dtype02&
$Normalization/Reshape/ReadVariableOp?
Normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape/shape?
Normalization/ReshapeReshape,Normalization/Reshape/ReadVariableOp:value:0$Normalization/Reshape/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape?
&Normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:3*
dtype02(
&Normalization/Reshape_1/ReadVariableOp?
Normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape_1/shape?
Normalization/Reshape_1Reshape.Normalization/Reshape_1/ReadVariableOp:value:0&Normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape_1?
Normalization/subSub	particlesNormalization/Reshape:output:0*
T0*'
_output_shapes
:?????????32
Normalization/sub{
Normalization/SqrtSqrt Normalization/Reshape_1:output:0*
T0*
_output_shapes

:32
Normalization/Sqrtw
Normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
Normalization/Maximum/y?
Normalization/MaximumMaximumNormalization/Sqrt:y:0 Normalization/Maximum/y:output:0*
T0*
_output_shapes

:32
Normalization/Maximum?
Normalization/truedivRealDivNormalization/sub:z:0Normalization/Maximum:z:0*
T0*'
_output_shapes
:?????????32
Normalization/truediv?
dense_0/StatefulPartitionedCallStatefulPartitionedCallNormalization/truediv:z:0dense_0_2255035dense_0_2255037*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_0_layer_call_and_return_conditional_losses_22542452!
dense_0/StatefulPartitionedCall?
+dense_0/ActivityRegularizer/PartitionedCallPartitionedCall(dense_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_0_activity_regularizer_22535142-
+dense_0/ActivityRegularizer/PartitionedCall?
!dense_0/ActivityRegularizer/ShapeShape(dense_0/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_0/ActivityRegularizer/Shape?
/dense_0/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_0/ActivityRegularizer/strided_slice/stack?
1dense_0/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_1?
1dense_0/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_2?
)dense_0/ActivityRegularizer/strided_sliceStridedSlice*dense_0/ActivityRegularizer/Shape:output:08dense_0/ActivityRegularizer/strided_slice/stack:output:0:dense_0/ActivityRegularizer/strided_slice/stack_1:output:0:dense_0/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_0/ActivityRegularizer/strided_slice?
 dense_0/ActivityRegularizer/CastCast2dense_0/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_0/ActivityRegularizer/Cast?
#dense_0/ActivityRegularizer/truedivRealDiv4dense_0/ActivityRegularizer/PartitionedCall:output:0$dense_0/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_0/ActivityRegularizer/truediv?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0batch_normalization_7_2255048batch_normalization_7_2255050batch_normalization_7_2255052batch_normalization_7_2255054*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22535982/
-batch_normalization_7/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_1_2255057dense_1_2255059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22542792!
dense_1/StatefulPartitionedCall?
+dense_1/ActivityRegularizer/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_1_activity_regularizer_22536892-
+dense_1/ActivityRegularizer/PartitionedCall?
!dense_1/ActivityRegularizer/ShapeShape(dense_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_1/ActivityRegularizer/Shape?
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_1/ActivityRegularizer/strided_slice/stack?
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_1?
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_2?
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_1/ActivityRegularizer/strided_slice?
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_1/ActivityRegularizer/Cast?
#dense_1/ActivityRegularizer/truedivRealDiv4dense_1/ActivityRegularizer/PartitionedCall:output:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_1/ActivityRegularizer/truediv?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_8_2255070batch_normalization_8_2255072batch_normalization_8_2255074batch_normalization_8_2255076*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_22537732/
-batch_normalization_8/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_2_2255079dense_2_2255081*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_22543132!
dense_2/StatefulPartitionedCall?
+dense_2/ActivityRegularizer/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_2_activity_regularizer_22538642-
+dense_2/ActivityRegularizer/PartitionedCall?
!dense_2/ActivityRegularizer/ShapeShape(dense_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_2/ActivityRegularizer/Shape?
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_2/ActivityRegularizer/strided_slice/stack?
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_1?
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_2?
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_2/ActivityRegularizer/strided_slice?
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_2/ActivityRegularizer/Cast?
#dense_2/ActivityRegularizer/truedivRealDiv4dense_2/ActivityRegularizer/PartitionedCall:output:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_2/ActivityRegularizer/truediv?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0batch_normalization_9_2255092batch_normalization_9_2255094batch_normalization_9_2255096batch_normalization_9_2255098*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_22539482/
-batch_normalization_9/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_3_2255101dense_3_2255103*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_22543472!
dense_3/StatefulPartitionedCall?
+dense_3/ActivityRegularizer/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_3_activity_regularizer_22540392-
+dense_3/ActivityRegularizer/PartitionedCall?
!dense_3/ActivityRegularizer/ShapeShape(dense_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_3/ActivityRegularizer/Shape?
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_3/ActivityRegularizer/strided_slice/stack?
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_1?
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_2?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_3/ActivityRegularizer/strided_slice?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_3/ActivityRegularizer/Cast?
#dense_3/ActivityRegularizer/truedivRealDiv4dense_3/ActivityRegularizer/PartitionedCall:output:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_3/ActivityRegularizer/truediv?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0batch_normalization_10_2255114batch_normalization_10_2255116batch_normalization_10_2255118batch_normalization_10_2255120*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_225412320
.batch_normalization_10/StatefulPartitionedCall?
#predictions/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0predictions_2255123predictions_2255125*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_predictions_layer_call_and_return_conditional_losses_22543812%
#predictions/StatefulPartitionedCall?
/predictions/ActivityRegularizer/PartitionedCallPartitionedCall,predictions/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *=
f8R6
4__inference_predictions_activity_regularizer_225421421
/predictions/ActivityRegularizer/PartitionedCall?
%predictions/ActivityRegularizer/ShapeShape,predictions/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%predictions/ActivityRegularizer/Shape?
3predictions/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3predictions/ActivityRegularizer/strided_slice/stack?
5predictions/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_1?
5predictions/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_2?
-predictions/ActivityRegularizer/strided_sliceStridedSlice.predictions/ActivityRegularizer/Shape:output:0<predictions/ActivityRegularizer/strided_slice/stack:output:0>predictions/ActivityRegularizer/strided_slice/stack_1:output:0>predictions/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-predictions/ActivityRegularizer/strided_slice?
$predictions/ActivityRegularizer/CastCast6predictions/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$predictions/ActivityRegularizer/Cast?
'predictions/ActivityRegularizer/truedivRealDiv8predictions/ActivityRegularizer/PartitionedCall:output:0(predictions/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'predictions/ActivityRegularizer/truediv?
IdentityIdentity,predictions/StatefulPartitionedCall:output:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity'dense_0/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_1/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_2/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity'dense_3/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4?

Identity_5Identity+predictions/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$Normalization/Reshape/ReadVariableOp$Normalization/Reshape/ReadVariableOp2P
&Normalization/Reshape_1/ReadVariableOp&Normalization/Reshape_1/ReadVariableOp2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:R N
'
_output_shapes
:?????????3
#
_user_specified_name	particles
?)
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2256161

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2256027

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
G
0__inference_dense_3_activity_regularizer_2254039
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
%__inference_signature_wrapper_2255211
	particles
unknown:3
	unknown_0:3
	unknown_1:3@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@

unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	particlesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_22535012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????3
#
_user_specified_name	particles
?
?
)__inference_model_4_layer_call_fn_2255277

inputs
unknown:3
	unknown_0:3
	unknown_1:3@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@

unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout

2*
_collective_manager_ids
 *1
_output_shapes
:?????????: : : : : *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_22544012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
?
G
0__inference_dense_1_activity_regularizer_2253689
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
)__inference_model_4_layer_call_fn_2255343

inputs
unknown:3
	unknown_0:3
	unknown_1:3@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@

unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout

2*
_collective_manager_ids
 *1
_output_shapes
:?????????: : : : : *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_22547662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2255927

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_10_layer_call_fn_2256107

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_22541232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_9_layer_call_fn_2256007

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_22539482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_model_4_layer_call_fn_2254896
	particles
unknown:3
	unknown_0:3
	unknown_1:3@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@

unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	particlesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout

2*
_collective_manager_ids
 *1
_output_shapes
:?????????: : : : : *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_22547662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????3
#
_user_specified_name	particles
?
?
H__inference_dense_0_layer_call_and_return_all_conditional_losses_2255781

inputs
unknown:3@
	unknown_0:@
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_0_layer_call_and_return_conditional_losses_22542452
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_0_activity_regularizer_22535142
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????3: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
??
?
D__inference_model_4_layer_call_and_return_conditional_losses_2255524

inputs;
-normalization_reshape_readvariableop_resource:3=
/normalization_reshape_1_readvariableop_resource:38
&dense_0_matmul_readvariableop_resource:3@5
'dense_0_biasadd_readvariableop_resource:@E
7batch_normalization_7_batchnorm_readvariableop_resource:@I
;batch_normalization_7_batchnorm_mul_readvariableop_resource:@G
9batch_normalization_7_batchnorm_readvariableop_1_resource:@G
9batch_normalization_7_batchnorm_readvariableop_2_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@E
7batch_normalization_8_batchnorm_readvariableop_resource:@I
;batch_normalization_8_batchnorm_mul_readvariableop_resource:@G
9batch_normalization_8_batchnorm_readvariableop_1_resource:@G
9batch_normalization_8_batchnorm_readvariableop_2_resource:@8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@E
7batch_normalization_9_batchnorm_readvariableop_resource:@I
;batch_normalization_9_batchnorm_mul_readvariableop_resource:@G
9batch_normalization_9_batchnorm_readvariableop_1_resource:@G
9batch_normalization_9_batchnorm_readvariableop_2_resource:@8
&dense_3_matmul_readvariableop_resource:@@5
'dense_3_biasadd_readvariableop_resource:@F
8batch_normalization_10_batchnorm_readvariableop_resource:@J
<batch_normalization_10_batchnorm_mul_readvariableop_resource:@H
:batch_normalization_10_batchnorm_readvariableop_1_resource:@H
:batch_normalization_10_batchnorm_readvariableop_2_resource:@<
*predictions_matmul_readvariableop_resource:@9
+predictions_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??$Normalization/Reshape/ReadVariableOp?&Normalization/Reshape_1/ReadVariableOp?/batch_normalization_10/batchnorm/ReadVariableOp?1batch_normalization_10/batchnorm/ReadVariableOp_1?1batch_normalization_10/batchnorm/ReadVariableOp_2?3batch_normalization_10/batchnorm/mul/ReadVariableOp?.batch_normalization_7/batchnorm/ReadVariableOp?0batch_normalization_7/batchnorm/ReadVariableOp_1?0batch_normalization_7/batchnorm/ReadVariableOp_2?2batch_normalization_7/batchnorm/mul/ReadVariableOp?.batch_normalization_8/batchnorm/ReadVariableOp?0batch_normalization_8/batchnorm/ReadVariableOp_1?0batch_normalization_8/batchnorm/ReadVariableOp_2?2batch_normalization_8/batchnorm/mul/ReadVariableOp?.batch_normalization_9/batchnorm/ReadVariableOp?0batch_normalization_9/batchnorm/ReadVariableOp_1?0batch_normalization_9/batchnorm/ReadVariableOp_2?2batch_normalization_9/batchnorm/mul/ReadVariableOp?dense_0/BiasAdd/ReadVariableOp?dense_0/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?"predictions/BiasAdd/ReadVariableOp?!predictions/MatMul/ReadVariableOp?
$Normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:3*
dtype02&
$Normalization/Reshape/ReadVariableOp?
Normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape/shape?
Normalization/ReshapeReshape,Normalization/Reshape/ReadVariableOp:value:0$Normalization/Reshape/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape?
&Normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:3*
dtype02(
&Normalization/Reshape_1/ReadVariableOp?
Normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape_1/shape?
Normalization/Reshape_1Reshape.Normalization/Reshape_1/ReadVariableOp:value:0&Normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape_1?
Normalization/subSubinputsNormalization/Reshape:output:0*
T0*'
_output_shapes
:?????????32
Normalization/sub{
Normalization/SqrtSqrt Normalization/Reshape_1:output:0*
T0*
_output_shapes

:32
Normalization/Sqrtw
Normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
Normalization/Maximum/y?
Normalization/MaximumMaximumNormalization/Sqrt:y:0 Normalization/Maximum/y:output:0*
T0*
_output_shapes

:32
Normalization/Maximum?
Normalization/truedivRealDivNormalization/sub:z:0Normalization/Maximum:z:0*
T0*'
_output_shapes
:?????????32
Normalization/truediv?
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes

:3@*
dtype02
dense_0/MatMul/ReadVariableOp?
dense_0/MatMulMatMulNormalization/truediv:z:0%dense_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_0/MatMul?
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_0/BiasAdd/ReadVariableOp?
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_0/BiasAddm
dense_0/EluEludense_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_0/Elu?
"dense_0/ActivityRegularizer/SquareSquaredense_0/Elu:activations:0*
T0*'
_output_shapes
:?????????@2$
"dense_0/ActivityRegularizer/Square?
!dense_0/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_0/ActivityRegularizer/Const?
dense_0/ActivityRegularizer/SumSum&dense_0/ActivityRegularizer/Square:y:0*dense_0/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_0/ActivityRegularizer/Sum?
!dense_0/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_0/ActivityRegularizer/mul/x?
dense_0/ActivityRegularizer/mulMul*dense_0/ActivityRegularizer/mul/x:output:0(dense_0/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_0/ActivityRegularizer/mul?
!dense_0/ActivityRegularizer/ShapeShapedense_0/Elu:activations:0*
T0*
_output_shapes
:2#
!dense_0/ActivityRegularizer/Shape?
/dense_0/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_0/ActivityRegularizer/strided_slice/stack?
1dense_0/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_1?
1dense_0/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_2?
)dense_0/ActivityRegularizer/strided_sliceStridedSlice*dense_0/ActivityRegularizer/Shape:output:08dense_0/ActivityRegularizer/strided_slice/stack:output:0:dense_0/ActivityRegularizer/strided_slice/stack_1:output:0:dense_0/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_0/ActivityRegularizer/strided_slice?
 dense_0/ActivityRegularizer/CastCast2dense_0/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_0/ActivityRegularizer/Cast?
#dense_0/ActivityRegularizer/truedivRealDiv#dense_0/ActivityRegularizer/mul:z:0$dense_0/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_0/ActivityRegularizer/truediv?
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_7/batchnorm/ReadVariableOp?
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_7/batchnorm/add/y?
#batch_normalization_7/batchnorm/addAddV26batch_normalization_7/batchnorm/ReadVariableOp:value:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_7/batchnorm/add?
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_7/batchnorm/Rsqrt?
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_7/batchnorm/mul/ReadVariableOp?
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_7/batchnorm/mul?
%batch_normalization_7/batchnorm/mul_1Muldense_0/Elu:activations:0'batch_normalization_7/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_7/batchnorm/mul_1?
0batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype022
0batch_normalization_7/batchnorm/ReadVariableOp_1?
%batch_normalization_7/batchnorm/mul_2Mul8batch_normalization_7/batchnorm/ReadVariableOp_1:value:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_7/batchnorm/mul_2?
0batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype022
0batch_normalization_7/batchnorm/ReadVariableOp_2?
#batch_normalization_7/batchnorm/subSub8batch_normalization_7/batchnorm/ReadVariableOp_2:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_7/batchnorm/sub?
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_7/batchnorm/add_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddm
dense_1/EluEludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1/Elu?
"dense_1/ActivityRegularizer/SquareSquaredense_1/Elu:activations:0*
T0*'
_output_shapes
:?????????@2$
"dense_1/ActivityRegularizer/Square?
!dense_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_1/ActivityRegularizer/Const?
dense_1/ActivityRegularizer/SumSum&dense_1/ActivityRegularizer/Square:y:0*dense_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_1/ActivityRegularizer/Sum?
!dense_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_1/ActivityRegularizer/mul/x?
dense_1/ActivityRegularizer/mulMul*dense_1/ActivityRegularizer/mul/x:output:0(dense_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_1/ActivityRegularizer/mul?
!dense_1/ActivityRegularizer/ShapeShapedense_1/Elu:activations:0*
T0*
_output_shapes
:2#
!dense_1/ActivityRegularizer/Shape?
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_1/ActivityRegularizer/strided_slice/stack?
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_1?
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_2?
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_1/ActivityRegularizer/strided_slice?
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_1/ActivityRegularizer/Cast?
#dense_1/ActivityRegularizer/truedivRealDiv#dense_1/ActivityRegularizer/mul:z:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_1/ActivityRegularizer/truediv?
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOp?
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_8/batchnorm/add/y?
#batch_normalization_8/batchnorm/addAddV26batch_normalization_8/batchnorm/ReadVariableOp:value:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_8/batchnorm/add?
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_8/batchnorm/Rsqrt?
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOp?
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_8/batchnorm/mul?
%batch_normalization_8/batchnorm/mul_1Muldense_1/Elu:activations:0'batch_normalization_8/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_8/batchnorm/mul_1?
0batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_1?
%batch_normalization_8/batchnorm/mul_2Mul8batch_normalization_8/batchnorm/ReadVariableOp_1:value:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_8/batchnorm/mul_2?
0batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_2?
#batch_normalization_8/batchnorm/subSub8batch_normalization_8/batchnorm/ReadVariableOp_2:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_8/batchnorm/sub?
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_8/batchnorm/add_1?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAddm
dense_2/EluEludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_2/Elu?
"dense_2/ActivityRegularizer/SquareSquaredense_2/Elu:activations:0*
T0*'
_output_shapes
:?????????@2$
"dense_2/ActivityRegularizer/Square?
!dense_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_2/ActivityRegularizer/Const?
dense_2/ActivityRegularizer/SumSum&dense_2/ActivityRegularizer/Square:y:0*dense_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_2/ActivityRegularizer/Sum?
!dense_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_2/ActivityRegularizer/mul/x?
dense_2/ActivityRegularizer/mulMul*dense_2/ActivityRegularizer/mul/x:output:0(dense_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_2/ActivityRegularizer/mul?
!dense_2/ActivityRegularizer/ShapeShapedense_2/Elu:activations:0*
T0*
_output_shapes
:2#
!dense_2/ActivityRegularizer/Shape?
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_2/ActivityRegularizer/strided_slice/stack?
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_1?
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_2?
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_2/ActivityRegularizer/strided_slice?
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_2/ActivityRegularizer/Cast?
#dense_2/ActivityRegularizer/truedivRealDiv#dense_2/ActivityRegularizer/mul:z:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_2/ActivityRegularizer/truediv?
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOp?
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_9/batchnorm/add/y?
#batch_normalization_9/batchnorm/addAddV26batch_normalization_9/batchnorm/ReadVariableOp:value:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/add?
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_9/batchnorm/Rsqrt?
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOp?
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/mul?
%batch_normalization_9/batchnorm/mul_1Muldense_2/Elu:activations:0'batch_normalization_9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_9/batchnorm/mul_1?
0batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_1?
%batch_normalization_9/batchnorm/mul_2Mul8batch_normalization_9/batchnorm/ReadVariableOp_1:value:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_9/batchnorm/mul_2?
0batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_2?
#batch_normalization_9/batchnorm/subSub8batch_normalization_9/batchnorm/ReadVariableOp_2:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/sub?
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_9/batchnorm/add_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_3/BiasAddm
dense_3/EluEludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_3/Elu?
"dense_3/ActivityRegularizer/SquareSquaredense_3/Elu:activations:0*
T0*'
_output_shapes
:?????????@2$
"dense_3/ActivityRegularizer/Square?
!dense_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_3/ActivityRegularizer/Const?
dense_3/ActivityRegularizer/SumSum&dense_3/ActivityRegularizer/Square:y:0*dense_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_3/ActivityRegularizer/Sum?
!dense_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_3/ActivityRegularizer/mul/x?
dense_3/ActivityRegularizer/mulMul*dense_3/ActivityRegularizer/mul/x:output:0(dense_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_3/ActivityRegularizer/mul?
!dense_3/ActivityRegularizer/ShapeShapedense_3/Elu:activations:0*
T0*
_output_shapes
:2#
!dense_3/ActivityRegularizer/Shape?
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_3/ActivityRegularizer/strided_slice/stack?
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_1?
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_2?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_3/ActivityRegularizer/strided_slice?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_3/ActivityRegularizer/Cast?
#dense_3/ActivityRegularizer/truedivRealDiv#dense_3/ActivityRegularizer/mul:z:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_3/ActivityRegularizer/truediv?
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/batch_normalization_10/batchnorm/ReadVariableOp?
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_10/batchnorm/add/y?
$batch_normalization_10/batchnorm/addAddV27batch_normalization_10/batchnorm/ReadVariableOp:value:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$batch_normalization_10/batchnorm/add?
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&batch_normalization_10/batchnorm/Rsqrt?
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization_10/batchnorm/mul/ReadVariableOp?
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$batch_normalization_10/batchnorm/mul?
&batch_normalization_10/batchnorm/mul_1Muldense_3/Elu:activations:0(batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2(
&batch_normalization_10/batchnorm/mul_1?
1batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1batch_normalization_10/batchnorm/ReadVariableOp_1?
&batch_normalization_10/batchnorm/mul_2Mul9batch_normalization_10/batchnorm/ReadVariableOp_1:value:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&batch_normalization_10/batchnorm/mul_2?
1batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype023
1batch_normalization_10/batchnorm/ReadVariableOp_2?
$batch_normalization_10/batchnorm/subSub9batch_normalization_10/batchnorm/ReadVariableOp_2:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$batch_normalization_10/batchnorm/sub?
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2(
&batch_normalization_10/batchnorm/add_1?
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02#
!predictions/MatMul/ReadVariableOp?
predictions/MatMulMatMul*batch_normalization_10/batchnorm/add_1:z:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
predictions/MatMul?
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"predictions/BiasAdd/ReadVariableOp?
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
predictions/BiasAdd?
predictions/SoftmaxSoftmaxpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
predictions/Softmax?
&predictions/ActivityRegularizer/SquareSquarepredictions/Softmax:softmax:0*
T0*'
_output_shapes
:?????????2(
&predictions/ActivityRegularizer/Square?
%predictions/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%predictions/ActivityRegularizer/Const?
#predictions/ActivityRegularizer/SumSum*predictions/ActivityRegularizer/Square:y:0.predictions/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2%
#predictions/ActivityRegularizer/Sum?
%predictions/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%predictions/ActivityRegularizer/mul/x?
#predictions/ActivityRegularizer/mulMul.predictions/ActivityRegularizer/mul/x:output:0,predictions/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#predictions/ActivityRegularizer/mul?
%predictions/ActivityRegularizer/ShapeShapepredictions/Softmax:softmax:0*
T0*
_output_shapes
:2'
%predictions/ActivityRegularizer/Shape?
3predictions/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3predictions/ActivityRegularizer/strided_slice/stack?
5predictions/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_1?
5predictions/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_2?
-predictions/ActivityRegularizer/strided_sliceStridedSlice.predictions/ActivityRegularizer/Shape:output:0<predictions/ActivityRegularizer/strided_slice/stack:output:0>predictions/ActivityRegularizer/strided_slice/stack_1:output:0>predictions/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-predictions/ActivityRegularizer/strided_slice?
$predictions/ActivityRegularizer/CastCast6predictions/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$predictions/ActivityRegularizer/Cast?
'predictions/ActivityRegularizer/truedivRealDiv'predictions/ActivityRegularizer/mul:z:0(predictions/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'predictions/ActivityRegularizer/truediv?

IdentityIdentitypredictions/Softmax:softmax:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?


Identity_1Identity'dense_0/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?


Identity_2Identity'dense_1/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?


Identity_3Identity'dense_2/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?


Identity_4Identity'dense_3/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4?


Identity_5Identity+predictions/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$Normalization/Reshape/ReadVariableOp$Normalization/Reshape/ReadVariableOp2P
&Normalization/Reshape_1/ReadVariableOp&Normalization/Reshape_1/ReadVariableOp2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2f
1batch_normalization_10/batchnorm/ReadVariableOp_11batch_normalization_10/batchnorm/ReadVariableOp_12f
1batch_normalization_10/batchnorm/ReadVariableOp_21batch_normalization_10/batchnorm/ReadVariableOp_22j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2d
0batch_normalization_7/batchnorm/ReadVariableOp_10batch_normalization_7/batchnorm/ReadVariableOp_12d
0batch_normalization_7/batchnorm/ReadVariableOp_20batch_normalization_7/batchnorm/ReadVariableOp_22h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2d
0batch_normalization_8/batchnorm/ReadVariableOp_10batch_normalization_8/batchnorm/ReadVariableOp_12d
0batch_normalization_8/batchnorm/ReadVariableOp_20batch_normalization_8/batchnorm/ReadVariableOp_22h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2d
0batch_normalization_9/batchnorm/ReadVariableOp_10batch_normalization_9/batchnorm/ReadVariableOp_12d
0batch_normalization_9/batchnorm/ReadVariableOp_20batch_normalization_9/batchnorm/ReadVariableOp_22h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
?
G
0__inference_dense_2_activity_regularizer_2253864
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
)__inference_dense_2_layer_call_fn_2255970

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_22543132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?$
 __inference__traced_save_2256505
file_prefix1
-savev2_normalization_mean_read_readvariableop5
1savev2_normalization_variance_read_readvariableop2
.savev2_normalization_count_read_readvariableop	-
)savev2_dense_0_kernel_read_readvariableop+
'savev2_dense_0_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop1
-savev2_predictions_kernel_read_readvariableop/
+savev2_predictions_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop0
,savev2_false_positives_1_read_readvariableop/
+savev2_true_positives_2_read_readvariableop0
,savev2_false_negatives_1_read_readvariableop4
0savev2_adam_dense_0_kernel_m_read_readvariableop2
.savev2_adam_dense_0_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_m_read_readvariableop8
4savev2_adam_predictions_kernel_m_read_readvariableop6
2savev2_adam_predictions_bias_m_read_readvariableop4
0savev2_adam_dense_0_kernel_v_read_readvariableop2
.savev2_adam_dense_0_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_v_read_readvariableop8
4savev2_adam_predictions_kernel_v_read_readvariableop6
2savev2_adam_predictions_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?,
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*?,
value?+B?+SB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*?
value?B?SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_normalization_mean_read_readvariableop1savev2_normalization_variance_read_readvariableop.savev2_normalization_count_read_readvariableop)savev2_dense_0_kernel_read_readvariableop'savev2_dense_0_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop-savev2_predictions_kernel_read_readvariableop+savev2_predictions_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop+savev2_true_positives_1_read_readvariableop,savev2_false_positives_1_read_readvariableop+savev2_true_positives_2_read_readvariableop,savev2_false_negatives_1_read_readvariableop0savev2_adam_dense_0_kernel_m_read_readvariableop.savev2_adam_dense_0_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop<savev2_adam_batch_normalization_9_beta_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop>savev2_adam_batch_normalization_10_gamma_m_read_readvariableop=savev2_adam_batch_normalization_10_beta_m_read_readvariableop4savev2_adam_predictions_kernel_m_read_readvariableop2savev2_adam_predictions_bias_m_read_readvariableop0savev2_adam_dense_0_kernel_v_read_readvariableop.savev2_adam_dense_0_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop<savev2_adam_batch_normalization_9_beta_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop>savev2_adam_batch_normalization_10_gamma_v_read_readvariableop=savev2_adam_batch_normalization_10_beta_v_read_readvariableop4savev2_adam_predictions_kernel_v_read_readvariableop2savev2_adam_predictions_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *a
dtypesW
U2S		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :3:3: :3@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:@:: : : : : : : : : :?:?:?:?:::::3@:@:@:@:@@:@:@:@:@@:@:@:@:@@:@:@:@:@::3@:@:@:@:@@:@:@:@:@@:@:@:@:@@:@:@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:3: 

_output_shapes
:3:

_output_shapes
: :$ 

_output_shapes

:3@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 	

_output_shapes
:@:$
 

_output_shapes

:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :!'

_output_shapes	
:?:!(

_output_shapes	
:?:!)

_output_shapes	
:?:!*

_output_shapes	
:?: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
:: .

_output_shapes
::$/ 

_output_shapes

:3@: 0

_output_shapes
:@: 1

_output_shapes
:@: 2

_output_shapes
:@:$3 

_output_shapes

:@@: 4

_output_shapes
:@: 5

_output_shapes
:@: 6

_output_shapes
:@:$7 

_output_shapes

:@@: 8

_output_shapes
:@: 9

_output_shapes
:@: :

_output_shapes
:@:$; 

_output_shapes

:@@: <

_output_shapes
:@: =

_output_shapes
:@: >

_output_shapes
:@:$? 

_output_shapes

:@: @

_output_shapes
::$A 

_output_shapes

:3@: B

_output_shapes
:@: C

_output_shapes
:@: D

_output_shapes
:@:$E 

_output_shapes

:@@: F

_output_shapes
:@: G

_output_shapes
:@: H

_output_shapes
:@:$I 

_output_shapes

:@@: J

_output_shapes
:@: K

_output_shapes
:@: L

_output_shapes
:@:$M 

_output_shapes

:@@: N

_output_shapes
:@: O

_output_shapes
:@: P

_output_shapes
:@:$Q 

_output_shapes

:@: R

_output_shapes
::S

_output_shapes
: 
?
?
)__inference_dense_3_layer_call_fn_2256070

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_22543472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_8_layer_call_fn_2255907

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_22537732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
L__inference_predictions_layer_call_and_return_all_conditional_losses_2256181

inputs
unknown:@
	unknown_0:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_predictions_layer_call_and_return_conditional_losses_22543812
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *=
f8R6
4__inference_predictions_activity_regularizer_22542142
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
H__inference_dense_2_layer_call_and_return_all_conditional_losses_2255981

inputs
unknown:@@
	unknown_0:@
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_22543132
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_2_activity_regularizer_22538642
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_10_layer_call_fn_2256094

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_22540632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2253888

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_dense_2_layer_call_and_return_conditional_losses_2256214

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_model_4_layer_call_fn_2254465
	particles
unknown:3
	unknown_0:3
	unknown_1:3@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@

unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	particlesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout

2*
_collective_manager_ids
 *1
_output_shapes
:?????????: : : : : *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_22544012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????3
#
_user_specified_name	particles
ڭ
?
D__inference_model_4_layer_call_and_return_conditional_losses_2254401

inputs;
-normalization_reshape_readvariableop_resource:3=
/normalization_reshape_1_readvariableop_resource:3!
dense_0_2254246:3@
dense_0_2254248:@+
batch_normalization_7_2254259:@+
batch_normalization_7_2254261:@+
batch_normalization_7_2254263:@+
batch_normalization_7_2254265:@!
dense_1_2254280:@@
dense_1_2254282:@+
batch_normalization_8_2254293:@+
batch_normalization_8_2254295:@+
batch_normalization_8_2254297:@+
batch_normalization_8_2254299:@!
dense_2_2254314:@@
dense_2_2254316:@+
batch_normalization_9_2254327:@+
batch_normalization_9_2254329:@+
batch_normalization_9_2254331:@+
batch_normalization_9_2254333:@!
dense_3_2254348:@@
dense_3_2254350:@,
batch_normalization_10_2254361:@,
batch_normalization_10_2254363:@,
batch_normalization_10_2254365:@,
batch_normalization_10_2254367:@%
predictions_2254382:@!
predictions_2254384:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??$Normalization/Reshape/ReadVariableOp?&Normalization/Reshape_1/ReadVariableOp?.batch_normalization_10/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall?dense_0/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?
$Normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:3*
dtype02&
$Normalization/Reshape/ReadVariableOp?
Normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape/shape?
Normalization/ReshapeReshape,Normalization/Reshape/ReadVariableOp:value:0$Normalization/Reshape/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape?
&Normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:3*
dtype02(
&Normalization/Reshape_1/ReadVariableOp?
Normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape_1/shape?
Normalization/Reshape_1Reshape.Normalization/Reshape_1/ReadVariableOp:value:0&Normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape_1?
Normalization/subSubinputsNormalization/Reshape:output:0*
T0*'
_output_shapes
:?????????32
Normalization/sub{
Normalization/SqrtSqrt Normalization/Reshape_1:output:0*
T0*
_output_shapes

:32
Normalization/Sqrtw
Normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
Normalization/Maximum/y?
Normalization/MaximumMaximumNormalization/Sqrt:y:0 Normalization/Maximum/y:output:0*
T0*
_output_shapes

:32
Normalization/Maximum?
Normalization/truedivRealDivNormalization/sub:z:0Normalization/Maximum:z:0*
T0*'
_output_shapes
:?????????32
Normalization/truediv?
dense_0/StatefulPartitionedCallStatefulPartitionedCallNormalization/truediv:z:0dense_0_2254246dense_0_2254248*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_0_layer_call_and_return_conditional_losses_22542452!
dense_0/StatefulPartitionedCall?
+dense_0/ActivityRegularizer/PartitionedCallPartitionedCall(dense_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_0_activity_regularizer_22535142-
+dense_0/ActivityRegularizer/PartitionedCall?
!dense_0/ActivityRegularizer/ShapeShape(dense_0/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_0/ActivityRegularizer/Shape?
/dense_0/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_0/ActivityRegularizer/strided_slice/stack?
1dense_0/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_1?
1dense_0/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_2?
)dense_0/ActivityRegularizer/strided_sliceStridedSlice*dense_0/ActivityRegularizer/Shape:output:08dense_0/ActivityRegularizer/strided_slice/stack:output:0:dense_0/ActivityRegularizer/strided_slice/stack_1:output:0:dense_0/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_0/ActivityRegularizer/strided_slice?
 dense_0/ActivityRegularizer/CastCast2dense_0/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_0/ActivityRegularizer/Cast?
#dense_0/ActivityRegularizer/truedivRealDiv4dense_0/ActivityRegularizer/PartitionedCall:output:0$dense_0/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_0/ActivityRegularizer/truediv?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0batch_normalization_7_2254259batch_normalization_7_2254261batch_normalization_7_2254263batch_normalization_7_2254265*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22535382/
-batch_normalization_7/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_1_2254280dense_1_2254282*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22542792!
dense_1/StatefulPartitionedCall?
+dense_1/ActivityRegularizer/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_1_activity_regularizer_22536892-
+dense_1/ActivityRegularizer/PartitionedCall?
!dense_1/ActivityRegularizer/ShapeShape(dense_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_1/ActivityRegularizer/Shape?
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_1/ActivityRegularizer/strided_slice/stack?
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_1?
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_2?
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_1/ActivityRegularizer/strided_slice?
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_1/ActivityRegularizer/Cast?
#dense_1/ActivityRegularizer/truedivRealDiv4dense_1/ActivityRegularizer/PartitionedCall:output:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_1/ActivityRegularizer/truediv?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_8_2254293batch_normalization_8_2254295batch_normalization_8_2254297batch_normalization_8_2254299*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_22537132/
-batch_normalization_8/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_2_2254314dense_2_2254316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_22543132!
dense_2/StatefulPartitionedCall?
+dense_2/ActivityRegularizer/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_2_activity_regularizer_22538642-
+dense_2/ActivityRegularizer/PartitionedCall?
!dense_2/ActivityRegularizer/ShapeShape(dense_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_2/ActivityRegularizer/Shape?
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_2/ActivityRegularizer/strided_slice/stack?
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_1?
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_2?
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_2/ActivityRegularizer/strided_slice?
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_2/ActivityRegularizer/Cast?
#dense_2/ActivityRegularizer/truedivRealDiv4dense_2/ActivityRegularizer/PartitionedCall:output:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_2/ActivityRegularizer/truediv?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0batch_normalization_9_2254327batch_normalization_9_2254329batch_normalization_9_2254331batch_normalization_9_2254333*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_22538882/
-batch_normalization_9/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_3_2254348dense_3_2254350*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_22543472!
dense_3/StatefulPartitionedCall?
+dense_3/ActivityRegularizer/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_3_activity_regularizer_22540392-
+dense_3/ActivityRegularizer/PartitionedCall?
!dense_3/ActivityRegularizer/ShapeShape(dense_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_3/ActivityRegularizer/Shape?
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_3/ActivityRegularizer/strided_slice/stack?
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_1?
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_2?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_3/ActivityRegularizer/strided_slice?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_3/ActivityRegularizer/Cast?
#dense_3/ActivityRegularizer/truedivRealDiv4dense_3/ActivityRegularizer/PartitionedCall:output:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_3/ActivityRegularizer/truediv?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0batch_normalization_10_2254361batch_normalization_10_2254363batch_normalization_10_2254365batch_normalization_10_2254367*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_225406320
.batch_normalization_10/StatefulPartitionedCall?
#predictions/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0predictions_2254382predictions_2254384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_predictions_layer_call_and_return_conditional_losses_22543812%
#predictions/StatefulPartitionedCall?
/predictions/ActivityRegularizer/PartitionedCallPartitionedCall,predictions/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *=
f8R6
4__inference_predictions_activity_regularizer_225421421
/predictions/ActivityRegularizer/PartitionedCall?
%predictions/ActivityRegularizer/ShapeShape,predictions/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%predictions/ActivityRegularizer/Shape?
3predictions/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3predictions/ActivityRegularizer/strided_slice/stack?
5predictions/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_1?
5predictions/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_2?
-predictions/ActivityRegularizer/strided_sliceStridedSlice.predictions/ActivityRegularizer/Shape:output:0<predictions/ActivityRegularizer/strided_slice/stack:output:0>predictions/ActivityRegularizer/strided_slice/stack_1:output:0>predictions/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-predictions/ActivityRegularizer/strided_slice?
$predictions/ActivityRegularizer/CastCast6predictions/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$predictions/ActivityRegularizer/Cast?
'predictions/ActivityRegularizer/truedivRealDiv8predictions/ActivityRegularizer/PartitionedCall:output:0(predictions/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'predictions/ActivityRegularizer/truediv?
IdentityIdentity,predictions/StatefulPartitionedCall:output:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity'dense_0/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_1/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_2/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity'dense_3/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4?

Identity_5Identity+predictions/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$Normalization/Reshape/ReadVariableOp$Normalization/Reshape/ReadVariableOp2P
&Normalization/Reshape_1/ReadVariableOp&Normalization/Reshape_1/ReadVariableOp2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
?
?
)__inference_dense_1_layer_call_fn_2255870

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22542792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
H__inference_dense_1_layer_call_and_return_all_conditional_losses_2255881

inputs
unknown:@@
	unknown_0:@
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22542792
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_1_activity_regularizer_22536892
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2253713

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_dense_2_layer_call_and_return_conditional_losses_2254313

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
-__inference_predictions_layer_call_fn_2256170

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_predictions_layer_call_and_return_conditional_losses_22543812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2256061

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2253773

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_dense_0_layer_call_and_return_conditional_losses_2256192

inputs0
matmul_readvariableop_resource:3@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:3@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
?

?
D__inference_dense_1_layer_call_and_return_conditional_losses_2256203

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?)
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2254123

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ҭ
?
D__inference_model_4_layer_call_and_return_conditional_losses_2254766

inputs;
-normalization_reshape_readvariableop_resource:3=
/normalization_reshape_1_readvariableop_resource:3!
dense_0_2254659:3@
dense_0_2254661:@+
batch_normalization_7_2254672:@+
batch_normalization_7_2254674:@+
batch_normalization_7_2254676:@+
batch_normalization_7_2254678:@!
dense_1_2254681:@@
dense_1_2254683:@+
batch_normalization_8_2254694:@+
batch_normalization_8_2254696:@+
batch_normalization_8_2254698:@+
batch_normalization_8_2254700:@!
dense_2_2254703:@@
dense_2_2254705:@+
batch_normalization_9_2254716:@+
batch_normalization_9_2254718:@+
batch_normalization_9_2254720:@+
batch_normalization_9_2254722:@!
dense_3_2254725:@@
dense_3_2254727:@,
batch_normalization_10_2254738:@,
batch_normalization_10_2254740:@,
batch_normalization_10_2254742:@,
batch_normalization_10_2254744:@%
predictions_2254747:@!
predictions_2254749:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??$Normalization/Reshape/ReadVariableOp?&Normalization/Reshape_1/ReadVariableOp?.batch_normalization_10/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall?dense_0/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?
$Normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:3*
dtype02&
$Normalization/Reshape/ReadVariableOp?
Normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape/shape?
Normalization/ReshapeReshape,Normalization/Reshape/ReadVariableOp:value:0$Normalization/Reshape/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape?
&Normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:3*
dtype02(
&Normalization/Reshape_1/ReadVariableOp?
Normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape_1/shape?
Normalization/Reshape_1Reshape.Normalization/Reshape_1/ReadVariableOp:value:0&Normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape_1?
Normalization/subSubinputsNormalization/Reshape:output:0*
T0*'
_output_shapes
:?????????32
Normalization/sub{
Normalization/SqrtSqrt Normalization/Reshape_1:output:0*
T0*
_output_shapes

:32
Normalization/Sqrtw
Normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
Normalization/Maximum/y?
Normalization/MaximumMaximumNormalization/Sqrt:y:0 Normalization/Maximum/y:output:0*
T0*
_output_shapes

:32
Normalization/Maximum?
Normalization/truedivRealDivNormalization/sub:z:0Normalization/Maximum:z:0*
T0*'
_output_shapes
:?????????32
Normalization/truediv?
dense_0/StatefulPartitionedCallStatefulPartitionedCallNormalization/truediv:z:0dense_0_2254659dense_0_2254661*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_0_layer_call_and_return_conditional_losses_22542452!
dense_0/StatefulPartitionedCall?
+dense_0/ActivityRegularizer/PartitionedCallPartitionedCall(dense_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_0_activity_regularizer_22535142-
+dense_0/ActivityRegularizer/PartitionedCall?
!dense_0/ActivityRegularizer/ShapeShape(dense_0/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_0/ActivityRegularizer/Shape?
/dense_0/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_0/ActivityRegularizer/strided_slice/stack?
1dense_0/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_1?
1dense_0/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_2?
)dense_0/ActivityRegularizer/strided_sliceStridedSlice*dense_0/ActivityRegularizer/Shape:output:08dense_0/ActivityRegularizer/strided_slice/stack:output:0:dense_0/ActivityRegularizer/strided_slice/stack_1:output:0:dense_0/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_0/ActivityRegularizer/strided_slice?
 dense_0/ActivityRegularizer/CastCast2dense_0/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_0/ActivityRegularizer/Cast?
#dense_0/ActivityRegularizer/truedivRealDiv4dense_0/ActivityRegularizer/PartitionedCall:output:0$dense_0/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_0/ActivityRegularizer/truediv?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0batch_normalization_7_2254672batch_normalization_7_2254674batch_normalization_7_2254676batch_normalization_7_2254678*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22535982/
-batch_normalization_7/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_1_2254681dense_1_2254683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22542792!
dense_1/StatefulPartitionedCall?
+dense_1/ActivityRegularizer/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_1_activity_regularizer_22536892-
+dense_1/ActivityRegularizer/PartitionedCall?
!dense_1/ActivityRegularizer/ShapeShape(dense_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_1/ActivityRegularizer/Shape?
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_1/ActivityRegularizer/strided_slice/stack?
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_1?
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_2?
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_1/ActivityRegularizer/strided_slice?
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_1/ActivityRegularizer/Cast?
#dense_1/ActivityRegularizer/truedivRealDiv4dense_1/ActivityRegularizer/PartitionedCall:output:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_1/ActivityRegularizer/truediv?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_8_2254694batch_normalization_8_2254696batch_normalization_8_2254698batch_normalization_8_2254700*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_22537732/
-batch_normalization_8/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_2_2254703dense_2_2254705*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_22543132!
dense_2/StatefulPartitionedCall?
+dense_2/ActivityRegularizer/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_2_activity_regularizer_22538642-
+dense_2/ActivityRegularizer/PartitionedCall?
!dense_2/ActivityRegularizer/ShapeShape(dense_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_2/ActivityRegularizer/Shape?
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_2/ActivityRegularizer/strided_slice/stack?
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_1?
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_2?
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_2/ActivityRegularizer/strided_slice?
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_2/ActivityRegularizer/Cast?
#dense_2/ActivityRegularizer/truedivRealDiv4dense_2/ActivityRegularizer/PartitionedCall:output:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_2/ActivityRegularizer/truediv?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0batch_normalization_9_2254716batch_normalization_9_2254718batch_normalization_9_2254720batch_normalization_9_2254722*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_22539482/
-batch_normalization_9/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_3_2254725dense_3_2254727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_22543472!
dense_3/StatefulPartitionedCall?
+dense_3/ActivityRegularizer/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_3_activity_regularizer_22540392-
+dense_3/ActivityRegularizer/PartitionedCall?
!dense_3/ActivityRegularizer/ShapeShape(dense_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_3/ActivityRegularizer/Shape?
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_3/ActivityRegularizer/strided_slice/stack?
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_1?
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_2?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_3/ActivityRegularizer/strided_slice?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_3/ActivityRegularizer/Cast?
#dense_3/ActivityRegularizer/truedivRealDiv4dense_3/ActivityRegularizer/PartitionedCall:output:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_3/ActivityRegularizer/truediv?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0batch_normalization_10_2254738batch_normalization_10_2254740batch_normalization_10_2254742batch_normalization_10_2254744*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_225412320
.batch_normalization_10/StatefulPartitionedCall?
#predictions/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0predictions_2254747predictions_2254749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_predictions_layer_call_and_return_conditional_losses_22543812%
#predictions/StatefulPartitionedCall?
/predictions/ActivityRegularizer/PartitionedCallPartitionedCall,predictions/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *=
f8R6
4__inference_predictions_activity_regularizer_225421421
/predictions/ActivityRegularizer/PartitionedCall?
%predictions/ActivityRegularizer/ShapeShape,predictions/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%predictions/ActivityRegularizer/Shape?
3predictions/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3predictions/ActivityRegularizer/strided_slice/stack?
5predictions/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_1?
5predictions/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_2?
-predictions/ActivityRegularizer/strided_sliceStridedSlice.predictions/ActivityRegularizer/Shape:output:0<predictions/ActivityRegularizer/strided_slice/stack:output:0>predictions/ActivityRegularizer/strided_slice/stack_1:output:0>predictions/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-predictions/ActivityRegularizer/strided_slice?
$predictions/ActivityRegularizer/CastCast6predictions/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$predictions/ActivityRegularizer/Cast?
'predictions/ActivityRegularizer/truedivRealDiv8predictions/ActivityRegularizer/PartitionedCall:output:0(predictions/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'predictions/ActivityRegularizer/truediv?
IdentityIdentity,predictions/StatefulPartitionedCall:output:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity'dense_0/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_1/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_2/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity'dense_3/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4?

Identity_5Identity+predictions/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$Normalization/Reshape/ReadVariableOp$Normalization/Reshape/ReadVariableOp2P
&Normalization/Reshape_1/ReadVariableOp&Normalization/Reshape_1/ReadVariableOp2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
??
?
D__inference_model_4_layer_call_and_return_conditional_losses_2255019
	particles;
-normalization_reshape_readvariableop_resource:3=
/normalization_reshape_1_readvariableop_resource:3!
dense_0_2254912:3@
dense_0_2254914:@+
batch_normalization_7_2254925:@+
batch_normalization_7_2254927:@+
batch_normalization_7_2254929:@+
batch_normalization_7_2254931:@!
dense_1_2254934:@@
dense_1_2254936:@+
batch_normalization_8_2254947:@+
batch_normalization_8_2254949:@+
batch_normalization_8_2254951:@+
batch_normalization_8_2254953:@!
dense_2_2254956:@@
dense_2_2254958:@+
batch_normalization_9_2254969:@+
batch_normalization_9_2254971:@+
batch_normalization_9_2254973:@+
batch_normalization_9_2254975:@!
dense_3_2254978:@@
dense_3_2254980:@,
batch_normalization_10_2254991:@,
batch_normalization_10_2254993:@,
batch_normalization_10_2254995:@,
batch_normalization_10_2254997:@%
predictions_2255000:@!
predictions_2255002:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??$Normalization/Reshape/ReadVariableOp?&Normalization/Reshape_1/ReadVariableOp?.batch_normalization_10/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?-batch_normalization_9/StatefulPartitionedCall?dense_0/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?
$Normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:3*
dtype02&
$Normalization/Reshape/ReadVariableOp?
Normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape/shape?
Normalization/ReshapeReshape,Normalization/Reshape/ReadVariableOp:value:0$Normalization/Reshape/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape?
&Normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:3*
dtype02(
&Normalization/Reshape_1/ReadVariableOp?
Normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape_1/shape?
Normalization/Reshape_1Reshape.Normalization/Reshape_1/ReadVariableOp:value:0&Normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape_1?
Normalization/subSub	particlesNormalization/Reshape:output:0*
T0*'
_output_shapes
:?????????32
Normalization/sub{
Normalization/SqrtSqrt Normalization/Reshape_1:output:0*
T0*
_output_shapes

:32
Normalization/Sqrtw
Normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
Normalization/Maximum/y?
Normalization/MaximumMaximumNormalization/Sqrt:y:0 Normalization/Maximum/y:output:0*
T0*
_output_shapes

:32
Normalization/Maximum?
Normalization/truedivRealDivNormalization/sub:z:0Normalization/Maximum:z:0*
T0*'
_output_shapes
:?????????32
Normalization/truediv?
dense_0/StatefulPartitionedCallStatefulPartitionedCallNormalization/truediv:z:0dense_0_2254912dense_0_2254914*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_0_layer_call_and_return_conditional_losses_22542452!
dense_0/StatefulPartitionedCall?
+dense_0/ActivityRegularizer/PartitionedCallPartitionedCall(dense_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_0_activity_regularizer_22535142-
+dense_0/ActivityRegularizer/PartitionedCall?
!dense_0/ActivityRegularizer/ShapeShape(dense_0/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_0/ActivityRegularizer/Shape?
/dense_0/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_0/ActivityRegularizer/strided_slice/stack?
1dense_0/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_1?
1dense_0/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_2?
)dense_0/ActivityRegularizer/strided_sliceStridedSlice*dense_0/ActivityRegularizer/Shape:output:08dense_0/ActivityRegularizer/strided_slice/stack:output:0:dense_0/ActivityRegularizer/strided_slice/stack_1:output:0:dense_0/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_0/ActivityRegularizer/strided_slice?
 dense_0/ActivityRegularizer/CastCast2dense_0/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_0/ActivityRegularizer/Cast?
#dense_0/ActivityRegularizer/truedivRealDiv4dense_0/ActivityRegularizer/PartitionedCall:output:0$dense_0/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_0/ActivityRegularizer/truediv?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0batch_normalization_7_2254925batch_normalization_7_2254927batch_normalization_7_2254929batch_normalization_7_2254931*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22535382/
-batch_normalization_7/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_1_2254934dense_1_2254936*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_22542792!
dense_1/StatefulPartitionedCall?
+dense_1/ActivityRegularizer/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_1_activity_regularizer_22536892-
+dense_1/ActivityRegularizer/PartitionedCall?
!dense_1/ActivityRegularizer/ShapeShape(dense_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_1/ActivityRegularizer/Shape?
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_1/ActivityRegularizer/strided_slice/stack?
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_1?
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_2?
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_1/ActivityRegularizer/strided_slice?
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_1/ActivityRegularizer/Cast?
#dense_1/ActivityRegularizer/truedivRealDiv4dense_1/ActivityRegularizer/PartitionedCall:output:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_1/ActivityRegularizer/truediv?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_8_2254947batch_normalization_8_2254949batch_normalization_8_2254951batch_normalization_8_2254953*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_22537132/
-batch_normalization_8/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_2_2254956dense_2_2254958*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_22543132!
dense_2/StatefulPartitionedCall?
+dense_2/ActivityRegularizer/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_2_activity_regularizer_22538642-
+dense_2/ActivityRegularizer/PartitionedCall?
!dense_2/ActivityRegularizer/ShapeShape(dense_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_2/ActivityRegularizer/Shape?
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_2/ActivityRegularizer/strided_slice/stack?
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_1?
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_2?
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_2/ActivityRegularizer/strided_slice?
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_2/ActivityRegularizer/Cast?
#dense_2/ActivityRegularizer/truedivRealDiv4dense_2/ActivityRegularizer/PartitionedCall:output:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_2/ActivityRegularizer/truediv?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0batch_normalization_9_2254969batch_normalization_9_2254971batch_normalization_9_2254973batch_normalization_9_2254975*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_22538882/
-batch_normalization_9/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_3_2254978dense_3_2254980*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_22543472!
dense_3/StatefulPartitionedCall?
+dense_3/ActivityRegularizer/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_3_activity_regularizer_22540392-
+dense_3/ActivityRegularizer/PartitionedCall?
!dense_3/ActivityRegularizer/ShapeShape(dense_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_3/ActivityRegularizer/Shape?
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_3/ActivityRegularizer/strided_slice/stack?
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_1?
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_2?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_3/ActivityRegularizer/strided_slice?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_3/ActivityRegularizer/Cast?
#dense_3/ActivityRegularizer/truedivRealDiv4dense_3/ActivityRegularizer/PartitionedCall:output:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_3/ActivityRegularizer/truediv?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0batch_normalization_10_2254991batch_normalization_10_2254993batch_normalization_10_2254995batch_normalization_10_2254997*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_225406320
.batch_normalization_10/StatefulPartitionedCall?
#predictions/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0predictions_2255000predictions_2255002*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_predictions_layer_call_and_return_conditional_losses_22543812%
#predictions/StatefulPartitionedCall?
/predictions/ActivityRegularizer/PartitionedCallPartitionedCall,predictions/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *=
f8R6
4__inference_predictions_activity_regularizer_225421421
/predictions/ActivityRegularizer/PartitionedCall?
%predictions/ActivityRegularizer/ShapeShape,predictions/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%predictions/ActivityRegularizer/Shape?
3predictions/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3predictions/ActivityRegularizer/strided_slice/stack?
5predictions/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_1?
5predictions/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_2?
-predictions/ActivityRegularizer/strided_sliceStridedSlice.predictions/ActivityRegularizer/Shape:output:0<predictions/ActivityRegularizer/strided_slice/stack:output:0>predictions/ActivityRegularizer/strided_slice/stack_1:output:0>predictions/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-predictions/ActivityRegularizer/strided_slice?
$predictions/ActivityRegularizer/CastCast6predictions/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$predictions/ActivityRegularizer/Cast?
'predictions/ActivityRegularizer/truedivRealDiv8predictions/ActivityRegularizer/PartitionedCall:output:0(predictions/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'predictions/ActivityRegularizer/truediv?
IdentityIdentity,predictions/StatefulPartitionedCall:output:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity'dense_0/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_1/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_2/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity'dense_3/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4?

Identity_5Identity+predictions/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp/^batch_normalization_10/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$Normalization/Reshape/ReadVariableOp$Normalization/Reshape/ReadVariableOp2P
&Normalization/Reshape_1/ReadVariableOp&Normalization/Reshape_1/ReadVariableOp2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:R N
'
_output_shapes
:?????????3
#
_user_specified_name	particles
??
?
"__inference__wrapped_model_2253501
	particlesC
5model_4_normalization_reshape_readvariableop_resource:3E
7model_4_normalization_reshape_1_readvariableop_resource:3@
.model_4_dense_0_matmul_readvariableop_resource:3@=
/model_4_dense_0_biasadd_readvariableop_resource:@M
?model_4_batch_normalization_7_batchnorm_readvariableop_resource:@Q
Cmodel_4_batch_normalization_7_batchnorm_mul_readvariableop_resource:@O
Amodel_4_batch_normalization_7_batchnorm_readvariableop_1_resource:@O
Amodel_4_batch_normalization_7_batchnorm_readvariableop_2_resource:@@
.model_4_dense_1_matmul_readvariableop_resource:@@=
/model_4_dense_1_biasadd_readvariableop_resource:@M
?model_4_batch_normalization_8_batchnorm_readvariableop_resource:@Q
Cmodel_4_batch_normalization_8_batchnorm_mul_readvariableop_resource:@O
Amodel_4_batch_normalization_8_batchnorm_readvariableop_1_resource:@O
Amodel_4_batch_normalization_8_batchnorm_readvariableop_2_resource:@@
.model_4_dense_2_matmul_readvariableop_resource:@@=
/model_4_dense_2_biasadd_readvariableop_resource:@M
?model_4_batch_normalization_9_batchnorm_readvariableop_resource:@Q
Cmodel_4_batch_normalization_9_batchnorm_mul_readvariableop_resource:@O
Amodel_4_batch_normalization_9_batchnorm_readvariableop_1_resource:@O
Amodel_4_batch_normalization_9_batchnorm_readvariableop_2_resource:@@
.model_4_dense_3_matmul_readvariableop_resource:@@=
/model_4_dense_3_biasadd_readvariableop_resource:@N
@model_4_batch_normalization_10_batchnorm_readvariableop_resource:@R
Dmodel_4_batch_normalization_10_batchnorm_mul_readvariableop_resource:@P
Bmodel_4_batch_normalization_10_batchnorm_readvariableop_1_resource:@P
Bmodel_4_batch_normalization_10_batchnorm_readvariableop_2_resource:@D
2model_4_predictions_matmul_readvariableop_resource:@A
3model_4_predictions_biasadd_readvariableop_resource:
identity??,model_4/Normalization/Reshape/ReadVariableOp?.model_4/Normalization/Reshape_1/ReadVariableOp?7model_4/batch_normalization_10/batchnorm/ReadVariableOp?9model_4/batch_normalization_10/batchnorm/ReadVariableOp_1?9model_4/batch_normalization_10/batchnorm/ReadVariableOp_2?;model_4/batch_normalization_10/batchnorm/mul/ReadVariableOp?6model_4/batch_normalization_7/batchnorm/ReadVariableOp?8model_4/batch_normalization_7/batchnorm/ReadVariableOp_1?8model_4/batch_normalization_7/batchnorm/ReadVariableOp_2?:model_4/batch_normalization_7/batchnorm/mul/ReadVariableOp?6model_4/batch_normalization_8/batchnorm/ReadVariableOp?8model_4/batch_normalization_8/batchnorm/ReadVariableOp_1?8model_4/batch_normalization_8/batchnorm/ReadVariableOp_2?:model_4/batch_normalization_8/batchnorm/mul/ReadVariableOp?6model_4/batch_normalization_9/batchnorm/ReadVariableOp?8model_4/batch_normalization_9/batchnorm/ReadVariableOp_1?8model_4/batch_normalization_9/batchnorm/ReadVariableOp_2?:model_4/batch_normalization_9/batchnorm/mul/ReadVariableOp?&model_4/dense_0/BiasAdd/ReadVariableOp?%model_4/dense_0/MatMul/ReadVariableOp?&model_4/dense_1/BiasAdd/ReadVariableOp?%model_4/dense_1/MatMul/ReadVariableOp?&model_4/dense_2/BiasAdd/ReadVariableOp?%model_4/dense_2/MatMul/ReadVariableOp?&model_4/dense_3/BiasAdd/ReadVariableOp?%model_4/dense_3/MatMul/ReadVariableOp?*model_4/predictions/BiasAdd/ReadVariableOp?)model_4/predictions/MatMul/ReadVariableOp?
,model_4/Normalization/Reshape/ReadVariableOpReadVariableOp5model_4_normalization_reshape_readvariableop_resource*
_output_shapes
:3*
dtype02.
,model_4/Normalization/Reshape/ReadVariableOp?
#model_4/Normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2%
#model_4/Normalization/Reshape/shape?
model_4/Normalization/ReshapeReshape4model_4/Normalization/Reshape/ReadVariableOp:value:0,model_4/Normalization/Reshape/shape:output:0*
T0*
_output_shapes

:32
model_4/Normalization/Reshape?
.model_4/Normalization/Reshape_1/ReadVariableOpReadVariableOp7model_4_normalization_reshape_1_readvariableop_resource*
_output_shapes
:3*
dtype020
.model_4/Normalization/Reshape_1/ReadVariableOp?
%model_4/Normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2'
%model_4/Normalization/Reshape_1/shape?
model_4/Normalization/Reshape_1Reshape6model_4/Normalization/Reshape_1/ReadVariableOp:value:0.model_4/Normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:32!
model_4/Normalization/Reshape_1?
model_4/Normalization/subSub	particles&model_4/Normalization/Reshape:output:0*
T0*'
_output_shapes
:?????????32
model_4/Normalization/sub?
model_4/Normalization/SqrtSqrt(model_4/Normalization/Reshape_1:output:0*
T0*
_output_shapes

:32
model_4/Normalization/Sqrt?
model_4/Normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32!
model_4/Normalization/Maximum/y?
model_4/Normalization/MaximumMaximummodel_4/Normalization/Sqrt:y:0(model_4/Normalization/Maximum/y:output:0*
T0*
_output_shapes

:32
model_4/Normalization/Maximum?
model_4/Normalization/truedivRealDivmodel_4/Normalization/sub:z:0!model_4/Normalization/Maximum:z:0*
T0*'
_output_shapes
:?????????32
model_4/Normalization/truediv?
%model_4/dense_0/MatMul/ReadVariableOpReadVariableOp.model_4_dense_0_matmul_readvariableop_resource*
_output_shapes

:3@*
dtype02'
%model_4/dense_0/MatMul/ReadVariableOp?
model_4/dense_0/MatMulMatMul!model_4/Normalization/truediv:z:0-model_4/dense_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_0/MatMul?
&model_4/dense_0/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_4/dense_0/BiasAdd/ReadVariableOp?
model_4/dense_0/BiasAddBiasAdd model_4/dense_0/MatMul:product:0.model_4/dense_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_0/BiasAdd?
model_4/dense_0/EluElu model_4/dense_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_0/Elu?
*model_4/dense_0/ActivityRegularizer/SquareSquare!model_4/dense_0/Elu:activations:0*
T0*'
_output_shapes
:?????????@2,
*model_4/dense_0/ActivityRegularizer/Square?
)model_4/dense_0/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_4/dense_0/ActivityRegularizer/Const?
'model_4/dense_0/ActivityRegularizer/SumSum.model_4/dense_0/ActivityRegularizer/Square:y:02model_4/dense_0/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'model_4/dense_0/ActivityRegularizer/Sum?
)model_4/dense_0/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)model_4/dense_0/ActivityRegularizer/mul/x?
'model_4/dense_0/ActivityRegularizer/mulMul2model_4/dense_0/ActivityRegularizer/mul/x:output:00model_4/dense_0/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'model_4/dense_0/ActivityRegularizer/mul?
)model_4/dense_0/ActivityRegularizer/ShapeShape!model_4/dense_0/Elu:activations:0*
T0*
_output_shapes
:2+
)model_4/dense_0/ActivityRegularizer/Shape?
7model_4/dense_0/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model_4/dense_0/ActivityRegularizer/strided_slice/stack?
9model_4/dense_0/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_4/dense_0/ActivityRegularizer/strided_slice/stack_1?
9model_4/dense_0/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_4/dense_0/ActivityRegularizer/strided_slice/stack_2?
1model_4/dense_0/ActivityRegularizer/strided_sliceStridedSlice2model_4/dense_0/ActivityRegularizer/Shape:output:0@model_4/dense_0/ActivityRegularizer/strided_slice/stack:output:0Bmodel_4/dense_0/ActivityRegularizer/strided_slice/stack_1:output:0Bmodel_4/dense_0/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1model_4/dense_0/ActivityRegularizer/strided_slice?
(model_4/dense_0/ActivityRegularizer/CastCast:model_4/dense_0/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(model_4/dense_0/ActivityRegularizer/Cast?
+model_4/dense_0/ActivityRegularizer/truedivRealDiv+model_4/dense_0/ActivityRegularizer/mul:z:0,model_4/dense_0/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+model_4/dense_0/ActivityRegularizer/truediv?
6model_4/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp?model_4_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype028
6model_4/batch_normalization_7/batchnorm/ReadVariableOp?
-model_4/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2/
-model_4/batch_normalization_7/batchnorm/add/y?
+model_4/batch_normalization_7/batchnorm/addAddV2>model_4/batch_normalization_7/batchnorm/ReadVariableOp:value:06model_4/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_7/batchnorm/add?
-model_4/batch_normalization_7/batchnorm/RsqrtRsqrt/model_4/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:@2/
-model_4/batch_normalization_7/batchnorm/Rsqrt?
:model_4/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_4_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02<
:model_4/batch_normalization_7/batchnorm/mul/ReadVariableOp?
+model_4/batch_normalization_7/batchnorm/mulMul1model_4/batch_normalization_7/batchnorm/Rsqrt:y:0Bmodel_4/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_7/batchnorm/mul?
-model_4/batch_normalization_7/batchnorm/mul_1Mul!model_4/dense_0/Elu:activations:0/model_4/batch_normalization_7/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2/
-model_4/batch_normalization_7/batchnorm/mul_1?
8model_4/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_4_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8model_4/batch_normalization_7/batchnorm/ReadVariableOp_1?
-model_4/batch_normalization_7/batchnorm/mul_2Mul@model_4/batch_normalization_7/batchnorm/ReadVariableOp_1:value:0/model_4/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:@2/
-model_4/batch_normalization_7/batchnorm/mul_2?
8model_4/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_4_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02:
8model_4/batch_normalization_7/batchnorm/ReadVariableOp_2?
+model_4/batch_normalization_7/batchnorm/subSub@model_4/batch_normalization_7/batchnorm/ReadVariableOp_2:value:01model_4/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_7/batchnorm/sub?
-model_4/batch_normalization_7/batchnorm/add_1AddV21model_4/batch_normalization_7/batchnorm/mul_1:z:0/model_4/batch_normalization_7/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2/
-model_4/batch_normalization_7/batchnorm/add_1?
%model_4/dense_1/MatMul/ReadVariableOpReadVariableOp.model_4_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%model_4/dense_1/MatMul/ReadVariableOp?
model_4/dense_1/MatMulMatMul1model_4/batch_normalization_7/batchnorm/add_1:z:0-model_4/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_1/MatMul?
&model_4/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_4/dense_1/BiasAdd/ReadVariableOp?
model_4/dense_1/BiasAddBiasAdd model_4/dense_1/MatMul:product:0.model_4/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_1/BiasAdd?
model_4/dense_1/EluElu model_4/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_1/Elu?
*model_4/dense_1/ActivityRegularizer/SquareSquare!model_4/dense_1/Elu:activations:0*
T0*'
_output_shapes
:?????????@2,
*model_4/dense_1/ActivityRegularizer/Square?
)model_4/dense_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_4/dense_1/ActivityRegularizer/Const?
'model_4/dense_1/ActivityRegularizer/SumSum.model_4/dense_1/ActivityRegularizer/Square:y:02model_4/dense_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'model_4/dense_1/ActivityRegularizer/Sum?
)model_4/dense_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)model_4/dense_1/ActivityRegularizer/mul/x?
'model_4/dense_1/ActivityRegularizer/mulMul2model_4/dense_1/ActivityRegularizer/mul/x:output:00model_4/dense_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'model_4/dense_1/ActivityRegularizer/mul?
)model_4/dense_1/ActivityRegularizer/ShapeShape!model_4/dense_1/Elu:activations:0*
T0*
_output_shapes
:2+
)model_4/dense_1/ActivityRegularizer/Shape?
7model_4/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model_4/dense_1/ActivityRegularizer/strided_slice/stack?
9model_4/dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_4/dense_1/ActivityRegularizer/strided_slice/stack_1?
9model_4/dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_4/dense_1/ActivityRegularizer/strided_slice/stack_2?
1model_4/dense_1/ActivityRegularizer/strided_sliceStridedSlice2model_4/dense_1/ActivityRegularizer/Shape:output:0@model_4/dense_1/ActivityRegularizer/strided_slice/stack:output:0Bmodel_4/dense_1/ActivityRegularizer/strided_slice/stack_1:output:0Bmodel_4/dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1model_4/dense_1/ActivityRegularizer/strided_slice?
(model_4/dense_1/ActivityRegularizer/CastCast:model_4/dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(model_4/dense_1/ActivityRegularizer/Cast?
+model_4/dense_1/ActivityRegularizer/truedivRealDiv+model_4/dense_1/ActivityRegularizer/mul:z:0,model_4/dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+model_4/dense_1/ActivityRegularizer/truediv?
6model_4/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp?model_4_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype028
6model_4/batch_normalization_8/batchnorm/ReadVariableOp?
-model_4/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2/
-model_4/batch_normalization_8/batchnorm/add/y?
+model_4/batch_normalization_8/batchnorm/addAddV2>model_4/batch_normalization_8/batchnorm/ReadVariableOp:value:06model_4/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_8/batchnorm/add?
-model_4/batch_normalization_8/batchnorm/RsqrtRsqrt/model_4/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes
:@2/
-model_4/batch_normalization_8/batchnorm/Rsqrt?
:model_4/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_4_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02<
:model_4/batch_normalization_8/batchnorm/mul/ReadVariableOp?
+model_4/batch_normalization_8/batchnorm/mulMul1model_4/batch_normalization_8/batchnorm/Rsqrt:y:0Bmodel_4/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_8/batchnorm/mul?
-model_4/batch_normalization_8/batchnorm/mul_1Mul!model_4/dense_1/Elu:activations:0/model_4/batch_normalization_8/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2/
-model_4/batch_normalization_8/batchnorm/mul_1?
8model_4/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_4_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8model_4/batch_normalization_8/batchnorm/ReadVariableOp_1?
-model_4/batch_normalization_8/batchnorm/mul_2Mul@model_4/batch_normalization_8/batchnorm/ReadVariableOp_1:value:0/model_4/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes
:@2/
-model_4/batch_normalization_8/batchnorm/mul_2?
8model_4/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_4_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02:
8model_4/batch_normalization_8/batchnorm/ReadVariableOp_2?
+model_4/batch_normalization_8/batchnorm/subSub@model_4/batch_normalization_8/batchnorm/ReadVariableOp_2:value:01model_4/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_8/batchnorm/sub?
-model_4/batch_normalization_8/batchnorm/add_1AddV21model_4/batch_normalization_8/batchnorm/mul_1:z:0/model_4/batch_normalization_8/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2/
-model_4/batch_normalization_8/batchnorm/add_1?
%model_4/dense_2/MatMul/ReadVariableOpReadVariableOp.model_4_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%model_4/dense_2/MatMul/ReadVariableOp?
model_4/dense_2/MatMulMatMul1model_4/batch_normalization_8/batchnorm/add_1:z:0-model_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_2/MatMul?
&model_4/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_4/dense_2/BiasAdd/ReadVariableOp?
model_4/dense_2/BiasAddBiasAdd model_4/dense_2/MatMul:product:0.model_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_2/BiasAdd?
model_4/dense_2/EluElu model_4/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_2/Elu?
*model_4/dense_2/ActivityRegularizer/SquareSquare!model_4/dense_2/Elu:activations:0*
T0*'
_output_shapes
:?????????@2,
*model_4/dense_2/ActivityRegularizer/Square?
)model_4/dense_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_4/dense_2/ActivityRegularizer/Const?
'model_4/dense_2/ActivityRegularizer/SumSum.model_4/dense_2/ActivityRegularizer/Square:y:02model_4/dense_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'model_4/dense_2/ActivityRegularizer/Sum?
)model_4/dense_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)model_4/dense_2/ActivityRegularizer/mul/x?
'model_4/dense_2/ActivityRegularizer/mulMul2model_4/dense_2/ActivityRegularizer/mul/x:output:00model_4/dense_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'model_4/dense_2/ActivityRegularizer/mul?
)model_4/dense_2/ActivityRegularizer/ShapeShape!model_4/dense_2/Elu:activations:0*
T0*
_output_shapes
:2+
)model_4/dense_2/ActivityRegularizer/Shape?
7model_4/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model_4/dense_2/ActivityRegularizer/strided_slice/stack?
9model_4/dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_4/dense_2/ActivityRegularizer/strided_slice/stack_1?
9model_4/dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_4/dense_2/ActivityRegularizer/strided_slice/stack_2?
1model_4/dense_2/ActivityRegularizer/strided_sliceStridedSlice2model_4/dense_2/ActivityRegularizer/Shape:output:0@model_4/dense_2/ActivityRegularizer/strided_slice/stack:output:0Bmodel_4/dense_2/ActivityRegularizer/strided_slice/stack_1:output:0Bmodel_4/dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1model_4/dense_2/ActivityRegularizer/strided_slice?
(model_4/dense_2/ActivityRegularizer/CastCast:model_4/dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(model_4/dense_2/ActivityRegularizer/Cast?
+model_4/dense_2/ActivityRegularizer/truedivRealDiv+model_4/dense_2/ActivityRegularizer/mul:z:0,model_4/dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+model_4/dense_2/ActivityRegularizer/truediv?
6model_4/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp?model_4_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype028
6model_4/batch_normalization_9/batchnorm/ReadVariableOp?
-model_4/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2/
-model_4/batch_normalization_9/batchnorm/add/y?
+model_4/batch_normalization_9/batchnorm/addAddV2>model_4/batch_normalization_9/batchnorm/ReadVariableOp:value:06model_4/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_9/batchnorm/add?
-model_4/batch_normalization_9/batchnorm/RsqrtRsqrt/model_4/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes
:@2/
-model_4/batch_normalization_9/batchnorm/Rsqrt?
:model_4/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_4_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02<
:model_4/batch_normalization_9/batchnorm/mul/ReadVariableOp?
+model_4/batch_normalization_9/batchnorm/mulMul1model_4/batch_normalization_9/batchnorm/Rsqrt:y:0Bmodel_4/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_9/batchnorm/mul?
-model_4/batch_normalization_9/batchnorm/mul_1Mul!model_4/dense_2/Elu:activations:0/model_4/batch_normalization_9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2/
-model_4/batch_normalization_9/batchnorm/mul_1?
8model_4/batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_4_batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8model_4/batch_normalization_9/batchnorm/ReadVariableOp_1?
-model_4/batch_normalization_9/batchnorm/mul_2Mul@model_4/batch_normalization_9/batchnorm/ReadVariableOp_1:value:0/model_4/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2/
-model_4/batch_normalization_9/batchnorm/mul_2?
8model_4/batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_4_batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02:
8model_4/batch_normalization_9/batchnorm/ReadVariableOp_2?
+model_4/batch_normalization_9/batchnorm/subSub@model_4/batch_normalization_9/batchnorm/ReadVariableOp_2:value:01model_4/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2-
+model_4/batch_normalization_9/batchnorm/sub?
-model_4/batch_normalization_9/batchnorm/add_1AddV21model_4/batch_normalization_9/batchnorm/mul_1:z:0/model_4/batch_normalization_9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2/
-model_4/batch_normalization_9/batchnorm/add_1?
%model_4/dense_3/MatMul/ReadVariableOpReadVariableOp.model_4_dense_3_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%model_4/dense_3/MatMul/ReadVariableOp?
model_4/dense_3/MatMulMatMul1model_4/batch_normalization_9/batchnorm/add_1:z:0-model_4/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_3/MatMul?
&model_4/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_4/dense_3/BiasAdd/ReadVariableOp?
model_4/dense_3/BiasAddBiasAdd model_4/dense_3/MatMul:product:0.model_4/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_3/BiasAdd?
model_4/dense_3/EluElu model_4/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_3/Elu?
*model_4/dense_3/ActivityRegularizer/SquareSquare!model_4/dense_3/Elu:activations:0*
T0*'
_output_shapes
:?????????@2,
*model_4/dense_3/ActivityRegularizer/Square?
)model_4/dense_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_4/dense_3/ActivityRegularizer/Const?
'model_4/dense_3/ActivityRegularizer/SumSum.model_4/dense_3/ActivityRegularizer/Square:y:02model_4/dense_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'model_4/dense_3/ActivityRegularizer/Sum?
)model_4/dense_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)model_4/dense_3/ActivityRegularizer/mul/x?
'model_4/dense_3/ActivityRegularizer/mulMul2model_4/dense_3/ActivityRegularizer/mul/x:output:00model_4/dense_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'model_4/dense_3/ActivityRegularizer/mul?
)model_4/dense_3/ActivityRegularizer/ShapeShape!model_4/dense_3/Elu:activations:0*
T0*
_output_shapes
:2+
)model_4/dense_3/ActivityRegularizer/Shape?
7model_4/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model_4/dense_3/ActivityRegularizer/strided_slice/stack?
9model_4/dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_4/dense_3/ActivityRegularizer/strided_slice/stack_1?
9model_4/dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_4/dense_3/ActivityRegularizer/strided_slice/stack_2?
1model_4/dense_3/ActivityRegularizer/strided_sliceStridedSlice2model_4/dense_3/ActivityRegularizer/Shape:output:0@model_4/dense_3/ActivityRegularizer/strided_slice/stack:output:0Bmodel_4/dense_3/ActivityRegularizer/strided_slice/stack_1:output:0Bmodel_4/dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1model_4/dense_3/ActivityRegularizer/strided_slice?
(model_4/dense_3/ActivityRegularizer/CastCast:model_4/dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(model_4/dense_3/ActivityRegularizer/Cast?
+model_4/dense_3/ActivityRegularizer/truedivRealDiv+model_4/dense_3/ActivityRegularizer/mul:z:0,model_4/dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+model_4/dense_3/ActivityRegularizer/truediv?
7model_4/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp@model_4_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype029
7model_4/batch_normalization_10/batchnorm/ReadVariableOp?
.model_4/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:20
.model_4/batch_normalization_10/batchnorm/add/y?
,model_4/batch_normalization_10/batchnorm/addAddV2?model_4/batch_normalization_10/batchnorm/ReadVariableOp:value:07model_4/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2.
,model_4/batch_normalization_10/batchnorm/add?
.model_4/batch_normalization_10/batchnorm/RsqrtRsqrt0model_4/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:@20
.model_4/batch_normalization_10/batchnorm/Rsqrt?
;model_4/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_4_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model_4/batch_normalization_10/batchnorm/mul/ReadVariableOp?
,model_4/batch_normalization_10/batchnorm/mulMul2model_4/batch_normalization_10/batchnorm/Rsqrt:y:0Cmodel_4/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2.
,model_4/batch_normalization_10/batchnorm/mul?
.model_4/batch_normalization_10/batchnorm/mul_1Mul!model_4/dense_3/Elu:activations:00model_4/batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@20
.model_4/batch_normalization_10/batchnorm/mul_1?
9model_4/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_4_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9model_4/batch_normalization_10/batchnorm/ReadVariableOp_1?
.model_4/batch_normalization_10/batchnorm/mul_2MulAmodel_4/batch_normalization_10/batchnorm/ReadVariableOp_1:value:00model_4/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:@20
.model_4/batch_normalization_10/batchnorm/mul_2?
9model_4/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_4_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02;
9model_4/batch_normalization_10/batchnorm/ReadVariableOp_2?
,model_4/batch_normalization_10/batchnorm/subSubAmodel_4/batch_normalization_10/batchnorm/ReadVariableOp_2:value:02model_4/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2.
,model_4/batch_normalization_10/batchnorm/sub?
.model_4/batch_normalization_10/batchnorm/add_1AddV22model_4/batch_normalization_10/batchnorm/mul_1:z:00model_4/batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@20
.model_4/batch_normalization_10/batchnorm/add_1?
)model_4/predictions/MatMul/ReadVariableOpReadVariableOp2model_4_predictions_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02+
)model_4/predictions/MatMul/ReadVariableOp?
model_4/predictions/MatMulMatMul2model_4/batch_normalization_10/batchnorm/add_1:z:01model_4/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/predictions/MatMul?
*model_4/predictions/BiasAdd/ReadVariableOpReadVariableOp3model_4_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_4/predictions/BiasAdd/ReadVariableOp?
model_4/predictions/BiasAddBiasAdd$model_4/predictions/MatMul:product:02model_4/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/predictions/BiasAdd?
model_4/predictions/SoftmaxSoftmax$model_4/predictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_4/predictions/Softmax?
.model_4/predictions/ActivityRegularizer/SquareSquare%model_4/predictions/Softmax:softmax:0*
T0*'
_output_shapes
:?????????20
.model_4/predictions/ActivityRegularizer/Square?
-model_4/predictions/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-model_4/predictions/ActivityRegularizer/Const?
+model_4/predictions/ActivityRegularizer/SumSum2model_4/predictions/ActivityRegularizer/Square:y:06model_4/predictions/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2-
+model_4/predictions/ActivityRegularizer/Sum?
-model_4/predictions/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52/
-model_4/predictions/ActivityRegularizer/mul/x?
+model_4/predictions/ActivityRegularizer/mulMul6model_4/predictions/ActivityRegularizer/mul/x:output:04model_4/predictions/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+model_4/predictions/ActivityRegularizer/mul?
-model_4/predictions/ActivityRegularizer/ShapeShape%model_4/predictions/Softmax:softmax:0*
T0*
_output_shapes
:2/
-model_4/predictions/ActivityRegularizer/Shape?
;model_4/predictions/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model_4/predictions/ActivityRegularizer/strided_slice/stack?
=model_4/predictions/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_4/predictions/ActivityRegularizer/strided_slice/stack_1?
=model_4/predictions/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_4/predictions/ActivityRegularizer/strided_slice/stack_2?
5model_4/predictions/ActivityRegularizer/strided_sliceStridedSlice6model_4/predictions/ActivityRegularizer/Shape:output:0Dmodel_4/predictions/ActivityRegularizer/strided_slice/stack:output:0Fmodel_4/predictions/ActivityRegularizer/strided_slice/stack_1:output:0Fmodel_4/predictions/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5model_4/predictions/ActivityRegularizer/strided_slice?
,model_4/predictions/ActivityRegularizer/CastCast>model_4/predictions/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,model_4/predictions/ActivityRegularizer/Cast?
/model_4/predictions/ActivityRegularizer/truedivRealDiv/model_4/predictions/ActivityRegularizer/mul:z:00model_4/predictions/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 21
/model_4/predictions/ActivityRegularizer/truediv?
IdentityIdentity%model_4/predictions/Softmax:softmax:0-^model_4/Normalization/Reshape/ReadVariableOp/^model_4/Normalization/Reshape_1/ReadVariableOp8^model_4/batch_normalization_10/batchnorm/ReadVariableOp:^model_4/batch_normalization_10/batchnorm/ReadVariableOp_1:^model_4/batch_normalization_10/batchnorm/ReadVariableOp_2<^model_4/batch_normalization_10/batchnorm/mul/ReadVariableOp7^model_4/batch_normalization_7/batchnorm/ReadVariableOp9^model_4/batch_normalization_7/batchnorm/ReadVariableOp_19^model_4/batch_normalization_7/batchnorm/ReadVariableOp_2;^model_4/batch_normalization_7/batchnorm/mul/ReadVariableOp7^model_4/batch_normalization_8/batchnorm/ReadVariableOp9^model_4/batch_normalization_8/batchnorm/ReadVariableOp_19^model_4/batch_normalization_8/batchnorm/ReadVariableOp_2;^model_4/batch_normalization_8/batchnorm/mul/ReadVariableOp7^model_4/batch_normalization_9/batchnorm/ReadVariableOp9^model_4/batch_normalization_9/batchnorm/ReadVariableOp_19^model_4/batch_normalization_9/batchnorm/ReadVariableOp_2;^model_4/batch_normalization_9/batchnorm/mul/ReadVariableOp'^model_4/dense_0/BiasAdd/ReadVariableOp&^model_4/dense_0/MatMul/ReadVariableOp'^model_4/dense_1/BiasAdd/ReadVariableOp&^model_4/dense_1/MatMul/ReadVariableOp'^model_4/dense_2/BiasAdd/ReadVariableOp&^model_4/dense_2/MatMul/ReadVariableOp'^model_4/dense_3/BiasAdd/ReadVariableOp&^model_4/dense_3/MatMul/ReadVariableOp+^model_4/predictions/BiasAdd/ReadVariableOp*^model_4/predictions/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2\
,model_4/Normalization/Reshape/ReadVariableOp,model_4/Normalization/Reshape/ReadVariableOp2`
.model_4/Normalization/Reshape_1/ReadVariableOp.model_4/Normalization/Reshape_1/ReadVariableOp2r
7model_4/batch_normalization_10/batchnorm/ReadVariableOp7model_4/batch_normalization_10/batchnorm/ReadVariableOp2v
9model_4/batch_normalization_10/batchnorm/ReadVariableOp_19model_4/batch_normalization_10/batchnorm/ReadVariableOp_12v
9model_4/batch_normalization_10/batchnorm/ReadVariableOp_29model_4/batch_normalization_10/batchnorm/ReadVariableOp_22z
;model_4/batch_normalization_10/batchnorm/mul/ReadVariableOp;model_4/batch_normalization_10/batchnorm/mul/ReadVariableOp2p
6model_4/batch_normalization_7/batchnorm/ReadVariableOp6model_4/batch_normalization_7/batchnorm/ReadVariableOp2t
8model_4/batch_normalization_7/batchnorm/ReadVariableOp_18model_4/batch_normalization_7/batchnorm/ReadVariableOp_12t
8model_4/batch_normalization_7/batchnorm/ReadVariableOp_28model_4/batch_normalization_7/batchnorm/ReadVariableOp_22x
:model_4/batch_normalization_7/batchnorm/mul/ReadVariableOp:model_4/batch_normalization_7/batchnorm/mul/ReadVariableOp2p
6model_4/batch_normalization_8/batchnorm/ReadVariableOp6model_4/batch_normalization_8/batchnorm/ReadVariableOp2t
8model_4/batch_normalization_8/batchnorm/ReadVariableOp_18model_4/batch_normalization_8/batchnorm/ReadVariableOp_12t
8model_4/batch_normalization_8/batchnorm/ReadVariableOp_28model_4/batch_normalization_8/batchnorm/ReadVariableOp_22x
:model_4/batch_normalization_8/batchnorm/mul/ReadVariableOp:model_4/batch_normalization_8/batchnorm/mul/ReadVariableOp2p
6model_4/batch_normalization_9/batchnorm/ReadVariableOp6model_4/batch_normalization_9/batchnorm/ReadVariableOp2t
8model_4/batch_normalization_9/batchnorm/ReadVariableOp_18model_4/batch_normalization_9/batchnorm/ReadVariableOp_12t
8model_4/batch_normalization_9/batchnorm/ReadVariableOp_28model_4/batch_normalization_9/batchnorm/ReadVariableOp_22x
:model_4/batch_normalization_9/batchnorm/mul/ReadVariableOp:model_4/batch_normalization_9/batchnorm/mul/ReadVariableOp2P
&model_4/dense_0/BiasAdd/ReadVariableOp&model_4/dense_0/BiasAdd/ReadVariableOp2N
%model_4/dense_0/MatMul/ReadVariableOp%model_4/dense_0/MatMul/ReadVariableOp2P
&model_4/dense_1/BiasAdd/ReadVariableOp&model_4/dense_1/BiasAdd/ReadVariableOp2N
%model_4/dense_1/MatMul/ReadVariableOp%model_4/dense_1/MatMul/ReadVariableOp2P
&model_4/dense_2/BiasAdd/ReadVariableOp&model_4/dense_2/BiasAdd/ReadVariableOp2N
%model_4/dense_2/MatMul/ReadVariableOp%model_4/dense_2/MatMul/ReadVariableOp2P
&model_4/dense_3/BiasAdd/ReadVariableOp&model_4/dense_3/BiasAdd/ReadVariableOp2N
%model_4/dense_3/MatMul/ReadVariableOp%model_4/dense_3/MatMul/ReadVariableOp2X
*model_4/predictions/BiasAdd/ReadVariableOp*model_4/predictions/BiasAdd/ReadVariableOp2V
)model_4/predictions/MatMul/ReadVariableOp)model_4/predictions/MatMul/ReadVariableOp:R N
'
_output_shapes
:?????????3
#
_user_specified_name	particles
??
?
D__inference_model_4_layer_call_and_return_conditional_losses_2255761

inputs;
-normalization_reshape_readvariableop_resource:3=
/normalization_reshape_1_readvariableop_resource:38
&dense_0_matmul_readvariableop_resource:3@5
'dense_0_biasadd_readvariableop_resource:@K
=batch_normalization_7_assignmovingavg_readvariableop_resource:@M
?batch_normalization_7_assignmovingavg_1_readvariableop_resource:@I
;batch_normalization_7_batchnorm_mul_readvariableop_resource:@E
7batch_normalization_7_batchnorm_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@K
=batch_normalization_8_assignmovingavg_readvariableop_resource:@M
?batch_normalization_8_assignmovingavg_1_readvariableop_resource:@I
;batch_normalization_8_batchnorm_mul_readvariableop_resource:@E
7batch_normalization_8_batchnorm_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@K
=batch_normalization_9_assignmovingavg_readvariableop_resource:@M
?batch_normalization_9_assignmovingavg_1_readvariableop_resource:@I
;batch_normalization_9_batchnorm_mul_readvariableop_resource:@E
7batch_normalization_9_batchnorm_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@@5
'dense_3_biasadd_readvariableop_resource:@L
>batch_normalization_10_assignmovingavg_readvariableop_resource:@N
@batch_normalization_10_assignmovingavg_1_readvariableop_resource:@J
<batch_normalization_10_batchnorm_mul_readvariableop_resource:@F
8batch_normalization_10_batchnorm_readvariableop_resource:@<
*predictions_matmul_readvariableop_resource:@9
+predictions_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??$Normalization/Reshape/ReadVariableOp?&Normalization/Reshape_1/ReadVariableOp?&batch_normalization_10/AssignMovingAvg?5batch_normalization_10/AssignMovingAvg/ReadVariableOp?(batch_normalization_10/AssignMovingAvg_1?7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_10/batchnorm/ReadVariableOp?3batch_normalization_10/batchnorm/mul/ReadVariableOp?%batch_normalization_7/AssignMovingAvg?4batch_normalization_7/AssignMovingAvg/ReadVariableOp?'batch_normalization_7/AssignMovingAvg_1?6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_7/batchnorm/ReadVariableOp?2batch_normalization_7/batchnorm/mul/ReadVariableOp?%batch_normalization_8/AssignMovingAvg?4batch_normalization_8/AssignMovingAvg/ReadVariableOp?'batch_normalization_8/AssignMovingAvg_1?6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_8/batchnorm/ReadVariableOp?2batch_normalization_8/batchnorm/mul/ReadVariableOp?%batch_normalization_9/AssignMovingAvg?4batch_normalization_9/AssignMovingAvg/ReadVariableOp?'batch_normalization_9/AssignMovingAvg_1?6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_9/batchnorm/ReadVariableOp?2batch_normalization_9/batchnorm/mul/ReadVariableOp?dense_0/BiasAdd/ReadVariableOp?dense_0/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?"predictions/BiasAdd/ReadVariableOp?!predictions/MatMul/ReadVariableOp?
$Normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:3*
dtype02&
$Normalization/Reshape/ReadVariableOp?
Normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape/shape?
Normalization/ReshapeReshape,Normalization/Reshape/ReadVariableOp:value:0$Normalization/Reshape/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape?
&Normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:3*
dtype02(
&Normalization/Reshape_1/ReadVariableOp?
Normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   3   2
Normalization/Reshape_1/shape?
Normalization/Reshape_1Reshape.Normalization/Reshape_1/ReadVariableOp:value:0&Normalization/Reshape_1/shape:output:0*
T0*
_output_shapes

:32
Normalization/Reshape_1?
Normalization/subSubinputsNormalization/Reshape:output:0*
T0*'
_output_shapes
:?????????32
Normalization/sub{
Normalization/SqrtSqrt Normalization/Reshape_1:output:0*
T0*
_output_shapes

:32
Normalization/Sqrtw
Normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
Normalization/Maximum/y?
Normalization/MaximumMaximumNormalization/Sqrt:y:0 Normalization/Maximum/y:output:0*
T0*
_output_shapes

:32
Normalization/Maximum?
Normalization/truedivRealDivNormalization/sub:z:0Normalization/Maximum:z:0*
T0*'
_output_shapes
:?????????32
Normalization/truediv?
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes

:3@*
dtype02
dense_0/MatMul/ReadVariableOp?
dense_0/MatMulMatMulNormalization/truediv:z:0%dense_0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_0/MatMul?
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_0/BiasAdd/ReadVariableOp?
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_0/BiasAddm
dense_0/EluEludense_0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_0/Elu?
"dense_0/ActivityRegularizer/SquareSquaredense_0/Elu:activations:0*
T0*'
_output_shapes
:?????????@2$
"dense_0/ActivityRegularizer/Square?
!dense_0/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_0/ActivityRegularizer/Const?
dense_0/ActivityRegularizer/SumSum&dense_0/ActivityRegularizer/Square:y:0*dense_0/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_0/ActivityRegularizer/Sum?
!dense_0/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_0/ActivityRegularizer/mul/x?
dense_0/ActivityRegularizer/mulMul*dense_0/ActivityRegularizer/mul/x:output:0(dense_0/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_0/ActivityRegularizer/mul?
!dense_0/ActivityRegularizer/ShapeShapedense_0/Elu:activations:0*
T0*
_output_shapes
:2#
!dense_0/ActivityRegularizer/Shape?
/dense_0/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_0/ActivityRegularizer/strided_slice/stack?
1dense_0/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_1?
1dense_0/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_0/ActivityRegularizer/strided_slice/stack_2?
)dense_0/ActivityRegularizer/strided_sliceStridedSlice*dense_0/ActivityRegularizer/Shape:output:08dense_0/ActivityRegularizer/strided_slice/stack:output:0:dense_0/ActivityRegularizer/strided_slice/stack_1:output:0:dense_0/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_0/ActivityRegularizer/strided_slice?
 dense_0/ActivityRegularizer/CastCast2dense_0/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_0/ActivityRegularizer/Cast?
#dense_0/ActivityRegularizer/truedivRealDiv#dense_0/ActivityRegularizer/mul:z:0$dense_0/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_0/ActivityRegularizer/truediv?
4batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_7/moments/mean/reduction_indices?
"batch_normalization_7/moments/meanMeandense_0/Elu:activations:0=batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2$
"batch_normalization_7/moments/mean?
*batch_normalization_7/moments/StopGradientStopGradient+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes

:@2,
*batch_normalization_7/moments/StopGradient?
/batch_normalization_7/moments/SquaredDifferenceSquaredDifferencedense_0/Elu:activations:03batch_normalization_7/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@21
/batch_normalization_7/moments/SquaredDifference?
8batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_7/moments/variance/reduction_indices?
&batch_normalization_7/moments/varianceMean3batch_normalization_7/moments/SquaredDifference:z:0Abatch_normalization_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2(
&batch_normalization_7/moments/variance?
%batch_normalization_7/moments/SqueezeSqueeze+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2'
%batch_normalization_7/moments/Squeeze?
'batch_normalization_7/moments/Squeeze_1Squeeze/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2)
'batch_normalization_7/moments/Squeeze_1?
+batch_normalization_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_7/AssignMovingAvg/decay?
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype026
4batch_normalization_7/AssignMovingAvg/ReadVariableOp?
)batch_normalization_7/AssignMovingAvg/subSub<batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_7/moments/Squeeze:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_7/AssignMovingAvg/sub?
)batch_normalization_7/AssignMovingAvg/mulMul-batch_normalization_7/AssignMovingAvg/sub:z:04batch_normalization_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_7/AssignMovingAvg/mul?
%batch_normalization_7/AssignMovingAvgAssignSubVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource-batch_normalization_7/AssignMovingAvg/mul:z:05^batch_normalization_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_7/AssignMovingAvg?
-batch_normalization_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_7/AssignMovingAvg_1/decay?
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_7/AssignMovingAvg_1/subSub>batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_7/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_7/AssignMovingAvg_1/sub?
+batch_normalization_7/AssignMovingAvg_1/mulMul/batch_normalization_7/AssignMovingAvg_1/sub:z:06batch_normalization_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_7/AssignMovingAvg_1/mul?
'batch_normalization_7/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource/batch_normalization_7/AssignMovingAvg_1/mul:z:07^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_7/AssignMovingAvg_1?
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_7/batchnorm/add/y?
#batch_normalization_7/batchnorm/addAddV20batch_normalization_7/moments/Squeeze_1:output:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_7/batchnorm/add?
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_7/batchnorm/Rsqrt?
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_7/batchnorm/mul/ReadVariableOp?
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_7/batchnorm/mul?
%batch_normalization_7/batchnorm/mul_1Muldense_0/Elu:activations:0'batch_normalization_7/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_7/batchnorm/mul_1?
%batch_normalization_7/batchnorm/mul_2Mul.batch_normalization_7/moments/Squeeze:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_7/batchnorm/mul_2?
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_7/batchnorm/ReadVariableOp?
#batch_normalization_7/batchnorm/subSub6batch_normalization_7/batchnorm/ReadVariableOp:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_7/batchnorm/sub?
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_7/batchnorm/add_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddm
dense_1/EluEludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1/Elu?
"dense_1/ActivityRegularizer/SquareSquaredense_1/Elu:activations:0*
T0*'
_output_shapes
:?????????@2$
"dense_1/ActivityRegularizer/Square?
!dense_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_1/ActivityRegularizer/Const?
dense_1/ActivityRegularizer/SumSum&dense_1/ActivityRegularizer/Square:y:0*dense_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_1/ActivityRegularizer/Sum?
!dense_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_1/ActivityRegularizer/mul/x?
dense_1/ActivityRegularizer/mulMul*dense_1/ActivityRegularizer/mul/x:output:0(dense_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_1/ActivityRegularizer/mul?
!dense_1/ActivityRegularizer/ShapeShapedense_1/Elu:activations:0*
T0*
_output_shapes
:2#
!dense_1/ActivityRegularizer/Shape?
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_1/ActivityRegularizer/strided_slice/stack?
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_1?
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_1/ActivityRegularizer/strided_slice/stack_2?
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_1/ActivityRegularizer/strided_slice?
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_1/ActivityRegularizer/Cast?
#dense_1/ActivityRegularizer/truedivRealDiv#dense_1/ActivityRegularizer/mul:z:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_1/ActivityRegularizer/truediv?
4batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_8/moments/mean/reduction_indices?
"batch_normalization_8/moments/meanMeandense_1/Elu:activations:0=batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2$
"batch_normalization_8/moments/mean?
*batch_normalization_8/moments/StopGradientStopGradient+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes

:@2,
*batch_normalization_8/moments/StopGradient?
/batch_normalization_8/moments/SquaredDifferenceSquaredDifferencedense_1/Elu:activations:03batch_normalization_8/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@21
/batch_normalization_8/moments/SquaredDifference?
8batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_8/moments/variance/reduction_indices?
&batch_normalization_8/moments/varianceMean3batch_normalization_8/moments/SquaredDifference:z:0Abatch_normalization_8/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2(
&batch_normalization_8/moments/variance?
%batch_normalization_8/moments/SqueezeSqueeze+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2'
%batch_normalization_8/moments/Squeeze?
'batch_normalization_8/moments/Squeeze_1Squeeze/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2)
'batch_normalization_8/moments/Squeeze_1?
+batch_normalization_8/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_8/AssignMovingAvg/decay?
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype026
4batch_normalization_8/AssignMovingAvg/ReadVariableOp?
)batch_normalization_8/AssignMovingAvg/subSub<batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_8/moments/Squeeze:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_8/AssignMovingAvg/sub?
)batch_normalization_8/AssignMovingAvg/mulMul-batch_normalization_8/AssignMovingAvg/sub:z:04batch_normalization_8/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_8/AssignMovingAvg/mul?
%batch_normalization_8/AssignMovingAvgAssignSubVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource-batch_normalization_8/AssignMovingAvg/mul:z:05^batch_normalization_8/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_8/AssignMovingAvg?
-batch_normalization_8/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_8/AssignMovingAvg_1/decay?
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_8/AssignMovingAvg_1/subSub>batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_8/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_8/AssignMovingAvg_1/sub?
+batch_normalization_8/AssignMovingAvg_1/mulMul/batch_normalization_8/AssignMovingAvg_1/sub:z:06batch_normalization_8/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_8/AssignMovingAvg_1/mul?
'batch_normalization_8/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource/batch_normalization_8/AssignMovingAvg_1/mul:z:07^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_8/AssignMovingAvg_1?
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_8/batchnorm/add/y?
#batch_normalization_8/batchnorm/addAddV20batch_normalization_8/moments/Squeeze_1:output:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_8/batchnorm/add?
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_8/batchnorm/Rsqrt?
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOp?
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_8/batchnorm/mul?
%batch_normalization_8/batchnorm/mul_1Muldense_1/Elu:activations:0'batch_normalization_8/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_8/batchnorm/mul_1?
%batch_normalization_8/batchnorm/mul_2Mul.batch_normalization_8/moments/Squeeze:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_8/batchnorm/mul_2?
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOp?
#batch_normalization_8/batchnorm/subSub6batch_normalization_8/batchnorm/ReadVariableOp:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_8/batchnorm/sub?
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_8/batchnorm/add_1?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAddm
dense_2/EluEludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_2/Elu?
"dense_2/ActivityRegularizer/SquareSquaredense_2/Elu:activations:0*
T0*'
_output_shapes
:?????????@2$
"dense_2/ActivityRegularizer/Square?
!dense_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_2/ActivityRegularizer/Const?
dense_2/ActivityRegularizer/SumSum&dense_2/ActivityRegularizer/Square:y:0*dense_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_2/ActivityRegularizer/Sum?
!dense_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_2/ActivityRegularizer/mul/x?
dense_2/ActivityRegularizer/mulMul*dense_2/ActivityRegularizer/mul/x:output:0(dense_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_2/ActivityRegularizer/mul?
!dense_2/ActivityRegularizer/ShapeShapedense_2/Elu:activations:0*
T0*
_output_shapes
:2#
!dense_2/ActivityRegularizer/Shape?
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_2/ActivityRegularizer/strided_slice/stack?
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_1?
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_2/ActivityRegularizer/strided_slice/stack_2?
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_2/ActivityRegularizer/strided_slice?
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_2/ActivityRegularizer/Cast?
#dense_2/ActivityRegularizer/truedivRealDiv#dense_2/ActivityRegularizer/mul:z:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_2/ActivityRegularizer/truediv?
4batch_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_9/moments/mean/reduction_indices?
"batch_normalization_9/moments/meanMeandense_2/Elu:activations:0=batch_normalization_9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2$
"batch_normalization_9/moments/mean?
*batch_normalization_9/moments/StopGradientStopGradient+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes

:@2,
*batch_normalization_9/moments/StopGradient?
/batch_normalization_9/moments/SquaredDifferenceSquaredDifferencedense_2/Elu:activations:03batch_normalization_9/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@21
/batch_normalization_9/moments/SquaredDifference?
8batch_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_9/moments/variance/reduction_indices?
&batch_normalization_9/moments/varianceMean3batch_normalization_9/moments/SquaredDifference:z:0Abatch_normalization_9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2(
&batch_normalization_9/moments/variance?
%batch_normalization_9/moments/SqueezeSqueeze+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2'
%batch_normalization_9/moments/Squeeze?
'batch_normalization_9/moments/Squeeze_1Squeeze/batch_normalization_9/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2)
'batch_normalization_9/moments/Squeeze_1?
+batch_normalization_9/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_9/AssignMovingAvg/decay?
4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_9_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype026
4batch_normalization_9/AssignMovingAvg/ReadVariableOp?
)batch_normalization_9/AssignMovingAvg/subSub<batch_normalization_9/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_9/moments/Squeeze:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_9/AssignMovingAvg/sub?
)batch_normalization_9/AssignMovingAvg/mulMul-batch_normalization_9/AssignMovingAvg/sub:z:04batch_normalization_9/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_9/AssignMovingAvg/mul?
%batch_normalization_9/AssignMovingAvgAssignSubVariableOp=batch_normalization_9_assignmovingavg_readvariableop_resource-batch_normalization_9/AssignMovingAvg/mul:z:05^batch_normalization_9/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_9/AssignMovingAvg?
-batch_normalization_9/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_9/AssignMovingAvg_1/decay?
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_9_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_9/AssignMovingAvg_1/subSub>batch_normalization_9/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_9/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_9/AssignMovingAvg_1/sub?
+batch_normalization_9/AssignMovingAvg_1/mulMul/batch_normalization_9/AssignMovingAvg_1/sub:z:06batch_normalization_9/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_9/AssignMovingAvg_1/mul?
'batch_normalization_9/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_9_assignmovingavg_1_readvariableop_resource/batch_normalization_9/AssignMovingAvg_1/mul:z:07^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_9/AssignMovingAvg_1?
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_9/batchnorm/add/y?
#batch_normalization_9/batchnorm/addAddV20batch_normalization_9/moments/Squeeze_1:output:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/add?
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_9/batchnorm/Rsqrt?
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOp?
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/mul?
%batch_normalization_9/batchnorm/mul_1Muldense_2/Elu:activations:0'batch_normalization_9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_9/batchnorm/mul_1?
%batch_normalization_9/batchnorm/mul_2Mul.batch_normalization_9/moments/Squeeze:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_9/batchnorm/mul_2?
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOp?
#batch_normalization_9/batchnorm/subSub6batch_normalization_9/batchnorm/ReadVariableOp:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/sub?
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_9/batchnorm/add_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_3/BiasAddm
dense_3/EluEludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_3/Elu?
"dense_3/ActivityRegularizer/SquareSquaredense_3/Elu:activations:0*
T0*'
_output_shapes
:?????????@2$
"dense_3/ActivityRegularizer/Square?
!dense_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_3/ActivityRegularizer/Const?
dense_3/ActivityRegularizer/SumSum&dense_3/ActivityRegularizer/Square:y:0*dense_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_3/ActivityRegularizer/Sum?
!dense_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_3/ActivityRegularizer/mul/x?
dense_3/ActivityRegularizer/mulMul*dense_3/ActivityRegularizer/mul/x:output:0(dense_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_3/ActivityRegularizer/mul?
!dense_3/ActivityRegularizer/ShapeShapedense_3/Elu:activations:0*
T0*
_output_shapes
:2#
!dense_3/ActivityRegularizer/Shape?
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_3/ActivityRegularizer/strided_slice/stack?
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_1?
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_3/ActivityRegularizer/strided_slice/stack_2?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_3/ActivityRegularizer/strided_slice?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_3/ActivityRegularizer/Cast?
#dense_3/ActivityRegularizer/truedivRealDiv#dense_3/ActivityRegularizer/mul:z:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_3/ActivityRegularizer/truediv?
5batch_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_10/moments/mean/reduction_indices?
#batch_normalization_10/moments/meanMeandense_3/Elu:activations:0>batch_normalization_10/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2%
#batch_normalization_10/moments/mean?
+batch_normalization_10/moments/StopGradientStopGradient,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes

:@2-
+batch_normalization_10/moments/StopGradient?
0batch_normalization_10/moments/SquaredDifferenceSquaredDifferencedense_3/Elu:activations:04batch_normalization_10/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@22
0batch_normalization_10/moments/SquaredDifference?
9batch_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_10/moments/variance/reduction_indices?
'batch_normalization_10/moments/varianceMean4batch_normalization_10/moments/SquaredDifference:z:0Bbatch_normalization_10/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2)
'batch_normalization_10/moments/variance?
&batch_normalization_10/moments/SqueezeSqueeze,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2(
&batch_normalization_10/moments/Squeeze?
(batch_normalization_10/moments/Squeeze_1Squeeze0batch_normalization_10/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2*
(batch_normalization_10/moments/Squeeze_1?
,batch_normalization_10/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_10/AssignMovingAvg/decay?
5batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_10_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_10/AssignMovingAvg/ReadVariableOp?
*batch_normalization_10/AssignMovingAvg/subSub=batch_normalization_10/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_10/moments/Squeeze:output:0*
T0*
_output_shapes
:@2,
*batch_normalization_10/AssignMovingAvg/sub?
*batch_normalization_10/AssignMovingAvg/mulMul.batch_normalization_10/AssignMovingAvg/sub:z:05batch_normalization_10/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2,
*batch_normalization_10/AssignMovingAvg/mul?
&batch_normalization_10/AssignMovingAvgAssignSubVariableOp>batch_normalization_10_assignmovingavg_readvariableop_resource.batch_normalization_10/AssignMovingAvg/mul:z:06^batch_normalization_10/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_10/AssignMovingAvg?
.batch_normalization_10/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_10/AssignMovingAvg_1/decay?
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_10_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_10/AssignMovingAvg_1/subSub?batch_normalization_10/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_10/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2.
,batch_normalization_10/AssignMovingAvg_1/sub?
,batch_normalization_10/AssignMovingAvg_1/mulMul0batch_normalization_10/AssignMovingAvg_1/sub:z:07batch_normalization_10/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2.
,batch_normalization_10/AssignMovingAvg_1/mul?
(batch_normalization_10/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_10_assignmovingavg_1_readvariableop_resource0batch_normalization_10/AssignMovingAvg_1/mul:z:08^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_10/AssignMovingAvg_1?
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_10/batchnorm/add/y?
$batch_normalization_10/batchnorm/addAddV21batch_normalization_10/moments/Squeeze_1:output:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$batch_normalization_10/batchnorm/add?
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&batch_normalization_10/batchnorm/Rsqrt?
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization_10/batchnorm/mul/ReadVariableOp?
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$batch_normalization_10/batchnorm/mul?
&batch_normalization_10/batchnorm/mul_1Muldense_3/Elu:activations:0(batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2(
&batch_normalization_10/batchnorm/mul_1?
&batch_normalization_10/batchnorm/mul_2Mul/batch_normalization_10/moments/Squeeze:output:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&batch_normalization_10/batchnorm/mul_2?
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/batch_normalization_10/batchnorm/ReadVariableOp?
$batch_normalization_10/batchnorm/subSub7batch_normalization_10/batchnorm/ReadVariableOp:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$batch_normalization_10/batchnorm/sub?
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2(
&batch_normalization_10/batchnorm/add_1?
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02#
!predictions/MatMul/ReadVariableOp?
predictions/MatMulMatMul*batch_normalization_10/batchnorm/add_1:z:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
predictions/MatMul?
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"predictions/BiasAdd/ReadVariableOp?
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
predictions/BiasAdd?
predictions/SoftmaxSoftmaxpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
predictions/Softmax?
&predictions/ActivityRegularizer/SquareSquarepredictions/Softmax:softmax:0*
T0*'
_output_shapes
:?????????2(
&predictions/ActivityRegularizer/Square?
%predictions/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%predictions/ActivityRegularizer/Const?
#predictions/ActivityRegularizer/SumSum*predictions/ActivityRegularizer/Square:y:0.predictions/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2%
#predictions/ActivityRegularizer/Sum?
%predictions/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%predictions/ActivityRegularizer/mul/x?
#predictions/ActivityRegularizer/mulMul.predictions/ActivityRegularizer/mul/x:output:0,predictions/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#predictions/ActivityRegularizer/mul?
%predictions/ActivityRegularizer/ShapeShapepredictions/Softmax:softmax:0*
T0*
_output_shapes
:2'
%predictions/ActivityRegularizer/Shape?
3predictions/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3predictions/ActivityRegularizer/strided_slice/stack?
5predictions/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_1?
5predictions/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5predictions/ActivityRegularizer/strided_slice/stack_2?
-predictions/ActivityRegularizer/strided_sliceStridedSlice.predictions/ActivityRegularizer/Shape:output:0<predictions/ActivityRegularizer/strided_slice/stack:output:0>predictions/ActivityRegularizer/strided_slice/stack_1:output:0>predictions/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-predictions/ActivityRegularizer/strided_slice?
$predictions/ActivityRegularizer/CastCast6predictions/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$predictions/ActivityRegularizer/Cast?
'predictions/ActivityRegularizer/truedivRealDiv'predictions/ActivityRegularizer/mul:z:0(predictions/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'predictions/ActivityRegularizer/truediv?
IdentityIdentitypredictions/Softmax:softmax:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity'dense_0/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_1/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_2/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity'dense_3/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4?

Identity_5Identity+predictions/ActivityRegularizer/truediv:z:0%^Normalization/Reshape/ReadVariableOp'^Normalization/Reshape_1/ReadVariableOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????3: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$Normalization/Reshape/ReadVariableOp$Normalization/Reshape/ReadVariableOp2P
&Normalization/Reshape_1/ReadVariableOp&Normalization/Reshape_1/ReadVariableOp2P
&batch_normalization_10/AssignMovingAvg&batch_normalization_10/AssignMovingAvg2n
5batch_normalization_10/AssignMovingAvg/ReadVariableOp5batch_normalization_10/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_10/AssignMovingAvg_1(batch_normalization_10/AssignMovingAvg_12r
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2N
%batch_normalization_7/AssignMovingAvg%batch_normalization_7/AssignMovingAvg2l
4batch_normalization_7/AssignMovingAvg/ReadVariableOp4batch_normalization_7/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_1'batch_normalization_7/AssignMovingAvg_12p
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2N
%batch_normalization_8/AssignMovingAvg%batch_normalization_8/AssignMovingAvg2l
4batch_normalization_8/AssignMovingAvg/ReadVariableOp4batch_normalization_8/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_8/AssignMovingAvg_1'batch_normalization_8/AssignMovingAvg_12p
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2N
%batch_normalization_9/AssignMovingAvg%batch_normalization_9/AssignMovingAvg2l
4batch_normalization_9/AssignMovingAvg/ReadVariableOp4batch_normalization_9/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_9/AssignMovingAvg_1'batch_normalization_9/AssignMovingAvg_12p
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????3
 
_user_specified_nameinputs
?

?
D__inference_dense_3_layer_call_and_return_conditional_losses_2254347

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
K
4__inference_predictions_activity_regularizer_2254214
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2256127

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_dense_3_layer_call_and_return_conditional_losses_2256225

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_dense_1_layer_call_and_return_conditional_losses_2254279

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?4
#__inference__traced_restore_2256761
file_prefix1
#assignvariableop_normalization_mean:37
)assignvariableop_1_normalization_variance:30
&assignvariableop_2_normalization_count:	 3
!assignvariableop_3_dense_0_kernel:3@-
assignvariableop_4_dense_0_bias:@<
.assignvariableop_5_batch_normalization_7_gamma:@;
-assignvariableop_6_batch_normalization_7_beta:@B
4assignvariableop_7_batch_normalization_7_moving_mean:@F
8assignvariableop_8_batch_normalization_7_moving_variance:@3
!assignvariableop_9_dense_1_kernel:@@.
 assignvariableop_10_dense_1_bias:@=
/assignvariableop_11_batch_normalization_8_gamma:@<
.assignvariableop_12_batch_normalization_8_beta:@C
5assignvariableop_13_batch_normalization_8_moving_mean:@G
9assignvariableop_14_batch_normalization_8_moving_variance:@4
"assignvariableop_15_dense_2_kernel:@@.
 assignvariableop_16_dense_2_bias:@=
/assignvariableop_17_batch_normalization_9_gamma:@<
.assignvariableop_18_batch_normalization_9_beta:@C
5assignvariableop_19_batch_normalization_9_moving_mean:@G
9assignvariableop_20_batch_normalization_9_moving_variance:@4
"assignvariableop_21_dense_3_kernel:@@.
 assignvariableop_22_dense_3_bias:@>
0assignvariableop_23_batch_normalization_10_gamma:@=
/assignvariableop_24_batch_normalization_10_beta:@D
6assignvariableop_25_batch_normalization_10_moving_mean:@H
:assignvariableop_26_batch_normalization_10_moving_variance:@8
&assignvariableop_27_predictions_kernel:@2
$assignvariableop_28_predictions_bias:'
assignvariableop_29_adam_iter:	 )
assignvariableop_30_adam_beta_1: )
assignvariableop_31_adam_beta_2: (
assignvariableop_32_adam_decay: 0
&assignvariableop_33_adam_learning_rate: #
assignvariableop_34_total: #
assignvariableop_35_count: %
assignvariableop_36_total_1: %
assignvariableop_37_count_1: 1
"assignvariableop_38_true_positives:	?1
"assignvariableop_39_true_negatives:	?2
#assignvariableop_40_false_positives:	?2
#assignvariableop_41_false_negatives:	?2
$assignvariableop_42_true_positives_1:3
%assignvariableop_43_false_positives_1:2
$assignvariableop_44_true_positives_2:3
%assignvariableop_45_false_negatives_1:;
)assignvariableop_46_adam_dense_0_kernel_m:3@5
'assignvariableop_47_adam_dense_0_bias_m:@D
6assignvariableop_48_adam_batch_normalization_7_gamma_m:@C
5assignvariableop_49_adam_batch_normalization_7_beta_m:@;
)assignvariableop_50_adam_dense_1_kernel_m:@@5
'assignvariableop_51_adam_dense_1_bias_m:@D
6assignvariableop_52_adam_batch_normalization_8_gamma_m:@C
5assignvariableop_53_adam_batch_normalization_8_beta_m:@;
)assignvariableop_54_adam_dense_2_kernel_m:@@5
'assignvariableop_55_adam_dense_2_bias_m:@D
6assignvariableop_56_adam_batch_normalization_9_gamma_m:@C
5assignvariableop_57_adam_batch_normalization_9_beta_m:@;
)assignvariableop_58_adam_dense_3_kernel_m:@@5
'assignvariableop_59_adam_dense_3_bias_m:@E
7assignvariableop_60_adam_batch_normalization_10_gamma_m:@D
6assignvariableop_61_adam_batch_normalization_10_beta_m:@?
-assignvariableop_62_adam_predictions_kernel_m:@9
+assignvariableop_63_adam_predictions_bias_m:;
)assignvariableop_64_adam_dense_0_kernel_v:3@5
'assignvariableop_65_adam_dense_0_bias_v:@D
6assignvariableop_66_adam_batch_normalization_7_gamma_v:@C
5assignvariableop_67_adam_batch_normalization_7_beta_v:@;
)assignvariableop_68_adam_dense_1_kernel_v:@@5
'assignvariableop_69_adam_dense_1_bias_v:@D
6assignvariableop_70_adam_batch_normalization_8_gamma_v:@C
5assignvariableop_71_adam_batch_normalization_8_beta_v:@;
)assignvariableop_72_adam_dense_2_kernel_v:@@5
'assignvariableop_73_adam_dense_2_bias_v:@D
6assignvariableop_74_adam_batch_normalization_9_gamma_v:@C
5assignvariableop_75_adam_batch_normalization_9_beta_v:@;
)assignvariableop_76_adam_dense_3_kernel_v:@@5
'assignvariableop_77_adam_dense_3_bias_v:@E
7assignvariableop_78_adam_batch_normalization_10_gamma_v:@D
6assignvariableop_79_adam_batch_normalization_10_beta_v:@?
-assignvariableop_80_adam_predictions_kernel_v:@9
+assignvariableop_81_adam_predictions_bias_v:
identity_83??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_9?,
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*?,
value?+B?+SB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*?
value?B?SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*a
dtypesW
U2S		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp#assignvariableop_normalization_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp)assignvariableop_1_normalization_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp&assignvariableop_2_normalization_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_0_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_0_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_normalization_7_gammaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_batch_normalization_7_betaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp4assignvariableop_7_batch_normalization_7_moving_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_batch_normalization_7_moving_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_8_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp.assignvariableop_12_batch_normalization_8_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp5assignvariableop_13_batch_normalization_8_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_batch_normalization_8_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_2_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp assignvariableop_16_dense_2_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp/assignvariableop_17_batch_normalization_9_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp.assignvariableop_18_batch_normalization_9_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp5assignvariableop_19_batch_normalization_9_moving_meanIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp9assignvariableop_20_batch_normalization_9_moving_varianceIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_3_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_3_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp0assignvariableop_23_batch_normalization_10_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp/assignvariableop_24_batch_normalization_10_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_batch_normalization_10_moving_meanIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp:assignvariableop_26_batch_normalization_10_moving_varianceIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp&assignvariableop_27_predictions_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp$assignvariableop_28_predictions_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_iterIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_beta_2Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_decayIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_learning_rateIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpassignvariableop_36_total_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_count_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp"assignvariableop_38_true_positivesIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp"assignvariableop_39_true_negativesIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp#assignvariableop_40_false_positivesIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp#assignvariableop_41_false_negativesIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp$assignvariableop_42_true_positives_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp%assignvariableop_43_false_positives_1Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp$assignvariableop_44_true_positives_2Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp%assignvariableop_45_false_negatives_1Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_dense_0_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_0_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_batch_normalization_7_gamma_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_batch_normalization_7_beta_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_1_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_1_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_batch_normalization_8_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp5assignvariableop_53_adam_batch_normalization_8_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_dense_2_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dense_2_bias_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_9_gamma_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_batch_normalization_9_beta_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_3_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_3_bias_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp7assignvariableop_60_adam_batch_normalization_10_gamma_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp6assignvariableop_61_adam_batch_normalization_10_beta_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp-assignvariableop_62_adam_predictions_kernel_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_predictions_bias_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_dense_0_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_dense_0_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_batch_normalization_7_gamma_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp5assignvariableop_67_adam_batch_normalization_7_beta_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_dense_1_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp'assignvariableop_69_adam_dense_1_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_batch_normalization_8_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp5assignvariableop_71_adam_batch_normalization_8_beta_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_dense_2_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_dense_2_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_batch_normalization_9_gamma_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp5assignvariableop_75_adam_batch_normalization_9_beta_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_dense_3_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp'assignvariableop_77_adam_dense_3_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp7assignvariableop_78_adam_batch_normalization_10_gamma_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adam_batch_normalization_10_beta_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp-assignvariableop_80_adam_predictions_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_predictions_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_819
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_82Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_82?
Identity_83IdentityIdentity_82:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_83"#
identity_83Identity_83:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
7__inference_batch_normalization_9_layer_call_fn_2255994

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_22538882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
H__inference_dense_3_layer_call_and_return_all_conditional_losses_2256081

inputs
unknown:@@
	unknown_0:@
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_22543472
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *9
f4R2
0__inference_dense_3_activity_regularizer_22540392
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_7_layer_call_fn_2255794

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22535382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
	particles2
serving_default_particles:0?????????3?
predictions0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"??
_tf_keras_network??{"name": "model_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 51]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "particles"}, "name": "particles", "inbound_nodes": []}, {"class_name": "Normalization", "config": {"name": "Normalization", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "Normalization", "inbound_nodes": [[["particles", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_0", "inbound_nodes": [[["Normalization", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_7", "inbound_nodes": [[["dense_0", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["batch_normalization_7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_8", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["batch_normalization_8", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_9", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["batch_normalization_9", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_10", "inbound_nodes": [[["dense_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "predictions", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "predictions", "inbound_nodes": [[["batch_normalization_10", 0, 0, {}]]]}], "input_layers": [["particles", 0, 0]], "output_layers": [["predictions", 0, 0]]}, "shared_object_id": 42, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 51]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 51]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 51]}, "float32", "particles"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 51]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "particles"}, "name": "particles", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Normalization", "config": {"name": "Normalization", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "Normalization", "inbound_nodes": [[["particles", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 4}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_0", "inbound_nodes": [[["Normalization", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_7", "inbound_nodes": [[["dense_0", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 13}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["batch_normalization_7", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_8", "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 22}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["batch_normalization_8", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_9", "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 31}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["batch_normalization_9", 0, 0, {}]]], "shared_object_id": 32}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 34}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_10", "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "Dense", "config": {"name": "predictions", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 40}, "kernel_constraint": null, "bias_constraint": null}, "name": "predictions", "inbound_nodes": [[["batch_normalization_10", 0, 0, {}]]], "shared_object_id": 41}], "input_layers": [["particles", 0, 0]], "output_layers": [["predictions", 0, 0]]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}, "shared_object_id": 44}, "metrics": [[{"class_name": "BinaryAccuracy", "config": {"name": "binary_accuracy", "dtype": "float32", "threshold": 0.5}, "shared_object_id": 45}, {"class_name": "AUC", "config": {"name": "auc_2", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}, "shared_object_id": 46}, {"class_name": "Precision", "config": {"name": "precision_2", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 47}, {"class_name": "Recall", "config": {"name": "recall_2", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 48}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999974752427e-07, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "particles", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 51]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 51]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "particles"}}
?

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean
variance
	count
	keras_api"?
_tf_keras_layer?{"name": "Normalization", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": true, "must_restore_from_config": true, "class_name": "Normalization", "config": {"name": "Normalization", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "inbound_nodes": [[["particles", 0, 0, {}]]], "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, 51]}}
?


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "dense_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 4}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Normalization", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 51}}, "shared_object_id": 49}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 4}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 51]}}
?

 axis
	!gamma
"beta
#moving_mean
$moving_variance
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense_0", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?


)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 13}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_7", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 51}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

/axis
	0gamma
1beta
2moving_mean
3moving_variance
4	variables
5trainable_variables
6regularization_losses
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?


8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 22}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_8", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 53}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "batch_normalization_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?


Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 31}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_9", 0, 0, {}]]], "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 55}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

Maxis
	Ngamma
Obeta
Pmoving_mean
Qmoving_variance
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "batch_normalization_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 34}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?


Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "predictions", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "predictions", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 40}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_10", 0, 0, {}]]], "shared_object_id": 41, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 57}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
\iter

]beta_1

^beta_2
	_decay
`learning_ratem?m?!m?"m?)m?*m?0m?1m?8m?9m??m?@m?Gm?Hm?Nm?Om?Vm?Wm?v?v?!v?"v?)v?*v?0v?1v?8v?9v??v?@v?Gv?Hv?Nv?Ov?Vv?Wv?"
	optimizer
?
0
1
2
3
4
!5
"6
#7
$8
)9
*10
011
112
213
314
815
916
?17
@18
A19
B20
G21
H22
N23
O24
P25
Q26
V27
W28"
trackable_list_wrapper
?
0
1
!2
"3
)4
*5
06
17
88
99
?10
@11
G12
H13
N14
O15
V16
W17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
alayer_regularization_losses
	variables
bmetrics
trainable_variables
cnon_trainable_variables
dlayer_metrics

elayers
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:32Normalization/mean
": 32Normalization/variance
:	 2Normalization/count
"
_generic_user_object
 :3@2dense_0/kernel
:@2dense_0/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
flayer_regularization_losses
	variables
gmetrics
hnon_trainable_variables
trainable_variables
ilayer_metrics

jlayers
regularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_7/gamma
(:&@2batch_normalization_7/beta
1:/@ (2!batch_normalization_7/moving_mean
5:3@ (2%batch_normalization_7/moving_variance
<
!0
"1
#2
$3"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
klayer_regularization_losses
%	variables
lmetrics
mnon_trainable_variables
&trainable_variables
nlayer_metrics

olayers
'regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@@2dense_1/kernel
:@2dense_1/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
player_regularization_losses
+	variables
qmetrics
rnon_trainable_variables
,trainable_variables
slayer_metrics

tlayers
-regularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_8/gamma
(:&@2batch_normalization_8/beta
1:/@ (2!batch_normalization_8/moving_mean
5:3@ (2%batch_normalization_8/moving_variance
<
00
11
22
33"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ulayer_regularization_losses
4	variables
vmetrics
wnon_trainable_variables
5trainable_variables
xlayer_metrics

ylayers
6regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@@2dense_2/kernel
:@2dense_2/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
zlayer_regularization_losses
:	variables
{metrics
|non_trainable_variables
;trainable_variables
}layer_metrics

~layers
<regularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_9/gamma
(:&@2batch_normalization_9/beta
1:/@ (2!batch_normalization_9/moving_mean
5:3@ (2%batch_normalization_9/moving_variance
<
?0
@1
A2
B3"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
layer_regularization_losses
C	variables
?metrics
?non_trainable_variables
Dtrainable_variables
?layer_metrics
?layers
Eregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@@2dense_3/kernel
:@2dense_3/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
I	variables
?metrics
?non_trainable_variables
Jtrainable_variables
?layer_metrics
?layers
Kregularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_10/gamma
):'@2batch_normalization_10/beta
2:0@ (2"batch_normalization_10/moving_mean
6:4@ (2&batch_normalization_10/moving_variance
<
N0
O1
P2
Q3"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
R	variables
?metrics
?non_trainable_variables
Strainable_variables
?layer_metrics
?layers
Tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"@2predictions/kernel
:2predictions/bias
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
X	variables
?metrics
?non_trainable_variables
Ytrainable_variables
?layer_metrics
?layers
Zregularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
n
0
1
2
#3
$4
25
36
A7
B8
P9
Q10"
trackable_list_wrapper
 "
trackable_dict_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 58}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "BinaryAccuracy", "name": "binary_accuracy", "dtype": "float32", "config": {"name": "binary_accuracy", "dtype": "float32", "threshold": 0.5}, "shared_object_id": 45}
?"
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"?!
_tf_keras_metric?!{"class_name": "AUC", "name": "auc_2", "dtype": "float32", "config": {"name": "auc_2", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}, "shared_object_id": 46}
?
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "precision_2", "dtype": "float32", "config": {"name": "precision_2", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 47}
?
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Recall", "name": "recall_2", "dtype": "float32", "config": {"name": "recall_2", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 48}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
%:#3@2Adam/dense_0/kernel/m
:@2Adam/dense_0/bias/m
.:,@2"Adam/batch_normalization_7/gamma/m
-:+@2!Adam/batch_normalization_7/beta/m
%:#@@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
.:,@2"Adam/batch_normalization_8/gamma/m
-:+@2!Adam/batch_normalization_8/beta/m
%:#@@2Adam/dense_2/kernel/m
:@2Adam/dense_2/bias/m
.:,@2"Adam/batch_normalization_9/gamma/m
-:+@2!Adam/batch_normalization_9/beta/m
%:#@@2Adam/dense_3/kernel/m
:@2Adam/dense_3/bias/m
/:-@2#Adam/batch_normalization_10/gamma/m
.:,@2"Adam/batch_normalization_10/beta/m
):'@2Adam/predictions/kernel/m
#:!2Adam/predictions/bias/m
%:#3@2Adam/dense_0/kernel/v
:@2Adam/dense_0/bias/v
.:,@2"Adam/batch_normalization_7/gamma/v
-:+@2!Adam/batch_normalization_7/beta/v
%:#@@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
.:,@2"Adam/batch_normalization_8/gamma/v
-:+@2!Adam/batch_normalization_8/beta/v
%:#@@2Adam/dense_2/kernel/v
:@2Adam/dense_2/bias/v
.:,@2"Adam/batch_normalization_9/gamma/v
-:+@2!Adam/batch_normalization_9/beta/v
%:#@@2Adam/dense_3/kernel/v
:@2Adam/dense_3/bias/v
/:-@2#Adam/batch_normalization_10/gamma/v
.:,@2"Adam/batch_normalization_10/beta/v
):'@2Adam/predictions/kernel/v
#:!2Adam/predictions/bias/v
?2?
"__inference__wrapped_model_2253501?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *(?%
#? 
	particles?????????3
?2?
)__inference_model_4_layer_call_fn_2254465
)__inference_model_4_layer_call_fn_2255277
)__inference_model_4_layer_call_fn_2255343
)__inference_model_4_layer_call_fn_2254896?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_model_4_layer_call_and_return_conditional_losses_2255524
D__inference_model_4_layer_call_and_return_conditional_losses_2255761
D__inference_model_4_layer_call_and_return_conditional_losses_2255019
D__inference_model_4_layer_call_and_return_conditional_losses_2255142?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_0_layer_call_fn_2255770?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dense_0_layer_call_and_return_all_conditional_losses_2255781?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_7_layer_call_fn_2255794
7__inference_batch_normalization_7_layer_call_fn_2255807?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2255827
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2255861?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_1_layer_call_fn_2255870?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dense_1_layer_call_and_return_all_conditional_losses_2255881?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_8_layer_call_fn_2255894
7__inference_batch_normalization_8_layer_call_fn_2255907?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2255927
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2255961?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_2_layer_call_fn_2255970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dense_2_layer_call_and_return_all_conditional_losses_2255981?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_9_layer_call_fn_2255994
7__inference_batch_normalization_9_layer_call_fn_2256007?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2256027
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2256061?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_3_layer_call_fn_2256070?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dense_3_layer_call_and_return_all_conditional_losses_2256081?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_batch_normalization_10_layer_call_fn_2256094
8__inference_batch_normalization_10_layer_call_fn_2256107?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2256127
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2256161?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_predictions_layer_call_fn_2256170?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_predictions_layer_call_and_return_all_conditional_losses_2256181?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2255211	particles"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_dense_0_activity_regularizer_2253514?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
D__inference_dense_0_layer_call_and_return_conditional_losses_2256192?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_dense_1_activity_regularizer_2253689?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
D__inference_dense_1_layer_call_and_return_conditional_losses_2256203?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_dense_2_activity_regularizer_2253864?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
D__inference_dense_2_layer_call_and_return_conditional_losses_2256214?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_dense_3_activity_regularizer_2254039?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
D__inference_dense_3_layer_call_and_return_conditional_losses_2256225?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_predictions_activity_regularizer_2254214?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
H__inference_predictions_layer_call_and_return_conditional_losses_2256236?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_2253501?$!#")*302189B?A@GHQNPOVW2?/
(?%
#? 
	particles?????????3
? "9?6
4
predictions%?"
predictions??????????
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2256127bQNPO3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2256161bPQNO3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
8__inference_batch_normalization_10_layer_call_fn_2256094UQNPO3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
8__inference_batch_normalization_10_layer_call_fn_2256107UPQNO3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2255827b$!#"3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2255861b#$!"3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
7__inference_batch_normalization_7_layer_call_fn_2255794U$!#"3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
7__inference_batch_normalization_7_layer_call_fn_2255807U#$!"3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2255927b30213?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2255961b23013?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
7__inference_batch_normalization_8_layer_call_fn_2255894U30213?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
7__inference_batch_normalization_8_layer_call_fn_2255907U23013?0
)?&
 ?
inputs?????????@
p
? "??????????@?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2256027bB?A@3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
R__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2256061bAB?@3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
7__inference_batch_normalization_9_layer_call_fn_2255994UB?A@3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
7__inference_batch_normalization_9_layer_call_fn_2256007UAB?@3?0
)?&
 ?
inputs?????????@
p
? "??????????@Z
0__inference_dense_0_activity_regularizer_2253514&?
?
?	
x
? "? ?
H__inference_dense_0_layer_call_and_return_all_conditional_losses_2255781j/?,
%?"
 ?
inputs?????????3
? "3?0
?
0?????????@
?
?	
1/0 ?
D__inference_dense_0_layer_call_and_return_conditional_losses_2256192\/?,
%?"
 ?
inputs?????????3
? "%?"
?
0?????????@
? |
)__inference_dense_0_layer_call_fn_2255770O/?,
%?"
 ?
inputs?????????3
? "??????????@Z
0__inference_dense_1_activity_regularizer_2253689&?
?
?	
x
? "? ?
H__inference_dense_1_layer_call_and_return_all_conditional_losses_2255881j)*/?,
%?"
 ?
inputs?????????@
? "3?0
?
0?????????@
?
?	
1/0 ?
D__inference_dense_1_layer_call_and_return_conditional_losses_2256203\)*/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? |
)__inference_dense_1_layer_call_fn_2255870O)*/?,
%?"
 ?
inputs?????????@
? "??????????@Z
0__inference_dense_2_activity_regularizer_2253864&?
?
?	
x
? "? ?
H__inference_dense_2_layer_call_and_return_all_conditional_losses_2255981j89/?,
%?"
 ?
inputs?????????@
? "3?0
?
0?????????@
?
?	
1/0 ?
D__inference_dense_2_layer_call_and_return_conditional_losses_2256214\89/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? |
)__inference_dense_2_layer_call_fn_2255970O89/?,
%?"
 ?
inputs?????????@
? "??????????@Z
0__inference_dense_3_activity_regularizer_2254039&?
?
?	
x
? "? ?
H__inference_dense_3_layer_call_and_return_all_conditional_losses_2256081jGH/?,
%?"
 ?
inputs?????????@
? "3?0
?
0?????????@
?
?	
1/0 ?
D__inference_dense_3_layer_call_and_return_conditional_losses_2256225\GH/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? |
)__inference_dense_3_layer_call_fn_2256070OGH/?,
%?"
 ?
inputs?????????@
? "??????????@?
D__inference_model_4_layer_call_and_return_conditional_losses_2255019?$!#")*302189B?A@GHQNPOVW:?7
0?-
#? 
	particles?????????3
p 

 
? "k?h
?
0?????????
I?F
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 ?
D__inference_model_4_layer_call_and_return_conditional_losses_2255142?#$!")*230189AB?@GHPQNOVW:?7
0?-
#? 
	particles?????????3
p

 
? "k?h
?
0?????????
I?F
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 ?
D__inference_model_4_layer_call_and_return_conditional_losses_2255524?$!#")*302189B?A@GHQNPOVW7?4
-?*
 ?
inputs?????????3
p 

 
? "k?h
?
0?????????
I?F
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 ?
D__inference_model_4_layer_call_and_return_conditional_losses_2255761?#$!")*230189AB?@GHPQNOVW7?4
-?*
 ?
inputs?????????3
p

 
? "k?h
?
0?????????
I?F
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 ?
)__inference_model_4_layer_call_fn_2254465t$!#")*302189B?A@GHQNPOVW:?7
0?-
#? 
	particles?????????3
p 

 
? "???????????
)__inference_model_4_layer_call_fn_2254896t#$!")*230189AB?@GHPQNOVW:?7
0?-
#? 
	particles?????????3
p

 
? "???????????
)__inference_model_4_layer_call_fn_2255277q$!#")*302189B?A@GHQNPOVW7?4
-?*
 ?
inputs?????????3
p 

 
? "???????????
)__inference_model_4_layer_call_fn_2255343q#$!")*230189AB?@GHPQNOVW7?4
-?*
 ?
inputs?????????3
p

 
? "??????????^
4__inference_predictions_activity_regularizer_2254214&?
?
?	
x
? "? ?
L__inference_predictions_layer_call_and_return_all_conditional_losses_2256181jVW/?,
%?"
 ?
inputs?????????@
? "3?0
?
0?????????
?
?	
1/0 ?
H__inference_predictions_layer_call_and_return_conditional_losses_2256236\VW/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? ?
-__inference_predictions_layer_call_fn_2256170OVW/?,
%?"
 ?
inputs?????????@
? "???????????
%__inference_signature_wrapper_2255211?$!#")*302189B?A@GHQNPOVW??<
? 
5?2
0
	particles#? 
	particles?????????3"9?6
4
predictions%?"
predictions?????????