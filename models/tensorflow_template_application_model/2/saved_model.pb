��	
�5�5
9
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
�
ApplyAdagrad
var"T�
accum"T�
lr"T	
grad"T
out"T�"
Ttype:
2	"
use_lockingbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint�
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignAdd
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
F
	CountUpTo
ref"T�
output"T"
limitint"
Ttype:
2	
A
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint���������"
	containerstring "
shared_namestring �
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
:
Greater
x"T
y"T
z
"
Ttype:
2		
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
$

LogicalAnd
x

y

z
�


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
+
MatchingFiles
pattern
	filenames
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( �
�
QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint����������
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint����������
y
QueueEnqueueV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint����������
&
QueueSizeV2

handle
size�
Y
RandomShuffle

value"T
output"T"
seedint "
seed2int "	
Ttype�
�
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint���������"
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring �
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
J
ReaderReadV2
reader_handle
queue_handle
key	
value�
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
�
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
9
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
|
TFRecordReaderV2
reader_handle"
	containerstring "
shared_namestring "
compression_typestring �
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.4.02v1.4.0-rc1-11-g130a514��
�
(matching_filenames/MatchingFiles/patternConst*
dtype0*9
value0B. B(./data/cancer/cancer_train.csv.tfrecords*
_output_shapes
: 
�
 matching_filenames/MatchingFilesMatchingFiles(matching_filenames/MatchingFiles/pattern*#
_output_shapes
:���������
z
matching_filenames
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
�
matching_filenames/AssignAssignmatching_filenames matching_filenames/MatchingFiles*
validate_shape( *%
_class
loc:@matching_filenames*
use_locking(*
T0*#
_output_shapes
:���������
�
matching_filenames/readIdentitymatching_filenames*%
_class
loc:@matching_filenames*
T0*
_output_shapes
:
e
input_producer/SizeSizematching_filenames/read*
out_type0*
T0*
_output_shapes
: 
Z
input_producer/Greater/yConst*
dtype0*
value	B : *
_output_shapes
: 
q
input_producer/GreaterGreaterinput_producer/Sizeinput_producer/Greater/y*
T0*
_output_shapes
: 
�
input_producer/Assert/ConstConst*
dtype0*G
value>B< B6string_input_producer requires a non-null input tensor*
_output_shapes
: 
�
#input_producer/Assert/Assert/data_0Const*
dtype0*G
value>B< B6string_input_producer requires a non-null input tensor*
_output_shapes
: 
�
input_producer/Assert/AssertAssertinput_producer/Greater#input_producer/Assert/Assert/data_0*
	summarize*

T
2
~
input_producer/IdentityIdentitymatching_filenames/read^input_producer/Assert/Assert*
T0*
_output_shapes
:
�
input_producer/RandomShuffleRandomShuffleinput_producer/Identity*
seed2 *

seed *
T0*
_output_shapes
:
c
!input_producer/limit_epochs/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
�
"input_producer/limit_epochs/epochs
VariableV2*
dtype0	*
shape: *
	container *
shared_name *
_output_shapes
: 
�
)input_producer/limit_epochs/epochs/AssignAssign"input_producer/limit_epochs/epochs!input_producer/limit_epochs/Const*
validate_shape(*5
_class+
)'loc:@input_producer/limit_epochs/epochs*
use_locking(*
T0	*
_output_shapes
: 
�
'input_producer/limit_epochs/epochs/readIdentity"input_producer/limit_epochs/epochs*5
_class+
)'loc:@input_producer/limit_epochs/epochs*
T0	*
_output_shapes
: 
�
%input_producer/limit_epochs/CountUpTo	CountUpTo"input_producer/limit_epochs/epochs*5
_class+
)'loc:@input_producer/limit_epochs/epochs*
limit�*
T0	*
_output_shapes
: 
�
input_producer/limit_epochsIdentityinput_producer/RandomShuffle&^input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:
�
input_producerFIFOQueueV2*
capacity *
component_types
2*
_output_shapes
: *
shapes
: *
	container *
shared_name 
�
)input_producer/input_producer_EnqueueManyQueueEnqueueManyV2input_producerinput_producer/limit_epochs*

timeout_ms���������*
Tcomponents
2
b
#input_producer/input_producer_CloseQueueCloseV2input_producer*
cancel_pending_enqueues( 
d
%input_producer/input_producer_Close_1QueueCloseV2input_producer*
cancel_pending_enqueues(
Y
"input_producer/input_producer_SizeQueueSizeV2input_producer*
_output_shapes
: 
r
input_producer/ToFloatCast"input_producer/input_producer_Size*

DstT0*

SrcT0*
_output_shapes
: 
Y
input_producer/mul/yConst*
dtype0*
valueB
 *   =*
_output_shapes
: 
h
input_producer/mulMulinput_producer/ToFloatinput_producer/mul/y*
T0*
_output_shapes
: 
�
'input_producer/fraction_of_32_full/tagsConst*
dtype0*3
value*B( B"input_producer/fraction_of_32_full*
_output_shapes
: 
�
"input_producer/fraction_of_32_fullScalarSummary'input_producer/fraction_of_32_full/tagsinput_producer/mul*
T0*
_output_shapes
: 
x
TFRecordReaderV2TFRecordReaderV2*
	container *
shared_name *
compression_type *
_output_shapes
: 
X
ReaderReadV2ReaderReadV2TFRecordReaderV2input_producer*
_output_shapes
: : 
c
!ParseSingleExample/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
ParseSingleExample/ExpandDims
ExpandDimsReaderReadV2:1!ParseSingleExample/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
h
%ParseSingleExample/ParseExample/ConstConst*
dtype0*
valueB *
_output_shapes
: 
j
'ParseSingleExample/ParseExample/Const_1Const*
dtype0*
valueB *
_output_shapes
: 
u
2ParseSingleExample/ParseExample/ParseExample/namesConst*
dtype0*
valueB *
_output_shapes
: 
�
9ParseSingleExample/ParseExample/ParseExample/dense_keys_0Const*
dtype0*
valueB Bfeatures*
_output_shapes
: 

9ParseSingleExample/ParseExample/ParseExample/dense_keys_1Const*
dtype0*
valueB Blabel*
_output_shapes
: 
�
,ParseSingleExample/ParseExample/ParseExampleParseExampleParseSingleExample/ExpandDims2ParseSingleExample/ParseExample/ParseExample/names9ParseSingleExample/ParseExample/ParseExample/dense_keys_09ParseSingleExample/ParseExample/ParseExample/dense_keys_1%ParseSingleExample/ParseExample/Const'ParseSingleExample/ParseExample/Const_1*
dense_shapes

:	: *$
_output_shapes
:	:*
Ndense*
sparse_types
 *
Tdense
2*
Nsparse 
�
#ParseSingleExample/Squeeze_featuresSqueeze,ParseSingleExample/ParseExample/ParseExample*
squeeze_dims
 *
T0*
_output_shapes
:	
�
 ParseSingleExample/Squeeze_labelSqueeze.ParseSingleExample/ParseExample/ParseExample:1*
squeeze_dims
 *
T0*
_output_shapes
: 
U
shuffle_batch/ConstConst*
dtype0
*
value	B
 Z*
_output_shapes
: 
�
"shuffle_batch/random_shuffle_queueRandomShuffleQueueV2*
capacity�*
component_types
2*
_output_shapes
: *
min_after_dequeued*
shapes

: :	*
seed2 *

seed *
	container *
shared_name 
�
*shuffle_batch/random_shuffle_queue_enqueueQueueEnqueueV2"shuffle_batch/random_shuffle_queue ParseSingleExample/Squeeze_label#ParseSingleExample/Squeeze_features*

timeout_ms���������*
Tcomponents
2
{
(shuffle_batch/random_shuffle_queue_CloseQueueCloseV2"shuffle_batch/random_shuffle_queue*
cancel_pending_enqueues( 
}
*shuffle_batch/random_shuffle_queue_Close_1QueueCloseV2"shuffle_batch/random_shuffle_queue*
cancel_pending_enqueues(
r
'shuffle_batch/random_shuffle_queue_SizeQueueSizeV2"shuffle_batch/random_shuffle_queue*
_output_shapes
: 
U
shuffle_batch/sub/yConst*
dtype0*
value	B :d*
_output_shapes
: 
w
shuffle_batch/subSub'shuffle_batch/random_shuffle_queue_Sizeshuffle_batch/sub/y*
T0*
_output_shapes
: 
Y
shuffle_batch/Maximum/xConst*
dtype0*
value	B : *
_output_shapes
: 
m
shuffle_batch/MaximumMaximumshuffle_batch/Maximum/xshuffle_batch/sub*
T0*
_output_shapes
: 
d
shuffle_batch/ToFloatCastshuffle_batch/Maximum*

DstT0*

SrcT0*
_output_shapes
: 
X
shuffle_batch/mul/yConst*
dtype0*
valueB
 *  �:*
_output_shapes
: 
e
shuffle_batch/mulMulshuffle_batch/ToFloatshuffle_batch/mul/y*
T0*
_output_shapes
: 
�
1shuffle_batch/fraction_over_100_of_1024_full/tagsConst*
dtype0*=
value4B2 B,shuffle_batch/fraction_over_100_of_1024_full*
_output_shapes
: 
�
,shuffle_batch/fraction_over_100_of_1024_fullScalarSummary1shuffle_batch/fraction_over_100_of_1024_full/tagsshuffle_batch/mul*
T0*
_output_shapes
: 
R
shuffle_batch/nConst*
dtype0*
value
B :�*
_output_shapes
: 
�
shuffle_batchQueueDequeueManyV2"shuffle_batch/random_shuffle_queueshuffle_batch/n*

timeout_ms���������*
component_types
2*&
_output_shapes
:�:	�	
�
*matching_filenames_1/MatchingFiles/patternConst*
dtype0*8
value/B- B'./data/cancer/cancer_test.csv.tfrecords*
_output_shapes
: 
�
"matching_filenames_1/MatchingFilesMatchingFiles*matching_filenames_1/MatchingFiles/pattern*#
_output_shapes
:���������
|
matching_filenames_1
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
�
matching_filenames_1/AssignAssignmatching_filenames_1"matching_filenames_1/MatchingFiles*
validate_shape( *'
_class
loc:@matching_filenames_1*
use_locking(*
T0*#
_output_shapes
:���������
�
matching_filenames_1/readIdentitymatching_filenames_1*'
_class
loc:@matching_filenames_1*
T0*
_output_shapes
:
i
input_producer_1/SizeSizematching_filenames_1/read*
out_type0*
T0*
_output_shapes
: 
\
input_producer_1/Greater/yConst*
dtype0*
value	B : *
_output_shapes
: 
w
input_producer_1/GreaterGreaterinput_producer_1/Sizeinput_producer_1/Greater/y*
T0*
_output_shapes
: 
�
input_producer_1/Assert/ConstConst*
dtype0*G
value>B< B6string_input_producer requires a non-null input tensor*
_output_shapes
: 
�
%input_producer_1/Assert/Assert/data_0Const*
dtype0*G
value>B< B6string_input_producer requires a non-null input tensor*
_output_shapes
: 
�
input_producer_1/Assert/AssertAssertinput_producer_1/Greater%input_producer_1/Assert/Assert/data_0*
	summarize*

T
2
�
input_producer_1/IdentityIdentitymatching_filenames_1/read^input_producer_1/Assert/Assert*
T0*
_output_shapes
:
�
input_producer_1/RandomShuffleRandomShuffleinput_producer_1/Identity*
seed2 *

seed *
T0*
_output_shapes
:
e
#input_producer_1/limit_epochs/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
�
$input_producer_1/limit_epochs/epochs
VariableV2*
dtype0	*
shape: *
	container *
shared_name *
_output_shapes
: 
�
+input_producer_1/limit_epochs/epochs/AssignAssign$input_producer_1/limit_epochs/epochs#input_producer_1/limit_epochs/Const*
validate_shape(*7
_class-
+)loc:@input_producer_1/limit_epochs/epochs*
use_locking(*
T0	*
_output_shapes
: 
�
)input_producer_1/limit_epochs/epochs/readIdentity$input_producer_1/limit_epochs/epochs*7
_class-
+)loc:@input_producer_1/limit_epochs/epochs*
T0	*
_output_shapes
: 
�
'input_producer_1/limit_epochs/CountUpTo	CountUpTo$input_producer_1/limit_epochs/epochs*7
_class-
+)loc:@input_producer_1/limit_epochs/epochs*
limit�*
T0	*
_output_shapes
: 
�
input_producer_1/limit_epochsIdentityinput_producer_1/RandomShuffle(^input_producer_1/limit_epochs/CountUpTo*
T0*
_output_shapes
:
�
input_producer_1FIFOQueueV2*
capacity *
component_types
2*
_output_shapes
: *
shapes
: *
	container *
shared_name 
�
-input_producer_1/input_producer_1_EnqueueManyQueueEnqueueManyV2input_producer_1input_producer_1/limit_epochs*

timeout_ms���������*
Tcomponents
2
h
'input_producer_1/input_producer_1_CloseQueueCloseV2input_producer_1*
cancel_pending_enqueues( 
j
)input_producer_1/input_producer_1_Close_1QueueCloseV2input_producer_1*
cancel_pending_enqueues(
_
&input_producer_1/input_producer_1_SizeQueueSizeV2input_producer_1*
_output_shapes
: 
x
input_producer_1/ToFloatCast&input_producer_1/input_producer_1_Size*

DstT0*

SrcT0*
_output_shapes
: 
[
input_producer_1/mul/yConst*
dtype0*
valueB
 *   =*
_output_shapes
: 
n
input_producer_1/mulMulinput_producer_1/ToFloatinput_producer_1/mul/y*
T0*
_output_shapes
: 
�
)input_producer_1/fraction_of_32_full/tagsConst*
dtype0*5
value,B* B$input_producer_1/fraction_of_32_full*
_output_shapes
: 
�
$input_producer_1/fraction_of_32_fullScalarSummary)input_producer_1/fraction_of_32_full/tagsinput_producer_1/mul*
T0*
_output_shapes
: 
z
TFRecordReaderV2_1TFRecordReaderV2*
	container *
shared_name *
compression_type *
_output_shapes
: 
^
ReaderReadV2_1ReaderReadV2TFRecordReaderV2_1input_producer_1*
_output_shapes
: : 
e
#ParseSingleExample_1/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
ParseSingleExample_1/ExpandDims
ExpandDimsReaderReadV2_1:1#ParseSingleExample_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
j
'ParseSingleExample_1/ParseExample/ConstConst*
dtype0*
valueB *
_output_shapes
: 
l
)ParseSingleExample_1/ParseExample/Const_1Const*
dtype0*
valueB *
_output_shapes
: 
w
4ParseSingleExample_1/ParseExample/ParseExample/namesConst*
dtype0*
valueB *
_output_shapes
: 
�
;ParseSingleExample_1/ParseExample/ParseExample/dense_keys_0Const*
dtype0*
valueB Bfeatures*
_output_shapes
: 
�
;ParseSingleExample_1/ParseExample/ParseExample/dense_keys_1Const*
dtype0*
valueB Blabel*
_output_shapes
: 
�
.ParseSingleExample_1/ParseExample/ParseExampleParseExampleParseSingleExample_1/ExpandDims4ParseSingleExample_1/ParseExample/ParseExample/names;ParseSingleExample_1/ParseExample/ParseExample/dense_keys_0;ParseSingleExample_1/ParseExample/ParseExample/dense_keys_1'ParseSingleExample_1/ParseExample/Const)ParseSingleExample_1/ParseExample/Const_1*
dense_shapes

:	: *$
_output_shapes
:	:*
Ndense*
sparse_types
 *
Tdense
2*
Nsparse 
�
%ParseSingleExample_1/Squeeze_featuresSqueeze.ParseSingleExample_1/ParseExample/ParseExample*
squeeze_dims
 *
T0*
_output_shapes
:	
�
"ParseSingleExample_1/Squeeze_labelSqueeze0ParseSingleExample_1/ParseExample/ParseExample:1*
squeeze_dims
 *
T0*
_output_shapes
: 
W
shuffle_batch_1/ConstConst*
dtype0
*
value	B
 Z*
_output_shapes
: 
�
$shuffle_batch_1/random_shuffle_queueRandomShuffleQueueV2*
capacity�*
component_types
2*
_output_shapes
: *
min_after_dequeued*
shapes

: :	*
seed2 *

seed *
	container *
shared_name 
�
,shuffle_batch_1/random_shuffle_queue_enqueueQueueEnqueueV2$shuffle_batch_1/random_shuffle_queue"ParseSingleExample_1/Squeeze_label%ParseSingleExample_1/Squeeze_features*

timeout_ms���������*
Tcomponents
2

*shuffle_batch_1/random_shuffle_queue_CloseQueueCloseV2$shuffle_batch_1/random_shuffle_queue*
cancel_pending_enqueues( 
�
,shuffle_batch_1/random_shuffle_queue_Close_1QueueCloseV2$shuffle_batch_1/random_shuffle_queue*
cancel_pending_enqueues(
v
)shuffle_batch_1/random_shuffle_queue_SizeQueueSizeV2$shuffle_batch_1/random_shuffle_queue*
_output_shapes
: 
W
shuffle_batch_1/sub/yConst*
dtype0*
value	B :d*
_output_shapes
: 
}
shuffle_batch_1/subSub)shuffle_batch_1/random_shuffle_queue_Sizeshuffle_batch_1/sub/y*
T0*
_output_shapes
: 
[
shuffle_batch_1/Maximum/xConst*
dtype0*
value	B : *
_output_shapes
: 
s
shuffle_batch_1/MaximumMaximumshuffle_batch_1/Maximum/xshuffle_batch_1/sub*
T0*
_output_shapes
: 
h
shuffle_batch_1/ToFloatCastshuffle_batch_1/Maximum*

DstT0*

SrcT0*
_output_shapes
: 
Z
shuffle_batch_1/mul/yConst*
dtype0*
valueB
 *  �:*
_output_shapes
: 
k
shuffle_batch_1/mulMulshuffle_batch_1/ToFloatshuffle_batch_1/mul/y*
T0*
_output_shapes
: 
�
3shuffle_batch_1/fraction_over_100_of_1024_full/tagsConst*
dtype0*?
value6B4 B.shuffle_batch_1/fraction_over_100_of_1024_full*
_output_shapes
: 
�
.shuffle_batch_1/fraction_over_100_of_1024_fullScalarSummary3shuffle_batch_1/fraction_over_100_of_1024_full/tagsshuffle_batch_1/mul*
T0*
_output_shapes
: 
T
shuffle_batch_1/nConst*
dtype0*
value
B :�*
_output_shapes
: 
�
shuffle_batch_1QueueDequeueManyV2$shuffle_batch_1/random_shuffle_queueshuffle_batch_1/n*

timeout_ms���������*
component_types
2*&
_output_shapes
:�:	�	
�
-input/weights/Initializer/random_normal/shapeConst*
dtype0* 
_class
loc:@input/weights*
valueB"	   �   *
_output_shapes
:
�
,input/weights/Initializer/random_normal/meanConst*
dtype0* 
_class
loc:@input/weights*
valueB
 *    *
_output_shapes
: 
�
.input/weights/Initializer/random_normal/stddevConst*
dtype0* 
_class
loc:@input/weights*
valueB
 *  �?*
_output_shapes
: 
�
<input/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-input/weights/Initializer/random_normal/shape*
_output_shapes
:		�*
dtype0*
seed2 *

seed *
T0* 
_class
loc:@input/weights
�
+input/weights/Initializer/random_normal/mulMul<input/weights/Initializer/random_normal/RandomStandardNormal.input/weights/Initializer/random_normal/stddev* 
_class
loc:@input/weights*
T0*
_output_shapes
:		�
�
'input/weights/Initializer/random_normalAdd+input/weights/Initializer/random_normal/mul,input/weights/Initializer/random_normal/mean* 
_class
loc:@input/weights*
T0*
_output_shapes
:		�
�
input/weights
VariableV2*
	container *
_output_shapes
:		�*
dtype0*
shape:		�* 
_class
loc:@input/weights*
shared_name 
�
input/weights/AssignAssigninput/weights'input/weights/Initializer/random_normal*
validate_shape(* 
_class
loc:@input/weights*
use_locking(*
T0*
_output_shapes
:		�
y
input/weights/readIdentityinput/weights* 
_class
loc:@input/weights*
T0*
_output_shapes
:		�
�
,input/biases/Initializer/random_normal/shapeConst*
dtype0*
_class
loc:@input/biases*
valueB:�*
_output_shapes
:
�
+input/biases/Initializer/random_normal/meanConst*
dtype0*
_class
loc:@input/biases*
valueB
 *    *
_output_shapes
: 
�
-input/biases/Initializer/random_normal/stddevConst*
dtype0*
_class
loc:@input/biases*
valueB
 *  �?*
_output_shapes
: 
�
;input/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal,input/biases/Initializer/random_normal/shape*
_output_shapes	
:�*
dtype0*
seed2 *

seed *
T0*
_class
loc:@input/biases
�
*input/biases/Initializer/random_normal/mulMul;input/biases/Initializer/random_normal/RandomStandardNormal-input/biases/Initializer/random_normal/stddev*
_class
loc:@input/biases*
T0*
_output_shapes	
:�
�
&input/biases/Initializer/random_normalAdd*input/biases/Initializer/random_normal/mul+input/biases/Initializer/random_normal/mean*
_class
loc:@input/biases*
T0*
_output_shapes	
:�
�
input/biases
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*
_class
loc:@input/biases*
shared_name 
�
input/biases/AssignAssigninput/biases&input/biases/Initializer/random_normal*
validate_shape(*
_class
loc:@input/biases*
use_locking(*
T0*
_output_shapes	
:�
r
input/biases/readIdentityinput/biases*
_class
loc:@input/biases*
T0*
_output_shapes	
:�
�
input/MatMulMatMulshuffle_batch:1input/weights/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:
��
\
	input/addAddinput/MatMulinput/biases/read*
T0* 
_output_shapes
:
��
H

input/ReluRelu	input/add*
T0* 
_output_shapes
:
��
�
.layer0/weights/Initializer/random_normal/shapeConst*
dtype0*!
_class
loc:@layer0/weights*
valueB"�       *
_output_shapes
:
�
-layer0/weights/Initializer/random_normal/meanConst*
dtype0*!
_class
loc:@layer0/weights*
valueB
 *    *
_output_shapes
: 
�
/layer0/weights/Initializer/random_normal/stddevConst*
dtype0*!
_class
loc:@layer0/weights*
valueB
 *  �?*
_output_shapes
: 
�
=layer0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.layer0/weights/Initializer/random_normal/shape*
_output_shapes
:	� *
dtype0*
seed2 *

seed *
T0*!
_class
loc:@layer0/weights
�
,layer0/weights/Initializer/random_normal/mulMul=layer0/weights/Initializer/random_normal/RandomStandardNormal/layer0/weights/Initializer/random_normal/stddev*!
_class
loc:@layer0/weights*
T0*
_output_shapes
:	� 
�
(layer0/weights/Initializer/random_normalAdd,layer0/weights/Initializer/random_normal/mul-layer0/weights/Initializer/random_normal/mean*!
_class
loc:@layer0/weights*
T0*
_output_shapes
:	� 
�
layer0/weights
VariableV2*
	container *
_output_shapes
:	� *
dtype0*
shape:	� *!
_class
loc:@layer0/weights*
shared_name 
�
layer0/weights/AssignAssignlayer0/weights(layer0/weights/Initializer/random_normal*
validate_shape(*!
_class
loc:@layer0/weights*
use_locking(*
T0*
_output_shapes
:	� 
|
layer0/weights/readIdentitylayer0/weights*!
_class
loc:@layer0/weights*
T0*
_output_shapes
:	� 
�
-layer0/biases/Initializer/random_normal/shapeConst*
dtype0* 
_class
loc:@layer0/biases*
valueB: *
_output_shapes
:
�
,layer0/biases/Initializer/random_normal/meanConst*
dtype0* 
_class
loc:@layer0/biases*
valueB
 *    *
_output_shapes
: 
�
.layer0/biases/Initializer/random_normal/stddevConst*
dtype0* 
_class
loc:@layer0/biases*
valueB
 *  �?*
_output_shapes
: 
�
<layer0/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-layer0/biases/Initializer/random_normal/shape*
_output_shapes
: *
dtype0*
seed2 *

seed *
T0* 
_class
loc:@layer0/biases
�
+layer0/biases/Initializer/random_normal/mulMul<layer0/biases/Initializer/random_normal/RandomStandardNormal.layer0/biases/Initializer/random_normal/stddev* 
_class
loc:@layer0/biases*
T0*
_output_shapes
: 
�
'layer0/biases/Initializer/random_normalAdd+layer0/biases/Initializer/random_normal/mul,layer0/biases/Initializer/random_normal/mean* 
_class
loc:@layer0/biases*
T0*
_output_shapes
: 
�
layer0/biases
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@layer0/biases*
shared_name 
�
layer0/biases/AssignAssignlayer0/biases'layer0/biases/Initializer/random_normal*
validate_shape(* 
_class
loc:@layer0/biases*
use_locking(*
T0*
_output_shapes
: 
t
layer0/biases/readIdentitylayer0/biases* 
_class
loc:@layer0/biases*
T0*
_output_shapes
: 
�
layer0/MatMulMatMul
input/Relulayer0/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	� 
^

layer0/addAddlayer0/MatMullayer0/biases/read*
T0*
_output_shapes
:	� 
I
layer0/ReluRelu
layer0/add*
T0*
_output_shapes
:	� 
�
.layer1/weights/Initializer/random_normal/shapeConst*
dtype0*!
_class
loc:@layer1/weights*
valueB"       *
_output_shapes
:
�
-layer1/weights/Initializer/random_normal/meanConst*
dtype0*!
_class
loc:@layer1/weights*
valueB
 *    *
_output_shapes
: 
�
/layer1/weights/Initializer/random_normal/stddevConst*
dtype0*!
_class
loc:@layer1/weights*
valueB
 *  �?*
_output_shapes
: 
�
=layer1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.layer1/weights/Initializer/random_normal/shape*
_output_shapes

: *
dtype0*
seed2 *

seed *
T0*!
_class
loc:@layer1/weights
�
,layer1/weights/Initializer/random_normal/mulMul=layer1/weights/Initializer/random_normal/RandomStandardNormal/layer1/weights/Initializer/random_normal/stddev*!
_class
loc:@layer1/weights*
T0*
_output_shapes

: 
�
(layer1/weights/Initializer/random_normalAdd,layer1/weights/Initializer/random_normal/mul-layer1/weights/Initializer/random_normal/mean*!
_class
loc:@layer1/weights*
T0*
_output_shapes

: 
�
layer1/weights
VariableV2*
	container *
_output_shapes

: *
dtype0*
shape
: *!
_class
loc:@layer1/weights*
shared_name 
�
layer1/weights/AssignAssignlayer1/weights(layer1/weights/Initializer/random_normal*
validate_shape(*!
_class
loc:@layer1/weights*
use_locking(*
T0*
_output_shapes

: 
{
layer1/weights/readIdentitylayer1/weights*!
_class
loc:@layer1/weights*
T0*
_output_shapes

: 
�
-layer1/biases/Initializer/random_normal/shapeConst*
dtype0* 
_class
loc:@layer1/biases*
valueB:*
_output_shapes
:
�
,layer1/biases/Initializer/random_normal/meanConst*
dtype0* 
_class
loc:@layer1/biases*
valueB
 *    *
_output_shapes
: 
�
.layer1/biases/Initializer/random_normal/stddevConst*
dtype0* 
_class
loc:@layer1/biases*
valueB
 *  �?*
_output_shapes
: 
�
<layer1/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-layer1/biases/Initializer/random_normal/shape*
_output_shapes
:*
dtype0*
seed2 *

seed *
T0* 
_class
loc:@layer1/biases
�
+layer1/biases/Initializer/random_normal/mulMul<layer1/biases/Initializer/random_normal/RandomStandardNormal.layer1/biases/Initializer/random_normal/stddev* 
_class
loc:@layer1/biases*
T0*
_output_shapes
:
�
'layer1/biases/Initializer/random_normalAdd+layer1/biases/Initializer/random_normal/mul,layer1/biases/Initializer/random_normal/mean* 
_class
loc:@layer1/biases*
T0*
_output_shapes
:
�
layer1/biases
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:* 
_class
loc:@layer1/biases*
shared_name 
�
layer1/biases/AssignAssignlayer1/biases'layer1/biases/Initializer/random_normal*
validate_shape(* 
_class
loc:@layer1/biases*
use_locking(*
T0*
_output_shapes
:
t
layer1/biases/readIdentitylayer1/biases* 
_class
loc:@layer1/biases*
T0*
_output_shapes
:
�
layer1/MatMulMatMullayer0/Relulayer1/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	�
^

layer1/addAddlayer1/MatMullayer1/biases/read*
T0*
_output_shapes
:	�
I
layer1/ReluRelu
layer1/add*
T0*
_output_shapes
:	�
�
.output/weights/Initializer/random_normal/shapeConst*
dtype0*!
_class
loc:@output/weights*
valueB"      *
_output_shapes
:
�
-output/weights/Initializer/random_normal/meanConst*
dtype0*!
_class
loc:@output/weights*
valueB
 *    *
_output_shapes
: 
�
/output/weights/Initializer/random_normal/stddevConst*
dtype0*!
_class
loc:@output/weights*
valueB
 *  �?*
_output_shapes
: 
�
=output/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.output/weights/Initializer/random_normal/shape*
_output_shapes

:*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@output/weights
�
,output/weights/Initializer/random_normal/mulMul=output/weights/Initializer/random_normal/RandomStandardNormal/output/weights/Initializer/random_normal/stddev*!
_class
loc:@output/weights*
T0*
_output_shapes

:
�
(output/weights/Initializer/random_normalAdd,output/weights/Initializer/random_normal/mul-output/weights/Initializer/random_normal/mean*!
_class
loc:@output/weights*
T0*
_output_shapes

:
�
output/weights
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*!
_class
loc:@output/weights*
shared_name 
�
output/weights/AssignAssignoutput/weights(output/weights/Initializer/random_normal*
validate_shape(*!
_class
loc:@output/weights*
use_locking(*
T0*
_output_shapes

:
{
output/weights/readIdentityoutput/weights*!
_class
loc:@output/weights*
T0*
_output_shapes

:
�
-output/biases/Initializer/random_normal/shapeConst*
dtype0* 
_class
loc:@output/biases*
valueB:*
_output_shapes
:
�
,output/biases/Initializer/random_normal/meanConst*
dtype0* 
_class
loc:@output/biases*
valueB
 *    *
_output_shapes
: 
�
.output/biases/Initializer/random_normal/stddevConst*
dtype0* 
_class
loc:@output/biases*
valueB
 *  �?*
_output_shapes
: 
�
<output/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-output/biases/Initializer/random_normal/shape*
_output_shapes
:*
dtype0*
seed2 *

seed *
T0* 
_class
loc:@output/biases
�
+output/biases/Initializer/random_normal/mulMul<output/biases/Initializer/random_normal/RandomStandardNormal.output/biases/Initializer/random_normal/stddev* 
_class
loc:@output/biases*
T0*
_output_shapes
:
�
'output/biases/Initializer/random_normalAdd+output/biases/Initializer/random_normal/mul,output/biases/Initializer/random_normal/mean* 
_class
loc:@output/biases*
T0*
_output_shapes
:
�
output/biases
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:* 
_class
loc:@output/biases*
shared_name 
�
output/biases/AssignAssignoutput/biases'output/biases/Initializer/random_normal*
validate_shape(* 
_class
loc:@output/biases*
use_locking(*
T0*
_output_shapes
:
t
output/biases/readIdentityoutput/biases* 
_class
loc:@output/biases*
T0*
_output_shapes
:
�
output/MatMulMatMullayer1/Reluoutput/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	�
^

output/addAddoutput/MatMuloutput/biases/read*
T0*
_output_shapes
:	�
S
ToInt64Castshuffle_batch*

DstT0	*

SrcT0*
_output_shapes	
:�
t
)SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
valueB:�*
_output_shapes
:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits
output/addToInt64*
T0*
Tlabels0	*&
_output_shapes
:�:	�
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
o
global_step
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
T
gradients/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/loss_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
�
gradients/loss_grad/ReshapeReshapegradients/Fill!gradients/loss_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
m
"gradients/loss_grad/Tile/multiplesConst*
dtype0*
valueB:�*
_output_shapes
:
�
gradients/loss_grad/TileTilegradients/loss_grad/Reshape"gradients/loss_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes	
:�
d
gradients/loss_grad/ShapeConst*
dtype0*
valueB:�*
_output_shapes
:
^
gradients/loss_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
�
gradients/loss_grad/ConstConst*
dtype0*,
_class"
 loc:@gradients/loss_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/loss_grad/ProdProdgradients/loss_grad/Shapegradients/loss_grad/Const*
_output_shapes
: *,
_class"
 loc:@gradients/loss_grad/Shape*
T0*
	keep_dims( *

Tidx0
�
gradients/loss_grad/Const_1Const*
dtype0*,
_class"
 loc:@gradients/loss_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_1gradients/loss_grad/Const_1*
_output_shapes
: *,
_class"
 loc:@gradients/loss_grad/Shape*
T0*
	keep_dims( *

Tidx0
�
gradients/loss_grad/Maximum/yConst*
dtype0*,
_class"
 loc:@gradients/loss_grad/Shape*
value	B :*
_output_shapes
: 
�
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*,
_class"
 loc:@gradients/loss_grad/Shape*
T0*
_output_shapes
: 
�
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*,
_class"
 loc:@gradients/loss_grad/Shape*
T0*
_output_shapes
: 
n
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
�
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0*
_output_shapes	
:�
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes
:	�
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes
:	�
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/loss_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	�
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes
:	�
p
gradients/output/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
k
!gradients/output/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
�
/gradients/output/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/output/add_grad/Shape!gradients/output/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/output/add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul/gradients/output/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
!gradients/output/add_grad/ReshapeReshapegradients/output/add_grad/Sumgradients/output/add_grad/Shape*
_output_shapes
:	�*
Tshape0*
T0
�
gradients/output/add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul1gradients/output/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
#gradients/output/add_grad/Reshape_1Reshapegradients/output/add_grad/Sum_1!gradients/output/add_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
|
*gradients/output/add_grad/tuple/group_depsNoOp"^gradients/output/add_grad/Reshape$^gradients/output/add_grad/Reshape_1
�
2gradients/output/add_grad/tuple/control_dependencyIdentity!gradients/output/add_grad/Reshape+^gradients/output/add_grad/tuple/group_deps*4
_class*
(&loc:@gradients/output/add_grad/Reshape*
T0*
_output_shapes
:	�
�
4gradients/output/add_grad/tuple/control_dependency_1Identity#gradients/output/add_grad/Reshape_1+^gradients/output/add_grad/tuple/group_deps*6
_class,
*(loc:@gradients/output/add_grad/Reshape_1*
T0*
_output_shapes
:
�
#gradients/output/MatMul_grad/MatMulMatMul2gradients/output/add_grad/tuple/control_dependencyoutput/weights/read*
transpose_b(*
transpose_a( *
T0*
_output_shapes
:	�
�
%gradients/output/MatMul_grad/MatMul_1MatMullayer1/Relu2gradients/output/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes

:
�
-gradients/output/MatMul_grad/tuple/group_depsNoOp$^gradients/output/MatMul_grad/MatMul&^gradients/output/MatMul_grad/MatMul_1
�
5gradients/output/MatMul_grad/tuple/control_dependencyIdentity#gradients/output/MatMul_grad/MatMul.^gradients/output/MatMul_grad/tuple/group_deps*6
_class,
*(loc:@gradients/output/MatMul_grad/MatMul*
T0*
_output_shapes
:	�
�
7gradients/output/MatMul_grad/tuple/control_dependency_1Identity%gradients/output/MatMul_grad/MatMul_1.^gradients/output/MatMul_grad/tuple/group_deps*8
_class.
,*loc:@gradients/output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
#gradients/layer1/Relu_grad/ReluGradReluGrad5gradients/output/MatMul_grad/tuple/control_dependencylayer1/Relu*
T0*
_output_shapes
:	�
p
gradients/layer1/add_grad/ShapeConst*
dtype0*
valueB"      *
_output_shapes
:
k
!gradients/layer1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
�
/gradients/layer1/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/layer1/add_grad/Shape!gradients/layer1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/layer1/add_grad/SumSum#gradients/layer1/Relu_grad/ReluGrad/gradients/layer1/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
!gradients/layer1/add_grad/ReshapeReshapegradients/layer1/add_grad/Sumgradients/layer1/add_grad/Shape*
_output_shapes
:	�*
Tshape0*
T0
�
gradients/layer1/add_grad/Sum_1Sum#gradients/layer1/Relu_grad/ReluGrad1gradients/layer1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
#gradients/layer1/add_grad/Reshape_1Reshapegradients/layer1/add_grad/Sum_1!gradients/layer1/add_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
|
*gradients/layer1/add_grad/tuple/group_depsNoOp"^gradients/layer1/add_grad/Reshape$^gradients/layer1/add_grad/Reshape_1
�
2gradients/layer1/add_grad/tuple/control_dependencyIdentity!gradients/layer1/add_grad/Reshape+^gradients/layer1/add_grad/tuple/group_deps*4
_class*
(&loc:@gradients/layer1/add_grad/Reshape*
T0*
_output_shapes
:	�
�
4gradients/layer1/add_grad/tuple/control_dependency_1Identity#gradients/layer1/add_grad/Reshape_1+^gradients/layer1/add_grad/tuple/group_deps*6
_class,
*(loc:@gradients/layer1/add_grad/Reshape_1*
T0*
_output_shapes
:
�
#gradients/layer1/MatMul_grad/MatMulMatMul2gradients/layer1/add_grad/tuple/control_dependencylayer1/weights/read*
transpose_b(*
transpose_a( *
T0*
_output_shapes
:	� 
�
%gradients/layer1/MatMul_grad/MatMul_1MatMullayer0/Relu2gradients/layer1/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes

: 
�
-gradients/layer1/MatMul_grad/tuple/group_depsNoOp$^gradients/layer1/MatMul_grad/MatMul&^gradients/layer1/MatMul_grad/MatMul_1
�
5gradients/layer1/MatMul_grad/tuple/control_dependencyIdentity#gradients/layer1/MatMul_grad/MatMul.^gradients/layer1/MatMul_grad/tuple/group_deps*6
_class,
*(loc:@gradients/layer1/MatMul_grad/MatMul*
T0*
_output_shapes
:	� 
�
7gradients/layer1/MatMul_grad/tuple/control_dependency_1Identity%gradients/layer1/MatMul_grad/MatMul_1.^gradients/layer1/MatMul_grad/tuple/group_deps*8
_class.
,*loc:@gradients/layer1/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
�
#gradients/layer0/Relu_grad/ReluGradReluGrad5gradients/layer1/MatMul_grad/tuple/control_dependencylayer0/Relu*
T0*
_output_shapes
:	� 
p
gradients/layer0/add_grad/ShapeConst*
dtype0*
valueB"       *
_output_shapes
:
k
!gradients/layer0/add_grad/Shape_1Const*
dtype0*
valueB: *
_output_shapes
:
�
/gradients/layer0/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/layer0/add_grad/Shape!gradients/layer0/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/layer0/add_grad/SumSum#gradients/layer0/Relu_grad/ReluGrad/gradients/layer0/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
!gradients/layer0/add_grad/ReshapeReshapegradients/layer0/add_grad/Sumgradients/layer0/add_grad/Shape*
_output_shapes
:	� *
Tshape0*
T0
�
gradients/layer0/add_grad/Sum_1Sum#gradients/layer0/Relu_grad/ReluGrad1gradients/layer0/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
#gradients/layer0/add_grad/Reshape_1Reshapegradients/layer0/add_grad/Sum_1!gradients/layer0/add_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
|
*gradients/layer0/add_grad/tuple/group_depsNoOp"^gradients/layer0/add_grad/Reshape$^gradients/layer0/add_grad/Reshape_1
�
2gradients/layer0/add_grad/tuple/control_dependencyIdentity!gradients/layer0/add_grad/Reshape+^gradients/layer0/add_grad/tuple/group_deps*4
_class*
(&loc:@gradients/layer0/add_grad/Reshape*
T0*
_output_shapes
:	� 
�
4gradients/layer0/add_grad/tuple/control_dependency_1Identity#gradients/layer0/add_grad/Reshape_1+^gradients/layer0/add_grad/tuple/group_deps*6
_class,
*(loc:@gradients/layer0/add_grad/Reshape_1*
T0*
_output_shapes
: 
�
#gradients/layer0/MatMul_grad/MatMulMatMul2gradients/layer0/add_grad/tuple/control_dependencylayer0/weights/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:
��
�
%gradients/layer0/MatMul_grad/MatMul_1MatMul
input/Relu2gradients/layer0/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	� 
�
-gradients/layer0/MatMul_grad/tuple/group_depsNoOp$^gradients/layer0/MatMul_grad/MatMul&^gradients/layer0/MatMul_grad/MatMul_1
�
5gradients/layer0/MatMul_grad/tuple/control_dependencyIdentity#gradients/layer0/MatMul_grad/MatMul.^gradients/layer0/MatMul_grad/tuple/group_deps*6
_class,
*(loc:@gradients/layer0/MatMul_grad/MatMul*
T0* 
_output_shapes
:
��
�
7gradients/layer0/MatMul_grad/tuple/control_dependency_1Identity%gradients/layer0/MatMul_grad/MatMul_1.^gradients/layer0/MatMul_grad/tuple/group_deps*8
_class.
,*loc:@gradients/layer0/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	� 
�
"gradients/input/Relu_grad/ReluGradReluGrad5gradients/layer0/MatMul_grad/tuple/control_dependency
input/Relu*
T0* 
_output_shapes
:
��
o
gradients/input/add_grad/ShapeConst*
dtype0*
valueB"   �   *
_output_shapes
:
k
 gradients/input/add_grad/Shape_1Const*
dtype0*
valueB:�*
_output_shapes
:
�
.gradients/input/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/input/add_grad/Shape gradients/input/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/input/add_grad/SumSum"gradients/input/Relu_grad/ReluGrad.gradients/input/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
 gradients/input/add_grad/ReshapeReshapegradients/input/add_grad/Sumgradients/input/add_grad/Shape* 
_output_shapes
:
��*
Tshape0*
T0
�
gradients/input/add_grad/Sum_1Sum"gradients/input/Relu_grad/ReluGrad0gradients/input/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
"gradients/input/add_grad/Reshape_1Reshapegradients/input/add_grad/Sum_1 gradients/input/add_grad/Shape_1*
_output_shapes	
:�*
Tshape0*
T0
y
)gradients/input/add_grad/tuple/group_depsNoOp!^gradients/input/add_grad/Reshape#^gradients/input/add_grad/Reshape_1
�
1gradients/input/add_grad/tuple/control_dependencyIdentity gradients/input/add_grad/Reshape*^gradients/input/add_grad/tuple/group_deps*3
_class)
'%loc:@gradients/input/add_grad/Reshape*
T0* 
_output_shapes
:
��
�
3gradients/input/add_grad/tuple/control_dependency_1Identity"gradients/input/add_grad/Reshape_1*^gradients/input/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/input/add_grad/Reshape_1*
T0*
_output_shapes	
:�
�
"gradients/input/MatMul_grad/MatMulMatMul1gradients/input/add_grad/tuple/control_dependencyinput/weights/read*
transpose_b(*
transpose_a( *
T0*
_output_shapes
:	�	
�
$gradients/input/MatMul_grad/MatMul_1MatMulshuffle_batch:11gradients/input/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:		�
�
,gradients/input/MatMul_grad/tuple/group_depsNoOp#^gradients/input/MatMul_grad/MatMul%^gradients/input/MatMul_grad/MatMul_1
�
4gradients/input/MatMul_grad/tuple/control_dependencyIdentity"gradients/input/MatMul_grad/MatMul-^gradients/input/MatMul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/input/MatMul_grad/MatMul*
T0*
_output_shapes
:	�	
�
6gradients/input/MatMul_grad/tuple/control_dependency_1Identity$gradients/input/MatMul_grad/MatMul_1-^gradients/input/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/input/MatMul_grad/MatMul_1*
T0*
_output_shapes
:		�
�
'input/weights/Adagrad/Initializer/ConstConst*
dtype0* 
_class
loc:@input/weights*
valueB		�*���=*
_output_shapes
:		�
�
input/weights/Adagrad
VariableV2*
	container *
_output_shapes
:		�*
dtype0*
shape:		�* 
_class
loc:@input/weights*
shared_name 
�
input/weights/Adagrad/AssignAssigninput/weights/Adagrad'input/weights/Adagrad/Initializer/Const*
validate_shape(* 
_class
loc:@input/weights*
use_locking(*
T0*
_output_shapes
:		�
�
input/weights/Adagrad/readIdentityinput/weights/Adagrad* 
_class
loc:@input/weights*
T0*
_output_shapes
:		�
�
&input/biases/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@input/biases*
valueB�*���=*
_output_shapes	
:�
�
input/biases/Adagrad
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*
_class
loc:@input/biases*
shared_name 
�
input/biases/Adagrad/AssignAssigninput/biases/Adagrad&input/biases/Adagrad/Initializer/Const*
validate_shape(*
_class
loc:@input/biases*
use_locking(*
T0*
_output_shapes	
:�
�
input/biases/Adagrad/readIdentityinput/biases/Adagrad*
_class
loc:@input/biases*
T0*
_output_shapes	
:�
�
(layer0/weights/Adagrad/Initializer/ConstConst*
dtype0*!
_class
loc:@layer0/weights*
valueB	� *���=*
_output_shapes
:	� 
�
layer0/weights/Adagrad
VariableV2*
	container *
_output_shapes
:	� *
dtype0*
shape:	� *!
_class
loc:@layer0/weights*
shared_name 
�
layer0/weights/Adagrad/AssignAssignlayer0/weights/Adagrad(layer0/weights/Adagrad/Initializer/Const*
validate_shape(*!
_class
loc:@layer0/weights*
use_locking(*
T0*
_output_shapes
:	� 
�
layer0/weights/Adagrad/readIdentitylayer0/weights/Adagrad*!
_class
loc:@layer0/weights*
T0*
_output_shapes
:	� 
�
'layer0/biases/Adagrad/Initializer/ConstConst*
dtype0* 
_class
loc:@layer0/biases*
valueB *���=*
_output_shapes
: 
�
layer0/biases/Adagrad
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@layer0/biases*
shared_name 
�
layer0/biases/Adagrad/AssignAssignlayer0/biases/Adagrad'layer0/biases/Adagrad/Initializer/Const*
validate_shape(* 
_class
loc:@layer0/biases*
use_locking(*
T0*
_output_shapes
: 
�
layer0/biases/Adagrad/readIdentitylayer0/biases/Adagrad* 
_class
loc:@layer0/biases*
T0*
_output_shapes
: 
�
(layer1/weights/Adagrad/Initializer/ConstConst*
dtype0*!
_class
loc:@layer1/weights*
valueB *���=*
_output_shapes

: 
�
layer1/weights/Adagrad
VariableV2*
	container *
_output_shapes

: *
dtype0*
shape
: *!
_class
loc:@layer1/weights*
shared_name 
�
layer1/weights/Adagrad/AssignAssignlayer1/weights/Adagrad(layer1/weights/Adagrad/Initializer/Const*
validate_shape(*!
_class
loc:@layer1/weights*
use_locking(*
T0*
_output_shapes

: 
�
layer1/weights/Adagrad/readIdentitylayer1/weights/Adagrad*!
_class
loc:@layer1/weights*
T0*
_output_shapes

: 
�
'layer1/biases/Adagrad/Initializer/ConstConst*
dtype0* 
_class
loc:@layer1/biases*
valueB*���=*
_output_shapes
:
�
layer1/biases/Adagrad
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:* 
_class
loc:@layer1/biases*
shared_name 
�
layer1/biases/Adagrad/AssignAssignlayer1/biases/Adagrad'layer1/biases/Adagrad/Initializer/Const*
validate_shape(* 
_class
loc:@layer1/biases*
use_locking(*
T0*
_output_shapes
:
�
layer1/biases/Adagrad/readIdentitylayer1/biases/Adagrad* 
_class
loc:@layer1/biases*
T0*
_output_shapes
:
�
(output/weights/Adagrad/Initializer/ConstConst*
dtype0*!
_class
loc:@output/weights*
valueB*���=*
_output_shapes

:
�
output/weights/Adagrad
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*!
_class
loc:@output/weights*
shared_name 
�
output/weights/Adagrad/AssignAssignoutput/weights/Adagrad(output/weights/Adagrad/Initializer/Const*
validate_shape(*!
_class
loc:@output/weights*
use_locking(*
T0*
_output_shapes

:
�
output/weights/Adagrad/readIdentityoutput/weights/Adagrad*!
_class
loc:@output/weights*
T0*
_output_shapes

:
�
'output/biases/Adagrad/Initializer/ConstConst*
dtype0* 
_class
loc:@output/biases*
valueB*���=*
_output_shapes
:
�
output/biases/Adagrad
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:* 
_class
loc:@output/biases*
shared_name 
�
output/biases/Adagrad/AssignAssignoutput/biases/Adagrad'output/biases/Adagrad/Initializer/Const*
validate_shape(* 
_class
loc:@output/biases*
use_locking(*
T0*
_output_shapes
:
�
output/biases/Adagrad/readIdentityoutput/biases/Adagrad* 
_class
loc:@output/biases*
T0*
_output_shapes
:
Z
Adagrad/learning_rateConst*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
�
)Adagrad/update_input/weights/ApplyAdagradApplyAdagradinput/weightsinput/weights/AdagradAdagrad/learning_rate6gradients/input/MatMul_grad/tuple/control_dependency_1* 
_class
loc:@input/weights*
use_locking( *
T0*
_output_shapes
:		�
�
(Adagrad/update_input/biases/ApplyAdagradApplyAdagradinput/biasesinput/biases/AdagradAdagrad/learning_rate3gradients/input/add_grad/tuple/control_dependency_1*
_class
loc:@input/biases*
use_locking( *
T0*
_output_shapes	
:�
�
*Adagrad/update_layer0/weights/ApplyAdagradApplyAdagradlayer0/weightslayer0/weights/AdagradAdagrad/learning_rate7gradients/layer0/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@layer0/weights*
use_locking( *
T0*
_output_shapes
:	� 
�
)Adagrad/update_layer0/biases/ApplyAdagradApplyAdagradlayer0/biaseslayer0/biases/AdagradAdagrad/learning_rate4gradients/layer0/add_grad/tuple/control_dependency_1* 
_class
loc:@layer0/biases*
use_locking( *
T0*
_output_shapes
: 
�
*Adagrad/update_layer1/weights/ApplyAdagradApplyAdagradlayer1/weightslayer1/weights/AdagradAdagrad/learning_rate7gradients/layer1/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@layer1/weights*
use_locking( *
T0*
_output_shapes

: 
�
)Adagrad/update_layer1/biases/ApplyAdagradApplyAdagradlayer1/biaseslayer1/biases/AdagradAdagrad/learning_rate4gradients/layer1/add_grad/tuple/control_dependency_1* 
_class
loc:@layer1/biases*
use_locking( *
T0*
_output_shapes
:
�
*Adagrad/update_output/weights/ApplyAdagradApplyAdagradoutput/weightsoutput/weights/AdagradAdagrad/learning_rate7gradients/output/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@output/weights*
use_locking( *
T0*
_output_shapes

:
�
)Adagrad/update_output/biases/ApplyAdagradApplyAdagradoutput/biasesoutput/biases/AdagradAdagrad/learning_rate4gradients/output/add_grad/tuple/control_dependency_1* 
_class
loc:@output/biases*
use_locking( *
T0*
_output_shapes
:
�
Adagrad/updateNoOp*^Adagrad/update_input/weights/ApplyAdagrad)^Adagrad/update_input/biases/ApplyAdagrad+^Adagrad/update_layer0/weights/ApplyAdagrad*^Adagrad/update_layer0/biases/ApplyAdagrad+^Adagrad/update_layer1/weights/ApplyAdagrad*^Adagrad/update_layer1/biases/ApplyAdagrad+^Adagrad/update_output/weights/ApplyAdagrad*^Adagrad/update_output/biases/ApplyAdagrad
�
Adagrad/valueConst^Adagrad/update*
dtype0*
_class
loc:@global_step*
value	B :*
_output_shapes
: 
�
Adagrad	AssignAddglobal_stepAdagrad/value*
_class
loc:@global_step*
use_locking( *
T0*
_output_shapes
: 
�
input_1/MatMulMatMulshuffle_batch:1input/weights/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:
��
`
input_1/addAddinput_1/MatMulinput/biases/read*
T0* 
_output_shapes
:
��
L
input_1/ReluReluinput_1/add*
T0* 
_output_shapes
:
��
�
layer0_1/MatMulMatMulinput_1/Relulayer0/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	� 
b
layer0_1/addAddlayer0_1/MatMullayer0/biases/read*
T0*
_output_shapes
:	� 
M
layer0_1/ReluRelulayer0_1/add*
T0*
_output_shapes
:	� 
�
layer1_1/MatMulMatMullayer0_1/Relulayer1/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	�
b
layer1_1/addAddlayer1_1/MatMullayer1/biases/read*
T0*
_output_shapes
:	�
M
layer1_1/ReluRelulayer1_1/add*
T0*
_output_shapes
:	�
�
output_1/MatMulMatMullayer1_1/Reluoutput/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	�
b
output_1/addAddoutput_1/MatMuloutput/biases/read*
T0*
_output_shapes
:	�
J
SoftmaxSoftmaxoutput_1/add*
T0*
_output_shapes
:	�
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
p
ArgMaxArgMaxSoftmaxArgMax/dimension*
output_type0	*
_output_shapes	
:�*

Tidx0*
T0
E
EqualEqualArgMaxToInt64*
T0	*
_output_shapes	
:�
H
CastCastEqual*

DstT0*

SrcT0
*
_output_shapes	
:�
Q
Const_1Const*
dtype0*
valueB: *
_output_shapes
:
Y
MeanMeanCastConst_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
L
Cast_1CastToInt64*

DstT0*

SrcT0	*
_output_shapes	
:�
^
Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
a
ReshapeReshapeCast_1Reshape/shape*
_output_shapes
:	�*
Tshape0*
T0
P
ShapeConst*
dtype0*
valueB:�*
_output_shapes
:
]
strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
_
strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
_
strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
M
range/startConst*
dtype0*
value	B : *
_output_shapes
: 
M
range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
h
rangeRangerange/startstrided_slicerange/delta*

Tidx0*#
_output_shapes
:���������
`
Reshape_1/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
l
	Reshape_1ReshaperangeReshape_1/shape*'
_output_shapes
:���������*
Tshape0*
T0
M
concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
r
concatConcatV2	Reshape_1Reshapeconcat/axis*
N*

Tidx0*
T0*
_output_shapes
:	�
I
stack/1Const*
dtype0*
value	B :*
_output_shapes
: 
_
stackPackstrided_slicestack/1*
N*
_output_shapes
:*
T0*

axis 
`
SparseToDense/sparse_valuesConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
`
SparseToDense/default_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
SparseToDenseSparseToDenseconcatstackSparseToDense/sparse_valuesSparseToDense/default_value*
validate_indices(*
Tindices0*
T0*'
_output_shapes
:���������
O

auc/Cast/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
t
%auc/assert_greater_equal/GreaterEqualGreaterEqualSoftmax
auc/Cast/x*
T0*
_output_shapes
:	�
o
auc/assert_greater_equal/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
�
auc/assert_greater_equal/AllAll%auc/assert_greater_equal/GreaterEqualauc/assert_greater_equal/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
�
%auc/assert_greater_equal/Assert/ConstConst*
dtype0*.
value%B# Bpredictions must be in [0, 1]*
_output_shapes
: 
�
'auc/assert_greater_equal/Assert/Const_1Const*
dtype0*L
valueCBA B;Condition x >= y did not hold element-wise:x (Softmax:0) = *
_output_shapes
: 
{
'auc/assert_greater_equal/Assert/Const_2Const*
dtype0*$
valueB By (auc/Cast/x:0) = *
_output_shapes
: 
�
2auc/assert_greater_equal/Assert/AssertGuard/SwitchSwitchauc/assert_greater_equal/Allauc/assert_greater_equal/All*
T0
*
_output_shapes
: : 
�
4auc/assert_greater_equal/Assert/AssertGuard/switch_tIdentity4auc/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
�
4auc/assert_greater_equal/Assert/AssertGuard/switch_fIdentity2auc/assert_greater_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
~
3auc/assert_greater_equal/Assert/AssertGuard/pred_idIdentityauc/assert_greater_equal/All*
T0
*
_output_shapes
: 
o
0auc/assert_greater_equal/Assert/AssertGuard/NoOpNoOp5^auc/assert_greater_equal/Assert/AssertGuard/switch_t
�
>auc/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentity4auc/assert_greater_equal/Assert/AssertGuard/switch_t1^auc/assert_greater_equal/Assert/AssertGuard/NoOp*G
_class=
;9loc:@auc/assert_greater_equal/Assert/AssertGuard/switch_t*
T0
*
_output_shapes
: 
�
9auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const5^auc/assert_greater_equal/Assert/AssertGuard/switch_f*
dtype0*.
value%B# Bpredictions must be in [0, 1]*
_output_shapes
: 
�
9auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const5^auc/assert_greater_equal/Assert/AssertGuard/switch_f*
dtype0*L
valueCBA B;Condition x >= y did not hold element-wise:x (Softmax:0) = *
_output_shapes
: 
�
9auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3Const5^auc/assert_greater_equal/Assert/AssertGuard/switch_f*
dtype0*$
valueB By (auc/Cast/x:0) = *
_output_shapes
: 
�
9auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitchauc/assert_greater_equal/All3auc/assert_greater_equal/Assert/AssertGuard/pred_id*/
_class%
#!loc:@auc/assert_greater_equal/All*
T0
*
_output_shapes
: : 
�
;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1SwitchSoftmax3auc/assert_greater_equal/Assert/AssertGuard/pred_id*
_class
loc:@Softmax*
T0**
_output_shapes
:	�:	�
�
;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switch
auc/Cast/x3auc/assert_greater_equal/Assert/AssertGuard/pred_id*
_class
loc:@auc/Cast/x*
T0*
_output_shapes
: : 
�
2auc/assert_greater_equal/Assert/AssertGuard/AssertAssert9auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch9auc/assert_greater_equal/Assert/AssertGuard/Assert/data_09auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_19auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
	summarize*
T	
2
�
@auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Identity4auc/assert_greater_equal/Assert/AssertGuard/switch_f3^auc/assert_greater_equal/Assert/AssertGuard/Assert*G
_class=
;9loc:@auc/assert_greater_equal/Assert/AssertGuard/switch_f*
T0
*
_output_shapes
: 
�
1auc/assert_greater_equal/Assert/AssertGuard/MergeMerge@auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1>auc/assert_greater_equal/Assert/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
Q
auc/Cast_1/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
m
auc/assert_less_equal/LessEqual	LessEqualSoftmaxauc/Cast_1/x*
T0*
_output_shapes
:	�
l
auc/assert_less_equal/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
�
auc/assert_less_equal/AllAllauc/assert_less_equal/LessEqualauc/assert_less_equal/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
�
"auc/assert_less_equal/Assert/ConstConst*
dtype0*.
value%B# Bpredictions must be in [0, 1]*
_output_shapes
: 
�
$auc/assert_less_equal/Assert/Const_1Const*
dtype0*L
valueCBA B;Condition x <= y did not hold element-wise:x (Softmax:0) = *
_output_shapes
: 
z
$auc/assert_less_equal/Assert/Const_2Const*
dtype0*&
valueB By (auc/Cast_1/x:0) = *
_output_shapes
: 
�
/auc/assert_less_equal/Assert/AssertGuard/SwitchSwitchauc/assert_less_equal/Allauc/assert_less_equal/All*
T0
*
_output_shapes
: : 
�
1auc/assert_less_equal/Assert/AssertGuard/switch_tIdentity1auc/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
�
1auc/assert_less_equal/Assert/AssertGuard/switch_fIdentity/auc/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
x
0auc/assert_less_equal/Assert/AssertGuard/pred_idIdentityauc/assert_less_equal/All*
T0
*
_output_shapes
: 
i
-auc/assert_less_equal/Assert/AssertGuard/NoOpNoOp2^auc/assert_less_equal/Assert/AssertGuard/switch_t
�
;auc/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity1auc/assert_less_equal/Assert/AssertGuard/switch_t.^auc/assert_less_equal/Assert/AssertGuard/NoOp*D
_class:
86loc:@auc/assert_less_equal/Assert/AssertGuard/switch_t*
T0
*
_output_shapes
: 
�
6auc/assert_less_equal/Assert/AssertGuard/Assert/data_0Const2^auc/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*.
value%B# Bpredictions must be in [0, 1]*
_output_shapes
: 
�
6auc/assert_less_equal/Assert/AssertGuard/Assert/data_1Const2^auc/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*L
valueCBA B;Condition x <= y did not hold element-wise:x (Softmax:0) = *
_output_shapes
: 
�
6auc/assert_less_equal/Assert/AssertGuard/Assert/data_3Const2^auc/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*&
valueB By (auc/Cast_1/x:0) = *
_output_shapes
: 
�
6auc/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitchauc/assert_less_equal/All0auc/assert_less_equal/Assert/AssertGuard/pred_id*,
_class"
 loc:@auc/assert_less_equal/All*
T0
*
_output_shapes
: : 
�
8auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1SwitchSoftmax0auc/assert_less_equal/Assert/AssertGuard/pred_id*
_class
loc:@Softmax*
T0**
_output_shapes
:	�:	�
�
8auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchauc/Cast_1/x0auc/assert_less_equal/Assert/AssertGuard/pred_id*
_class
loc:@auc/Cast_1/x*
T0*
_output_shapes
: : 
�
/auc/assert_less_equal/Assert/AssertGuard/AssertAssert6auc/assert_less_equal/Assert/AssertGuard/Assert/Switch6auc/assert_less_equal/Assert/AssertGuard/Assert/data_06auc/assert_less_equal/Assert/AssertGuard/Assert/data_18auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_16auc/assert_less_equal/Assert/AssertGuard/Assert/data_38auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
	summarize*
T	
2
�
=auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity1auc/assert_less_equal/Assert/AssertGuard/switch_f0^auc/assert_less_equal/Assert/AssertGuard/Assert*D
_class:
86loc:@auc/assert_less_equal/Assert/AssertGuard/switch_f*
T0
*
_output_shapes
: 
�
.auc/assert_less_equal/Assert/AssertGuard/MergeMerge=auc/assert_less_equal/Assert/AssertGuard/control_dependency_1;auc/assert_less_equal/Assert/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
�

auc/Cast_2CastSparseToDense2^auc/assert_greater_equal/Assert/AssertGuard/Merge/^auc/assert_less_equal/Assert/AssertGuard/Merge*

DstT0
*

SrcT0*'
_output_shapes
:���������
b
auc/Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
j
auc/ReshapeReshapeSoftmaxauc/Reshape/shape*
_output_shapes
:	�*
Tshape0*
T0
d
auc/Reshape_1/shapeConst*
dtype0*
valueB"   ����*
_output_shapes
:
y
auc/Reshape_1Reshape
auc/Cast_2auc/Reshape_1/shape*'
_output_shapes
:���������*
Tshape0*
T0

�
	auc/ConstConst*
dtype0*�
value�B��"���ֳϩ�;ϩ$<��v<ϩ�<C��<���<�=ϩ$=	?9=C�M=}ib=��v=�Ʌ=��=2_�=ϩ�=l��=	?�=���=C��=��=}i�=��=���=�� >��>G�
>�>�9>2_>��>ϩ$>�)>l�.>�4>	?9>Wd>>��C>��H>C�M>��R>�X>.D]>}ib>ˎg>�l>h�q>��v>$|>���>Q7�>�Ʌ>�\�>G�>>��><��>�9�>�̗>2_�>��>���>(�>ϩ�>v<�>ϩ>�a�>l��>��>��>b��>	?�>�ѻ>Wd�>���>���>M�>���>�A�>C��>�f�>���>9��>��>���>.D�>���>}i�>$��>ˎ�>r!�>��>�F�>h��>l�>���>^��>$�>���>�� ?��?Q7?��?��?L?�\?�	?G�
?�8?�?B�?�?�]?<�?��?�9?7�?��?�?2_?��?��?-;?��?�� ?("?{`#?ϩ$?#�%?v<'?ʅ(?�)?q+?�a,?�-?l�.?�=0?�1?g�2?�4?c5?b�6?��7?	?9?]�:?��;?=?Wd>?��??��@?R@B?��C?��D?MF?�eG?��H?H�I?�AK?�L?C�M?�O?�fP?>�Q?��R?�BT?9�U?��V?�X?3hY?��Z?��[?.D]?��^?��_?) a?}ib?вc?$�d?xEf?ˎg?�h?r!j?�jk?�l?m�m?�Fo?�p?h�q?�"s?lt?c�u?��v?
Hx?^�y?��z?$|?Ym}?��~? �?*
_output_shapes	
:�
\
auc/ExpandDims/dimConst*
dtype0*
valueB:*
_output_shapes
:
q
auc/ExpandDims
ExpandDims	auc/Constauc/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	�
Z
	auc/stackConst*
dtype0*
valueB"      *
_output_shapes
:
h
auc/TileTileauc/ExpandDims	auc/stack*

Tmultiples0*
T0* 
_output_shapes
:
��
H
auc/transpose/RankRankauc/Reshape*
T0*
_output_shapes
: 
U
auc/transpose/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
b
auc/transpose/subSubauc/transpose/Rankauc/transpose/sub/y*
T0*
_output_shapes
: 
[
auc/transpose/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
[
auc/transpose/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
auc/transpose/RangeRangeauc/transpose/Range/startauc/transpose/Rankauc/transpose/Range/delta*

Tidx0*
_output_shapes
:
g
auc/transpose/sub_1Subauc/transpose/subauc/transpose/Range*
T0*
_output_shapes
:
s
auc/transpose	Transposeauc/Reshapeauc/transpose/sub_1*
Tperm0*
T0*
_output_shapes
:	�
e
auc/Tile_1/multiplesConst*
dtype0*
valueB"�      *
_output_shapes
:
t

auc/Tile_1Tileauc/transposeauc/Tile_1/multiples*

Tmultiples0*
T0* 
_output_shapes
:
��
W
auc/GreaterGreater
auc/Tile_1auc/Tile*
T0* 
_output_shapes
:
��
K
auc/LogicalNot
LogicalNotauc/Greater* 
_output_shapes
:
��
e
auc/Tile_2/multiplesConst*
dtype0*
valueB"�      *
_output_shapes
:
|

auc/Tile_2Tileauc/Reshape_1auc/Tile_2/multiples*

Tmultiples0*
T0
*(
_output_shapes
:����������
T
auc/LogicalNot_1
LogicalNot
auc/Tile_2*(
_output_shapes
:����������
�
$auc/true_positives/Initializer/zerosConst*
dtype0*%
_class
loc:@auc/true_positives*
valueB�*    *
_output_shapes	
:�
�
auc/true_positives
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*%
_class
loc:@auc/true_positives*
shared_name 
�
auc/true_positives/AssignAssignauc/true_positives$auc/true_positives/Initializer/zeros*
validate_shape(*%
_class
loc:@auc/true_positives*
use_locking(*
T0*
_output_shapes	
:�
�
auc/true_positives/readIdentityauc/true_positives*%
_class
loc:@auc/true_positives*
T0*
_output_shapes	
:�
W
auc/LogicalAnd
LogicalAnd
auc/Tile_2auc/Greater* 
_output_shapes
:
��
_
auc/ToFloat_1Castauc/LogicalAnd*

DstT0*

SrcT0
* 
_output_shapes
:
��
[
auc/Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
{
auc/SumSumauc/ToFloat_1auc/Sum/reduction_indices*
_output_shapes	
:�*
T0*
	keep_dims( *

Tidx0
�
auc/AssignAdd	AssignAddauc/true_positivesauc/Sum*%
_class
loc:@auc/true_positives*
use_locking( *
T0*
_output_shapes	
:�
�
%auc/false_negatives/Initializer/zerosConst*
dtype0*&
_class
loc:@auc/false_negatives*
valueB�*    *
_output_shapes	
:�
�
auc/false_negatives
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*&
_class
loc:@auc/false_negatives*
shared_name 
�
auc/false_negatives/AssignAssignauc/false_negatives%auc/false_negatives/Initializer/zeros*
validate_shape(*&
_class
loc:@auc/false_negatives*
use_locking(*
T0*
_output_shapes	
:�
�
auc/false_negatives/readIdentityauc/false_negatives*&
_class
loc:@auc/false_negatives*
T0*
_output_shapes	
:�
\
auc/LogicalAnd_1
LogicalAnd
auc/Tile_2auc/LogicalNot* 
_output_shapes
:
��
a
auc/ToFloat_2Castauc/LogicalAnd_1*

DstT0*

SrcT0
* 
_output_shapes
:
��
]
auc/Sum_1/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 

	auc/Sum_1Sumauc/ToFloat_2auc/Sum_1/reduction_indices*
_output_shapes	
:�*
T0*
	keep_dims( *

Tidx0
�
auc/AssignAdd_1	AssignAddauc/false_negatives	auc/Sum_1*&
_class
loc:@auc/false_negatives*
use_locking( *
T0*
_output_shapes	
:�
�
$auc/true_negatives/Initializer/zerosConst*
dtype0*%
_class
loc:@auc/true_negatives*
valueB�*    *
_output_shapes	
:�
�
auc/true_negatives
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*%
_class
loc:@auc/true_negatives*
shared_name 
�
auc/true_negatives/AssignAssignauc/true_negatives$auc/true_negatives/Initializer/zeros*
validate_shape(*%
_class
loc:@auc/true_negatives*
use_locking(*
T0*
_output_shapes	
:�
�
auc/true_negatives/readIdentityauc/true_negatives*%
_class
loc:@auc/true_negatives*
T0*
_output_shapes	
:�
b
auc/LogicalAnd_2
LogicalAndauc/LogicalNot_1auc/LogicalNot* 
_output_shapes
:
��
a
auc/ToFloat_3Castauc/LogicalAnd_2*

DstT0*

SrcT0
* 
_output_shapes
:
��
]
auc/Sum_2/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 

	auc/Sum_2Sumauc/ToFloat_3auc/Sum_2/reduction_indices*
_output_shapes	
:�*
T0*
	keep_dims( *

Tidx0
�
auc/AssignAdd_2	AssignAddauc/true_negatives	auc/Sum_2*%
_class
loc:@auc/true_negatives*
use_locking( *
T0*
_output_shapes	
:�
�
%auc/false_positives/Initializer/zerosConst*
dtype0*&
_class
loc:@auc/false_positives*
valueB�*    *
_output_shapes	
:�
�
auc/false_positives
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*&
_class
loc:@auc/false_positives*
shared_name 
�
auc/false_positives/AssignAssignauc/false_positives%auc/false_positives/Initializer/zeros*
validate_shape(*&
_class
loc:@auc/false_positives*
use_locking(*
T0*
_output_shapes	
:�
�
auc/false_positives/readIdentityauc/false_positives*&
_class
loc:@auc/false_positives*
T0*
_output_shapes	
:�
_
auc/LogicalAnd_3
LogicalAndauc/LogicalNot_1auc/Greater* 
_output_shapes
:
��
a
auc/ToFloat_4Castauc/LogicalAnd_3*

DstT0*

SrcT0
* 
_output_shapes
:
��
]
auc/Sum_3/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 

	auc/Sum_3Sumauc/ToFloat_4auc/Sum_3/reduction_indices*
_output_shapes	
:�*
T0*
	keep_dims( *

Tidx0
�
auc/AssignAdd_3	AssignAddauc/false_positives	auc/Sum_3*&
_class
loc:@auc/false_positives*
use_locking( *
T0*
_output_shapes	
:�
N
	auc/add/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
X
auc/addAddauc/true_positives/read	auc/add/y*
T0*
_output_shapes	
:�
i
	auc/add_1Addauc/true_positives/readauc/false_negatives/read*
T0*
_output_shapes	
:�
P
auc/add_2/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
N
	auc/add_2Add	auc/add_1auc/add_2/y*
T0*
_output_shapes	
:�
L
auc/divRealDivauc/add	auc/add_2*
T0*
_output_shapes	
:�
i
	auc/add_3Addauc/false_positives/readauc/true_negatives/read*
T0*
_output_shapes	
:�
P
auc/add_4/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
N
	auc/add_4Add	auc/add_3auc/add_4/y*
T0*
_output_shapes	
:�
_
	auc/div_1RealDivauc/false_positives/read	auc/add_4*
T0*
_output_shapes	
:�
a
auc/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
d
auc/strided_slice/stack_1Const*
dtype0*
valueB:�*
_output_shapes
:
c
auc/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc/strided_sliceStridedSlice	auc/div_1auc/strided_slice/stackauc/strided_slice/stack_1auc/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
c
auc/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
e
auc/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
e
auc/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc/strided_slice_1StridedSlice	auc/div_1auc/strided_slice_1/stackauc/strided_slice_1/stack_1auc/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
\
auc/subSubauc/strided_sliceauc/strided_slice_1*
T0*
_output_shapes	
:�
c
auc/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
f
auc/strided_slice_2/stack_1Const*
dtype0*
valueB:�*
_output_shapes
:
e
auc/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc/strided_slice_2StridedSliceauc/divauc/strided_slice_2/stackauc/strided_slice_2/stack_1auc/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
c
auc/strided_slice_3/stackConst*
dtype0*
valueB:*
_output_shapes
:
e
auc/strided_slice_3/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
e
auc/strided_slice_3/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc/strided_slice_3StridedSliceauc/divauc/strided_slice_3/stackauc/strided_slice_3/stack_1auc/strided_slice_3/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
`
	auc/add_5Addauc/strided_slice_2auc/strided_slice_3*
T0*
_output_shapes	
:�
R
auc/truediv/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
V
auc/truedivRealDiv	auc/add_5auc/truediv/y*
T0*
_output_shapes	
:�
J
auc/MulMulauc/subauc/truediv*
T0*
_output_shapes	
:�
U
auc/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
d
	auc/valueSumauc/Mulauc/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
P
auc/add_6/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
R
	auc/add_6Addauc/AssignAddauc/add_6/y*
T0*
_output_shapes	
:�
V
	auc/add_7Addauc/AssignAddauc/AssignAdd_1*
T0*
_output_shapes	
:�
P
auc/add_8/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
N
	auc/add_8Add	auc/add_7auc/add_8/y*
T0*
_output_shapes	
:�
P
	auc/div_2RealDiv	auc/add_6	auc/add_8*
T0*
_output_shapes	
:�
X
	auc/add_9Addauc/AssignAdd_3auc/AssignAdd_2*
T0*
_output_shapes	
:�
Q
auc/add_10/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
P

auc/add_10Add	auc/add_9auc/add_10/y*
T0*
_output_shapes	
:�
W
	auc/div_3RealDivauc/AssignAdd_3
auc/add_10*
T0*
_output_shapes	
:�
c
auc/strided_slice_4/stackConst*
dtype0*
valueB: *
_output_shapes
:
f
auc/strided_slice_4/stack_1Const*
dtype0*
valueB:�*
_output_shapes
:
e
auc/strided_slice_4/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc/strided_slice_4StridedSlice	auc/div_3auc/strided_slice_4/stackauc/strided_slice_4/stack_1auc/strided_slice_4/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
c
auc/strided_slice_5/stackConst*
dtype0*
valueB:*
_output_shapes
:
e
auc/strided_slice_5/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
e
auc/strided_slice_5/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc/strided_slice_5StridedSlice	auc/div_3auc/strided_slice_5/stackauc/strided_slice_5/stack_1auc/strided_slice_5/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
`
	auc/sub_1Subauc/strided_slice_4auc/strided_slice_5*
T0*
_output_shapes	
:�
c
auc/strided_slice_6/stackConst*
dtype0*
valueB: *
_output_shapes
:
f
auc/strided_slice_6/stack_1Const*
dtype0*
valueB:�*
_output_shapes
:
e
auc/strided_slice_6/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc/strided_slice_6StridedSlice	auc/div_2auc/strided_slice_6/stackauc/strided_slice_6/stack_1auc/strided_slice_6/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
c
auc/strided_slice_7/stackConst*
dtype0*
valueB:*
_output_shapes
:
e
auc/strided_slice_7/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
e
auc/strided_slice_7/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc/strided_slice_7StridedSlice	auc/div_2auc/strided_slice_7/stackauc/strided_slice_7/stack_1auc/strided_slice_7/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
a

auc/add_11Addauc/strided_slice_6auc/strided_slice_7*
T0*
_output_shapes	
:�
T
auc/truediv_1/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
[
auc/truediv_1RealDiv
auc/add_11auc/truediv_1/y*
T0*
_output_shapes	
:�
P
	auc/Mul_1Mul	auc/sub_1auc/truediv_1*
T0*
_output_shapes	
:�
U
auc/Const_2Const*
dtype0*
valueB: *
_output_shapes
:
j
auc/update_opSum	auc/Mul_1auc/Const_2*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
input_2/MatMulMatMulshuffle_batch_1:1input/weights/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:
��
`
input_2/addAddinput_2/MatMulinput/biases/read*
T0* 
_output_shapes
:
��
L
input_2/ReluReluinput_2/add*
T0* 
_output_shapes
:
��
�
layer0_2/MatMulMatMulinput_2/Relulayer0/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	� 
b
layer0_2/addAddlayer0_2/MatMullayer0/biases/read*
T0*
_output_shapes
:	� 
M
layer0_2/ReluRelulayer0_2/add*
T0*
_output_shapes
:	� 
�
layer1_2/MatMulMatMullayer0_2/Relulayer1/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	�
b
layer1_2/addAddlayer1_2/MatMullayer1/biases/read*
T0*
_output_shapes
:	�
M
layer1_2/ReluRelulayer1_2/add*
T0*
_output_shapes
:	�
�
output_2/MatMulMatMullayer1_2/Reluoutput/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	�
b
output_2/addAddoutput_2/MatMuloutput/biases/read*
T0*
_output_shapes
:	�
L
	Softmax_1Softmaxoutput_2/add*
T0*
_output_shapes
:	�
W
	ToInt64_1Castshuffle_batch_1*

DstT0	*

SrcT0*
_output_shapes	
:�
T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
v
ArgMax_1ArgMax	Softmax_1ArgMax_1/dimension*
output_type0	*
_output_shapes	
:�*

Tidx0*
T0
K
Equal_1EqualArgMax_1	ToInt64_1*
T0	*
_output_shapes	
:�
L
Cast_2CastEqual_1*

DstT0*

SrcT0
*
_output_shapes	
:�
Q
Const_2Const*
dtype0*
valueB: *
_output_shapes
:
]
Mean_1MeanCast_2Const_2*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
N
Cast_3Cast	ToInt64_1*

DstT0*

SrcT0	*
_output_shapes	
:�
`
Reshape_2/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
e
	Reshape_2ReshapeCast_3Reshape_2/shape*
_output_shapes
:	�*
Tshape0*
T0
R
Shape_1Const*
dtype0*
valueB:�*
_output_shapes
:
_
strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:
a
strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
a
strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
O
range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
O
range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
p
range_1Rangerange_1/startstrided_slice_1range_1/delta*

Tidx0*#
_output_shapes
:���������
`
Reshape_3/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
n
	Reshape_3Reshaperange_1Reshape_3/shape*'
_output_shapes
:���������*
Tshape0*
T0
O
concat_1/axisConst*
dtype0*
value	B :*
_output_shapes
: 
x
concat_1ConcatV2	Reshape_3	Reshape_2concat_1/axis*
N*

Tidx0*
T0*
_output_shapes
:	�
K
	stack_1/1Const*
dtype0*
value	B :*
_output_shapes
: 
e
stack_1Packstrided_slice_1	stack_1/1*
N*
_output_shapes
:*
T0*

axis 
b
SparseToDense_1/sparse_valuesConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
b
SparseToDense_1/default_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
SparseToDense_1SparseToDenseconcat_1stack_1SparseToDense_1/sparse_valuesSparseToDense_1/default_value*
validate_indices(*
Tindices0*
T0*'
_output_shapes
:���������
Q
auc_1/Cast/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
z
'auc_1/assert_greater_equal/GreaterEqualGreaterEqual	Softmax_1auc_1/Cast/x*
T0*
_output_shapes
:	�
q
 auc_1/assert_greater_equal/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
�
auc_1/assert_greater_equal/AllAll'auc_1/assert_greater_equal/GreaterEqual auc_1/assert_greater_equal/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
�
'auc_1/assert_greater_equal/Assert/ConstConst*
dtype0*.
value%B# Bpredictions must be in [0, 1]*
_output_shapes
: 
�
)auc_1/assert_greater_equal/Assert/Const_1Const*
dtype0*N
valueEBC B=Condition x >= y did not hold element-wise:x (Softmax_1:0) = *
_output_shapes
: 

)auc_1/assert_greater_equal/Assert/Const_2Const*
dtype0*&
valueB By (auc_1/Cast/x:0) = *
_output_shapes
: 
�
4auc_1/assert_greater_equal/Assert/AssertGuard/SwitchSwitchauc_1/assert_greater_equal/Allauc_1/assert_greater_equal/All*
T0
*
_output_shapes
: : 
�
6auc_1/assert_greater_equal/Assert/AssertGuard/switch_tIdentity6auc_1/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
�
6auc_1/assert_greater_equal/Assert/AssertGuard/switch_fIdentity4auc_1/assert_greater_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
�
5auc_1/assert_greater_equal/Assert/AssertGuard/pred_idIdentityauc_1/assert_greater_equal/All*
T0
*
_output_shapes
: 
s
2auc_1/assert_greater_equal/Assert/AssertGuard/NoOpNoOp7^auc_1/assert_greater_equal/Assert/AssertGuard/switch_t
�
@auc_1/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentity6auc_1/assert_greater_equal/Assert/AssertGuard/switch_t3^auc_1/assert_greater_equal/Assert/AssertGuard/NoOp*I
_class?
=;loc:@auc_1/assert_greater_equal/Assert/AssertGuard/switch_t*
T0
*
_output_shapes
: 
�
;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const7^auc_1/assert_greater_equal/Assert/AssertGuard/switch_f*
dtype0*.
value%B# Bpredictions must be in [0, 1]*
_output_shapes
: 
�
;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const7^auc_1/assert_greater_equal/Assert/AssertGuard/switch_f*
dtype0*N
valueEBC B=Condition x >= y did not hold element-wise:x (Softmax_1:0) = *
_output_shapes
: 
�
;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_3Const7^auc_1/assert_greater_equal/Assert/AssertGuard/switch_f*
dtype0*&
valueB By (auc_1/Cast/x:0) = *
_output_shapes
: 
�
;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitchauc_1/assert_greater_equal/All5auc_1/assert_greater_equal/Assert/AssertGuard/pred_id*1
_class'
%#loc:@auc_1/assert_greater_equal/All*
T0
*
_output_shapes
: : 
�
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switch	Softmax_15auc_1/assert_greater_equal/Assert/AssertGuard/pred_id*
_class
loc:@Softmax_1*
T0**
_output_shapes
:	�:	�
�
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switchauc_1/Cast/x5auc_1/assert_greater_equal/Assert/AssertGuard/pred_id*
_class
loc:@auc_1/Cast/x*
T0*
_output_shapes
: : 
�
4auc_1/assert_greater_equal/Assert/AssertGuard/AssertAssert;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_0;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_1=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_3=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
	summarize*
T	
2
�
Bauc_1/assert_greater_equal/Assert/AssertGuard/control_dependency_1Identity6auc_1/assert_greater_equal/Assert/AssertGuard/switch_f5^auc_1/assert_greater_equal/Assert/AssertGuard/Assert*I
_class?
=;loc:@auc_1/assert_greater_equal/Assert/AssertGuard/switch_f*
T0
*
_output_shapes
: 
�
3auc_1/assert_greater_equal/Assert/AssertGuard/MergeMergeBauc_1/assert_greater_equal/Assert/AssertGuard/control_dependency_1@auc_1/assert_greater_equal/Assert/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
S
auc_1/Cast_1/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
s
!auc_1/assert_less_equal/LessEqual	LessEqual	Softmax_1auc_1/Cast_1/x*
T0*
_output_shapes
:	�
n
auc_1/assert_less_equal/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
�
auc_1/assert_less_equal/AllAll!auc_1/assert_less_equal/LessEqualauc_1/assert_less_equal/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
�
$auc_1/assert_less_equal/Assert/ConstConst*
dtype0*.
value%B# Bpredictions must be in [0, 1]*
_output_shapes
: 
�
&auc_1/assert_less_equal/Assert/Const_1Const*
dtype0*N
valueEBC B=Condition x <= y did not hold element-wise:x (Softmax_1:0) = *
_output_shapes
: 
~
&auc_1/assert_less_equal/Assert/Const_2Const*
dtype0*(
valueB By (auc_1/Cast_1/x:0) = *
_output_shapes
: 
�
1auc_1/assert_less_equal/Assert/AssertGuard/SwitchSwitchauc_1/assert_less_equal/Allauc_1/assert_less_equal/All*
T0
*
_output_shapes
: : 
�
3auc_1/assert_less_equal/Assert/AssertGuard/switch_tIdentity3auc_1/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
�
3auc_1/assert_less_equal/Assert/AssertGuard/switch_fIdentity1auc_1/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
|
2auc_1/assert_less_equal/Assert/AssertGuard/pred_idIdentityauc_1/assert_less_equal/All*
T0
*
_output_shapes
: 
m
/auc_1/assert_less_equal/Assert/AssertGuard/NoOpNoOp4^auc_1/assert_less_equal/Assert/AssertGuard/switch_t
�
=auc_1/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity3auc_1/assert_less_equal/Assert/AssertGuard/switch_t0^auc_1/assert_less_equal/Assert/AssertGuard/NoOp*F
_class<
:8loc:@auc_1/assert_less_equal/Assert/AssertGuard/switch_t*
T0
*
_output_shapes
: 
�
8auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Const4^auc_1/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*.
value%B# Bpredictions must be in [0, 1]*
_output_shapes
: 
�
8auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Const4^auc_1/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*N
valueEBC B=Condition x <= y did not hold element-wise:x (Softmax_1:0) = *
_output_shapes
: 
�
8auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_3Const4^auc_1/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*(
valueB By (auc_1/Cast_1/x:0) = *
_output_shapes
: 
�
8auc_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitchauc_1/assert_less_equal/All2auc_1/assert_less_equal/Assert/AssertGuard/pred_id*.
_class$
" loc:@auc_1/assert_less_equal/All*
T0
*
_output_shapes
: : 
�
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch	Softmax_12auc_1/assert_less_equal/Assert/AssertGuard/pred_id*
_class
loc:@Softmax_1*
T0**
_output_shapes
:	�:	�
�
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchauc_1/Cast_1/x2auc_1/assert_less_equal/Assert/AssertGuard/pred_id*!
_class
loc:@auc_1/Cast_1/x*
T0*
_output_shapes
: : 
�
1auc_1/assert_less_equal/Assert/AssertGuard/AssertAssert8auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch8auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_08auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_18auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_3:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
	summarize*
T	
2
�
?auc_1/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity3auc_1/assert_less_equal/Assert/AssertGuard/switch_f2^auc_1/assert_less_equal/Assert/AssertGuard/Assert*F
_class<
:8loc:@auc_1/assert_less_equal/Assert/AssertGuard/switch_f*
T0
*
_output_shapes
: 
�
0auc_1/assert_less_equal/Assert/AssertGuard/MergeMerge?auc_1/assert_less_equal/Assert/AssertGuard/control_dependency_1=auc_1/assert_less_equal/Assert/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
�
auc_1/Cast_2CastSparseToDense_14^auc_1/assert_greater_equal/Assert/AssertGuard/Merge1^auc_1/assert_less_equal/Assert/AssertGuard/Merge*

DstT0
*

SrcT0*'
_output_shapes
:���������
d
auc_1/Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
p
auc_1/ReshapeReshape	Softmax_1auc_1/Reshape/shape*
_output_shapes
:	�*
Tshape0*
T0
f
auc_1/Reshape_1/shapeConst*
dtype0*
valueB"   ����*
_output_shapes
:

auc_1/Reshape_1Reshapeauc_1/Cast_2auc_1/Reshape_1/shape*'
_output_shapes
:���������*
Tshape0*
T0

�
auc_1/ConstConst*
dtype0*�
value�B��"���ֳϩ�;ϩ$<��v<ϩ�<C��<���<�=ϩ$=	?9=C�M=}ib=��v=�Ʌ=��=2_�=ϩ�=l��=	?�=���=C��=��=}i�=��=���=�� >��>G�
>�>�9>2_>��>ϩ$>�)>l�.>�4>	?9>Wd>>��C>��H>C�M>��R>�X>.D]>}ib>ˎg>�l>h�q>��v>$|>���>Q7�>�Ʌ>�\�>G�>>��><��>�9�>�̗>2_�>��>���>(�>ϩ�>v<�>ϩ>�a�>l��>��>��>b��>	?�>�ѻ>Wd�>���>���>M�>���>�A�>C��>�f�>���>9��>��>���>.D�>���>}i�>$��>ˎ�>r!�>��>�F�>h��>l�>���>^��>$�>���>�� ?��?Q7?��?��?L?�\?�	?G�
?�8?�?B�?�?�]?<�?��?�9?7�?��?�?2_?��?��?-;?��?�� ?("?{`#?ϩ$?#�%?v<'?ʅ(?�)?q+?�a,?�-?l�.?�=0?�1?g�2?�4?c5?b�6?��7?	?9?]�:?��;?=?Wd>?��??��@?R@B?��C?��D?MF?�eG?��H?H�I?�AK?�L?C�M?�O?�fP?>�Q?��R?�BT?9�U?��V?�X?3hY?��Z?��[?.D]?��^?��_?) a?}ib?вc?$�d?xEf?ˎg?�h?r!j?�jk?�l?m�m?�Fo?�p?h�q?�"s?lt?c�u?��v?
Hx?^�y?��z?$|?Ym}?��~? �?*
_output_shapes	
:�
^
auc_1/ExpandDims/dimConst*
dtype0*
valueB:*
_output_shapes
:
w
auc_1/ExpandDims
ExpandDimsauc_1/Constauc_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	�
\
auc_1/stackConst*
dtype0*
valueB"      *
_output_shapes
:
n

auc_1/TileTileauc_1/ExpandDimsauc_1/stack*

Tmultiples0*
T0* 
_output_shapes
:
��
L
auc_1/transpose/RankRankauc_1/Reshape*
T0*
_output_shapes
: 
W
auc_1/transpose/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
h
auc_1/transpose/subSubauc_1/transpose/Rankauc_1/transpose/sub/y*
T0*
_output_shapes
: 
]
auc_1/transpose/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
]
auc_1/transpose/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
auc_1/transpose/RangeRangeauc_1/transpose/Range/startauc_1/transpose/Rankauc_1/transpose/Range/delta*

Tidx0*
_output_shapes
:
m
auc_1/transpose/sub_1Subauc_1/transpose/subauc_1/transpose/Range*
T0*
_output_shapes
:
y
auc_1/transpose	Transposeauc_1/Reshapeauc_1/transpose/sub_1*
Tperm0*
T0*
_output_shapes
:	�
g
auc_1/Tile_1/multiplesConst*
dtype0*
valueB"�      *
_output_shapes
:
z
auc_1/Tile_1Tileauc_1/transposeauc_1/Tile_1/multiples*

Tmultiples0*
T0* 
_output_shapes
:
��
]
auc_1/GreaterGreaterauc_1/Tile_1
auc_1/Tile*
T0* 
_output_shapes
:
��
O
auc_1/LogicalNot
LogicalNotauc_1/Greater* 
_output_shapes
:
��
g
auc_1/Tile_2/multiplesConst*
dtype0*
valueB"�      *
_output_shapes
:
�
auc_1/Tile_2Tileauc_1/Reshape_1auc_1/Tile_2/multiples*

Tmultiples0*
T0
*(
_output_shapes
:����������
X
auc_1/LogicalNot_1
LogicalNotauc_1/Tile_2*(
_output_shapes
:����������
�
&auc_1/true_positives/Initializer/zerosConst*
dtype0*'
_class
loc:@auc_1/true_positives*
valueB�*    *
_output_shapes	
:�
�
auc_1/true_positives
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*'
_class
loc:@auc_1/true_positives*
shared_name 
�
auc_1/true_positives/AssignAssignauc_1/true_positives&auc_1/true_positives/Initializer/zeros*
validate_shape(*'
_class
loc:@auc_1/true_positives*
use_locking(*
T0*
_output_shapes	
:�
�
auc_1/true_positives/readIdentityauc_1/true_positives*'
_class
loc:@auc_1/true_positives*
T0*
_output_shapes	
:�
]
auc_1/LogicalAnd
LogicalAndauc_1/Tile_2auc_1/Greater* 
_output_shapes
:
��
c
auc_1/ToFloat_1Castauc_1/LogicalAnd*

DstT0*

SrcT0
* 
_output_shapes
:
��
]
auc_1/Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
�
	auc_1/SumSumauc_1/ToFloat_1auc_1/Sum/reduction_indices*
_output_shapes	
:�*
T0*
	keep_dims( *

Tidx0
�
auc_1/AssignAdd	AssignAddauc_1/true_positives	auc_1/Sum*'
_class
loc:@auc_1/true_positives*
use_locking( *
T0*
_output_shapes	
:�
�
'auc_1/false_negatives/Initializer/zerosConst*
dtype0*(
_class
loc:@auc_1/false_negatives*
valueB�*    *
_output_shapes	
:�
�
auc_1/false_negatives
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*(
_class
loc:@auc_1/false_negatives*
shared_name 
�
auc_1/false_negatives/AssignAssignauc_1/false_negatives'auc_1/false_negatives/Initializer/zeros*
validate_shape(*(
_class
loc:@auc_1/false_negatives*
use_locking(*
T0*
_output_shapes	
:�
�
auc_1/false_negatives/readIdentityauc_1/false_negatives*(
_class
loc:@auc_1/false_negatives*
T0*
_output_shapes	
:�
b
auc_1/LogicalAnd_1
LogicalAndauc_1/Tile_2auc_1/LogicalNot* 
_output_shapes
:
��
e
auc_1/ToFloat_2Castauc_1/LogicalAnd_1*

DstT0*

SrcT0
* 
_output_shapes
:
��
_
auc_1/Sum_1/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
�
auc_1/Sum_1Sumauc_1/ToFloat_2auc_1/Sum_1/reduction_indices*
_output_shapes	
:�*
T0*
	keep_dims( *

Tidx0
�
auc_1/AssignAdd_1	AssignAddauc_1/false_negativesauc_1/Sum_1*(
_class
loc:@auc_1/false_negatives*
use_locking( *
T0*
_output_shapes	
:�
�
&auc_1/true_negatives/Initializer/zerosConst*
dtype0*'
_class
loc:@auc_1/true_negatives*
valueB�*    *
_output_shapes	
:�
�
auc_1/true_negatives
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*'
_class
loc:@auc_1/true_negatives*
shared_name 
�
auc_1/true_negatives/AssignAssignauc_1/true_negatives&auc_1/true_negatives/Initializer/zeros*
validate_shape(*'
_class
loc:@auc_1/true_negatives*
use_locking(*
T0*
_output_shapes	
:�
�
auc_1/true_negatives/readIdentityauc_1/true_negatives*'
_class
loc:@auc_1/true_negatives*
T0*
_output_shapes	
:�
h
auc_1/LogicalAnd_2
LogicalAndauc_1/LogicalNot_1auc_1/LogicalNot* 
_output_shapes
:
��
e
auc_1/ToFloat_3Castauc_1/LogicalAnd_2*

DstT0*

SrcT0
* 
_output_shapes
:
��
_
auc_1/Sum_2/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
�
auc_1/Sum_2Sumauc_1/ToFloat_3auc_1/Sum_2/reduction_indices*
_output_shapes	
:�*
T0*
	keep_dims( *

Tidx0
�
auc_1/AssignAdd_2	AssignAddauc_1/true_negativesauc_1/Sum_2*'
_class
loc:@auc_1/true_negatives*
use_locking( *
T0*
_output_shapes	
:�
�
'auc_1/false_positives/Initializer/zerosConst*
dtype0*(
_class
loc:@auc_1/false_positives*
valueB�*    *
_output_shapes	
:�
�
auc_1/false_positives
VariableV2*
	container *
_output_shapes	
:�*
dtype0*
shape:�*(
_class
loc:@auc_1/false_positives*
shared_name 
�
auc_1/false_positives/AssignAssignauc_1/false_positives'auc_1/false_positives/Initializer/zeros*
validate_shape(*(
_class
loc:@auc_1/false_positives*
use_locking(*
T0*
_output_shapes	
:�
�
auc_1/false_positives/readIdentityauc_1/false_positives*(
_class
loc:@auc_1/false_positives*
T0*
_output_shapes	
:�
e
auc_1/LogicalAnd_3
LogicalAndauc_1/LogicalNot_1auc_1/Greater* 
_output_shapes
:
��
e
auc_1/ToFloat_4Castauc_1/LogicalAnd_3*

DstT0*

SrcT0
* 
_output_shapes
:
��
_
auc_1/Sum_3/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
�
auc_1/Sum_3Sumauc_1/ToFloat_4auc_1/Sum_3/reduction_indices*
_output_shapes	
:�*
T0*
	keep_dims( *

Tidx0
�
auc_1/AssignAdd_3	AssignAddauc_1/false_positivesauc_1/Sum_3*(
_class
loc:@auc_1/false_positives*
use_locking( *
T0*
_output_shapes	
:�
P
auc_1/add/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
^
	auc_1/addAddauc_1/true_positives/readauc_1/add/y*
T0*
_output_shapes	
:�
o
auc_1/add_1Addauc_1/true_positives/readauc_1/false_negatives/read*
T0*
_output_shapes	
:�
R
auc_1/add_2/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
T
auc_1/add_2Addauc_1/add_1auc_1/add_2/y*
T0*
_output_shapes	
:�
R
	auc_1/divRealDiv	auc_1/addauc_1/add_2*
T0*
_output_shapes	
:�
o
auc_1/add_3Addauc_1/false_positives/readauc_1/true_negatives/read*
T0*
_output_shapes	
:�
R
auc_1/add_4/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
T
auc_1/add_4Addauc_1/add_3auc_1/add_4/y*
T0*
_output_shapes	
:�
e
auc_1/div_1RealDivauc_1/false_positives/readauc_1/add_4*
T0*
_output_shapes	
:�
c
auc_1/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
f
auc_1/strided_slice/stack_1Const*
dtype0*
valueB:�*
_output_shapes
:
e
auc_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc_1/strided_sliceStridedSliceauc_1/div_1auc_1/strided_slice/stackauc_1/strided_slice/stack_1auc_1/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
e
auc_1/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
auc_1/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
auc_1/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc_1/strided_slice_1StridedSliceauc_1/div_1auc_1/strided_slice_1/stackauc_1/strided_slice_1/stack_1auc_1/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
b
	auc_1/subSubauc_1/strided_sliceauc_1/strided_slice_1*
T0*
_output_shapes	
:�
e
auc_1/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
h
auc_1/strided_slice_2/stack_1Const*
dtype0*
valueB:�*
_output_shapes
:
g
auc_1/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc_1/strided_slice_2StridedSlice	auc_1/divauc_1/strided_slice_2/stackauc_1/strided_slice_2/stack_1auc_1/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
e
auc_1/strided_slice_3/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
auc_1/strided_slice_3/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
auc_1/strided_slice_3/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc_1/strided_slice_3StridedSlice	auc_1/divauc_1/strided_slice_3/stackauc_1/strided_slice_3/stack_1auc_1/strided_slice_3/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
f
auc_1/add_5Addauc_1/strided_slice_2auc_1/strided_slice_3*
T0*
_output_shapes	
:�
T
auc_1/truediv/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
\
auc_1/truedivRealDivauc_1/add_5auc_1/truediv/y*
T0*
_output_shapes	
:�
P
	auc_1/MulMul	auc_1/subauc_1/truediv*
T0*
_output_shapes	
:�
W
auc_1/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
j
auc_1/valueSum	auc_1/Mulauc_1/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
R
auc_1/add_6/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
X
auc_1/add_6Addauc_1/AssignAddauc_1/add_6/y*
T0*
_output_shapes	
:�
\
auc_1/add_7Addauc_1/AssignAddauc_1/AssignAdd_1*
T0*
_output_shapes	
:�
R
auc_1/add_8/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
T
auc_1/add_8Addauc_1/add_7auc_1/add_8/y*
T0*
_output_shapes	
:�
V
auc_1/div_2RealDivauc_1/add_6auc_1/add_8*
T0*
_output_shapes	
:�
^
auc_1/add_9Addauc_1/AssignAdd_3auc_1/AssignAdd_2*
T0*
_output_shapes	
:�
S
auc_1/add_10/yConst*
dtype0*
valueB
 *�7�5*
_output_shapes
: 
V
auc_1/add_10Addauc_1/add_9auc_1/add_10/y*
T0*
_output_shapes	
:�
]
auc_1/div_3RealDivauc_1/AssignAdd_3auc_1/add_10*
T0*
_output_shapes	
:�
e
auc_1/strided_slice_4/stackConst*
dtype0*
valueB: *
_output_shapes
:
h
auc_1/strided_slice_4/stack_1Const*
dtype0*
valueB:�*
_output_shapes
:
g
auc_1/strided_slice_4/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc_1/strided_slice_4StridedSliceauc_1/div_3auc_1/strided_slice_4/stackauc_1/strided_slice_4/stack_1auc_1/strided_slice_4/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
e
auc_1/strided_slice_5/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
auc_1/strided_slice_5/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
auc_1/strided_slice_5/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc_1/strided_slice_5StridedSliceauc_1/div_3auc_1/strided_slice_5/stackauc_1/strided_slice_5/stack_1auc_1/strided_slice_5/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
f
auc_1/sub_1Subauc_1/strided_slice_4auc_1/strided_slice_5*
T0*
_output_shapes	
:�
e
auc_1/strided_slice_6/stackConst*
dtype0*
valueB: *
_output_shapes
:
h
auc_1/strided_slice_6/stack_1Const*
dtype0*
valueB:�*
_output_shapes
:
g
auc_1/strided_slice_6/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc_1/strided_slice_6StridedSliceauc_1/div_2auc_1/strided_slice_6/stackauc_1/strided_slice_6/stack_1auc_1/strided_slice_6/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
e
auc_1/strided_slice_7/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
auc_1/strided_slice_7/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
auc_1/strided_slice_7/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
auc_1/strided_slice_7StridedSliceauc_1/div_2auc_1/strided_slice_7/stackauc_1/strided_slice_7/stack_1auc_1/strided_slice_7/stack_2*
new_axis_mask *
Index0*
_output_shapes	
:�*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
g
auc_1/add_11Addauc_1/strided_slice_6auc_1/strided_slice_7*
T0*
_output_shapes	
:�
V
auc_1/truediv_1/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
a
auc_1/truediv_1RealDivauc_1/add_11auc_1/truediv_1/y*
T0*
_output_shapes	
:�
V
auc_1/Mul_1Mulauc_1/sub_1auc_1/truediv_1*
T0*
_output_shapes	
:�
W
auc_1/Const_2Const*
dtype0*
valueB: *
_output_shapes
:
p
auc_1/update_opSumauc_1/Mul_1auc_1/Const_2*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
n
PlaceholderPlaceholder*
dtype0*
shape:���������	*'
_output_shapes
:���������	
�
input_3/MatMulMatMulPlaceholderinput/weights/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
h
input_3/addAddinput_3/MatMulinput/biases/read*
T0*(
_output_shapes
:����������
T
input_3/ReluReluinput_3/add*
T0*(
_output_shapes
:����������
�
layer0_3/MatMulMatMulinput_3/Relulayer0/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:��������� 
j
layer0_3/addAddlayer0_3/MatMullayer0/biases/read*
T0*'
_output_shapes
:��������� 
U
layer0_3/ReluRelulayer0_3/add*
T0*'
_output_shapes
:��������� 
�
layer1_3/MatMulMatMullayer0_3/Relulayer1/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
j
layer1_3/addAddlayer1_3/MatMullayer1/biases/read*
T0*'
_output_shapes
:���������
U
layer1_3/ReluRelulayer1_3/add*
T0*'
_output_shapes
:���������
�
output_3/MatMulMatMullayer1_3/Reluoutput/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
j
output_3/addAddoutput_3/MatMuloutput/biases/read*
T0*'
_output_shapes
:���������
T
	Softmax_2Softmaxoutput_3/add*
T0*'
_output_shapes
:���������
T
ArgMax_2/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
~
ArgMax_2ArgMax	Softmax_2ArgMax_2/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
p
Placeholder_1Placeholder*
dtype0*
shape:���������*'
_output_shapes
:���������
U
IdentityIdentityPlaceholder_1*
T0*'
_output_shapes
:���������
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*
dtype0*�
value�B�Bglobal_stepBinput/biasesBinput/biases/AdagradBinput/weightsBinput/weights/AdagradBlayer0/biasesBlayer0/biases/AdagradBlayer0/weightsBlayer0/weights/AdagradBlayer1/biasesBlayer1/biases/AdagradBlayer1/weightsBlayer1/weights/AdagradBoutput/biasesBoutput/biases/AdagradBoutput/weightsBoutput/weights/Adagrad*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B *
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_stepinput/biasesinput/biases/Adagradinput/weightsinput/weights/Adagradlayer0/biaseslayer0/biases/Adagradlayer0/weightslayer0/weights/Adagradlayer1/biaseslayer1/biases/Adagradlayer1/weightslayer1/weights/Adagradoutput/biasesoutput/biases/Adagradoutput/weightsoutput/weights/Adagrad*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/AssignAssignglobal_stepsave/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
r
save/RestoreV2_1/tensor_namesConst*
dtype0*!
valueBBinput/biases*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1Assigninput/biasessave/RestoreV2_1*
validate_shape(*
_class
loc:@input/biases*
use_locking(*
T0*
_output_shapes	
:�
z
save/RestoreV2_2/tensor_namesConst*
dtype0*)
value BBinput/biases/Adagrad*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_2Assigninput/biases/Adagradsave/RestoreV2_2*
validate_shape(*
_class
loc:@input/biases*
use_locking(*
T0*
_output_shapes	
:�
s
save/RestoreV2_3/tensor_namesConst*
dtype0*"
valueBBinput/weights*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_3Assigninput/weightssave/RestoreV2_3*
validate_shape(* 
_class
loc:@input/weights*
use_locking(*
T0*
_output_shapes
:		�
{
save/RestoreV2_4/tensor_namesConst*
dtype0**
value!BBinput/weights/Adagrad*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_4Assigninput/weights/Adagradsave/RestoreV2_4*
validate_shape(* 
_class
loc:@input/weights*
use_locking(*
T0*
_output_shapes
:		�
s
save/RestoreV2_5/tensor_namesConst*
dtype0*"
valueBBlayer0/biases*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_5Assignlayer0/biasessave/RestoreV2_5*
validate_shape(* 
_class
loc:@layer0/biases*
use_locking(*
T0*
_output_shapes
: 
{
save/RestoreV2_6/tensor_namesConst*
dtype0**
value!BBlayer0/biases/Adagrad*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6Assignlayer0/biases/Adagradsave/RestoreV2_6*
validate_shape(* 
_class
loc:@layer0/biases*
use_locking(*
T0*
_output_shapes
: 
t
save/RestoreV2_7/tensor_namesConst*
dtype0*#
valueBBlayer0/weights*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_7Assignlayer0/weightssave/RestoreV2_7*
validate_shape(*!
_class
loc:@layer0/weights*
use_locking(*
T0*
_output_shapes
:	� 
|
save/RestoreV2_8/tensor_namesConst*
dtype0*+
value"B Blayer0/weights/Adagrad*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_8Assignlayer0/weights/Adagradsave/RestoreV2_8*
validate_shape(*!
_class
loc:@layer0/weights*
use_locking(*
T0*
_output_shapes
:	� 
s
save/RestoreV2_9/tensor_namesConst*
dtype0*"
valueBBlayer1/biases*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_9Assignlayer1/biasessave/RestoreV2_9*
validate_shape(* 
_class
loc:@layer1/biases*
use_locking(*
T0*
_output_shapes
:
|
save/RestoreV2_10/tensor_namesConst*
dtype0**
value!BBlayer1/biases/Adagrad*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_10Assignlayer1/biases/Adagradsave/RestoreV2_10*
validate_shape(* 
_class
loc:@layer1/biases*
use_locking(*
T0*
_output_shapes
:
u
save/RestoreV2_11/tensor_namesConst*
dtype0*#
valueBBlayer1/weights*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_11Assignlayer1/weightssave/RestoreV2_11*
validate_shape(*!
_class
loc:@layer1/weights*
use_locking(*
T0*
_output_shapes

: 
}
save/RestoreV2_12/tensor_namesConst*
dtype0*+
value"B Blayer1/weights/Adagrad*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_12Assignlayer1/weights/Adagradsave/RestoreV2_12*
validate_shape(*!
_class
loc:@layer1/weights*
use_locking(*
T0*
_output_shapes

: 
t
save/RestoreV2_13/tensor_namesConst*
dtype0*"
valueBBoutput/biases*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_13Assignoutput/biasessave/RestoreV2_13*
validate_shape(* 
_class
loc:@output/biases*
use_locking(*
T0*
_output_shapes
:
|
save/RestoreV2_14/tensor_namesConst*
dtype0**
value!BBoutput/biases/Adagrad*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_14Assignoutput/biases/Adagradsave/RestoreV2_14*
validate_shape(* 
_class
loc:@output/biases*
use_locking(*
T0*
_output_shapes
:
u
save/RestoreV2_15/tensor_namesConst*
dtype0*#
valueBBoutput/weights*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_15Assignoutput/weightssave/RestoreV2_15*
validate_shape(*!
_class
loc:@output/weights*
use_locking(*
T0*
_output_shapes

:
}
save/RestoreV2_16/tensor_namesConst*
dtype0*+
value"B Boutput/weights/Adagrad*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_16Assignoutput/weights/Adagradsave/RestoreV2_16*
validate_shape(*!
_class
loc:@output/weights*
use_locking(*
T0*
_output_shapes

:
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16
R
loss_1/tagsConst*
dtype0*
valueB Bloss_1*
_output_shapes
: 
K
loss_1ScalarSummaryloss_1/tagsloss*
T0*
_output_shapes
: 
b
train_accuracy/tagsConst*
dtype0*
valueB Btrain_accuracy*
_output_shapes
: 
[
train_accuracyScalarSummarytrain_accuracy/tagsMean*
T0*
_output_shapes
: 
X
train_auc/tagsConst*
dtype0*
valueB B	train_auc*
_output_shapes
: 
Z
	train_aucScalarSummarytrain_auc/tagsauc/update_op*
T0*
_output_shapes
: 
h
validate_accuracy/tagsConst*
dtype0*"
valueB Bvalidate_accuracy*
_output_shapes
: 
c
validate_accuracyScalarSummaryvalidate_accuracy/tagsMean_1*
T0*
_output_shapes
: 
^
validate_auc/tagsConst*
dtype0*
valueB Bvalidate_auc*
_output_shapes
: 
b
validate_aucScalarSummaryvalidate_auc/tagsauc_1/update_op*
T0*
_output_shapes
: 
�
Merge/MergeSummaryMergeSummary"input_producer/fraction_of_32_full,shuffle_batch/fraction_over_100_of_1024_full$input_producer_1/fraction_of_32_full.shuffle_batch_1/fraction_over_100_of_1024_fullloss_1train_accuracy	train_aucvalidate_accuracyvalidate_auc*
_output_shapes
: *
N	
�
initNoOp^input/weights/Assign^input/biases/Assign^layer0/weights/Assign^layer0/biases/Assign^layer1/weights/Assign^layer1/biases/Assign^output/weights/Assign^output/biases/Assign^global_step/Assign^input/weights/Adagrad/Assign^input/biases/Adagrad/Assign^layer0/weights/Adagrad/Assign^layer0/biases/Adagrad/Assign^layer1/weights/Adagrad/Assign^layer1/biases/Adagrad/Assign^output/weights/Adagrad/Assign^output/biases/Adagrad/Assign
�
init_1NoOp^matching_filenames/Assign*^input_producer/limit_epochs/epochs/Assign^matching_filenames_1/Assign,^input_producer_1/limit_epochs/epochs/Assign^auc/true_positives/Assign^auc/false_negatives/Assign^auc/true_negatives/Assign^auc/false_positives/Assign^auc_1/true_positives/Assign^auc_1/false_negatives/Assign^auc_1/true_negatives/Assign^auc_1/false_positives/Assign

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_18d866ec86514ff993befc54445f42e1/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*
dtype0*�
value�B�Bglobal_stepBinput/biasesBinput/biases/AdagradBinput/weightsBinput/weights/AdagradBlayer0/biasesBlayer0/biases/AdagradBlayer0/weightsBlayer0/weights/AdagradBlayer1/biasesBlayer1/biases/AdagradBlayer1/weightsBlayer1/weights/AdagradBoutput/biasesBoutput/biases/AdagradBoutput/weightsBoutput/weights/Adagrad*
_output_shapes
:
�
save_1/SaveV2/shape_and_slicesConst*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B *
_output_shapes
:
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_stepinput/biasesinput/biases/Adagradinput/weightsinput/weights/Adagradlayer0/biaseslayer0/biases/Adagradlayer0/weightslayer0/weights/Adagradlayer1/biaseslayer1/biases/Adagradlayer1/weightslayer1/weights/Adagradoutput/biasesoutput/biases/Adagradoutput/weightsoutput/weights/Adagrad*
dtypes
2
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
q
save_1/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
t
save_1/RestoreV2_1/tensor_namesConst*
dtype0*!
valueBBinput/biases*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_1Assigninput/biasessave_1/RestoreV2_1*
validate_shape(*
_class
loc:@input/biases*
use_locking(*
T0*
_output_shapes	
:�
|
save_1/RestoreV2_2/tensor_namesConst*
dtype0*)
value BBinput/biases/Adagrad*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_2Assigninput/biases/Adagradsave_1/RestoreV2_2*
validate_shape(*
_class
loc:@input/biases*
use_locking(*
T0*
_output_shapes	
:�
u
save_1/RestoreV2_3/tensor_namesConst*
dtype0*"
valueBBinput/weights*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_3Assigninput/weightssave_1/RestoreV2_3*
validate_shape(* 
_class
loc:@input/weights*
use_locking(*
T0*
_output_shapes
:		�
}
save_1/RestoreV2_4/tensor_namesConst*
dtype0**
value!BBinput/weights/Adagrad*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_4Assigninput/weights/Adagradsave_1/RestoreV2_4*
validate_shape(* 
_class
loc:@input/weights*
use_locking(*
T0*
_output_shapes
:		�
u
save_1/RestoreV2_5/tensor_namesConst*
dtype0*"
valueBBlayer0/biases*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_5Assignlayer0/biasessave_1/RestoreV2_5*
validate_shape(* 
_class
loc:@layer0/biases*
use_locking(*
T0*
_output_shapes
: 
}
save_1/RestoreV2_6/tensor_namesConst*
dtype0**
value!BBlayer0/biases/Adagrad*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_6Assignlayer0/biases/Adagradsave_1/RestoreV2_6*
validate_shape(* 
_class
loc:@layer0/biases*
use_locking(*
T0*
_output_shapes
: 
v
save_1/RestoreV2_7/tensor_namesConst*
dtype0*#
valueBBlayer0/weights*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_7Assignlayer0/weightssave_1/RestoreV2_7*
validate_shape(*!
_class
loc:@layer0/weights*
use_locking(*
T0*
_output_shapes
:	� 
~
save_1/RestoreV2_8/tensor_namesConst*
dtype0*+
value"B Blayer0/weights/Adagrad*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_8Assignlayer0/weights/Adagradsave_1/RestoreV2_8*
validate_shape(*!
_class
loc:@layer0/weights*
use_locking(*
T0*
_output_shapes
:	� 
u
save_1/RestoreV2_9/tensor_namesConst*
dtype0*"
valueBBlayer1/biases*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_9Assignlayer1/biasessave_1/RestoreV2_9*
validate_shape(* 
_class
loc:@layer1/biases*
use_locking(*
T0*
_output_shapes
:
~
 save_1/RestoreV2_10/tensor_namesConst*
dtype0**
value!BBlayer1/biases/Adagrad*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_10Assignlayer1/biases/Adagradsave_1/RestoreV2_10*
validate_shape(* 
_class
loc:@layer1/biases*
use_locking(*
T0*
_output_shapes
:
w
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*#
valueBBlayer1/weights*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_11Assignlayer1/weightssave_1/RestoreV2_11*
validate_shape(*!
_class
loc:@layer1/weights*
use_locking(*
T0*
_output_shapes

: 

 save_1/RestoreV2_12/tensor_namesConst*
dtype0*+
value"B Blayer1/weights/Adagrad*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_12Assignlayer1/weights/Adagradsave_1/RestoreV2_12*
validate_shape(*!
_class
loc:@layer1/weights*
use_locking(*
T0*
_output_shapes

: 
v
 save_1/RestoreV2_13/tensor_namesConst*
dtype0*"
valueBBoutput/biases*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_13Assignoutput/biasessave_1/RestoreV2_13*
validate_shape(* 
_class
loc:@output/biases*
use_locking(*
T0*
_output_shapes
:
~
 save_1/RestoreV2_14/tensor_namesConst*
dtype0**
value!BBoutput/biases/Adagrad*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_14Assignoutput/biases/Adagradsave_1/RestoreV2_14*
validate_shape(* 
_class
loc:@output/biases*
use_locking(*
T0*
_output_shapes
:
w
 save_1/RestoreV2_15/tensor_namesConst*
dtype0*#
valueBBoutput/weights*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_15Assignoutput/weightssave_1/RestoreV2_15*
validate_shape(*!
_class
loc:@output/weights*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_16/tensor_namesConst*
dtype0*+
value"B Boutput/weights/Adagrad*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_16Assignoutput/weights/Adagradsave_1/RestoreV2_16*
validate_shape(*!
_class
loc:@output/weights*
use_locking(*
T0*
_output_shapes

:
�
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"�+
cond_context�+�*
�
5auc/assert_greater_equal/Assert/AssertGuard/cond_text5auc/assert_greater_equal/Assert/AssertGuard/pred_id:06auc/assert_greater_equal/Assert/AssertGuard/switch_t:0 *�
@auc/assert_greater_equal/Assert/AssertGuard/control_dependency:0
5auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
6auc/assert_greater_equal/Assert/AssertGuard/switch_t:0
�
7auc/assert_greater_equal/Assert/AssertGuard/cond_text_15auc/assert_greater_equal/Assert/AssertGuard/pred_id:06auc/assert_greater_equal/Assert/AssertGuard/switch_f:0*�
	Softmax:0
auc/Cast/x:0
auc/assert_greater_equal/All:0
;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
=auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
=auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
;auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
;auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
;auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3:0
Bauc/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
5auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
6auc/assert_greater_equal/Assert/AssertGuard/switch_f:0]
auc/assert_greater_equal/All:0;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0J
	Softmax:0=auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0M
auc/Cast/x:0=auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
�
2auc/assert_less_equal/Assert/AssertGuard/cond_text2auc/assert_less_equal/Assert/AssertGuard/pred_id:03auc/assert_less_equal/Assert/AssertGuard/switch_t:0 *�
=auc/assert_less_equal/Assert/AssertGuard/control_dependency:0
2auc/assert_less_equal/Assert/AssertGuard/pred_id:0
3auc/assert_less_equal/Assert/AssertGuard/switch_t:0
�
4auc/assert_less_equal/Assert/AssertGuard/cond_text_12auc/assert_less_equal/Assert/AssertGuard/pred_id:03auc/assert_less_equal/Assert/AssertGuard/switch_f:0*�
	Softmax:0
auc/Cast_1/x:0
auc/assert_less_equal/All:0
8auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
:auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
:auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
8auc/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
8auc/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
8auc/assert_less_equal/Assert/AssertGuard/Assert/data_3:0
?auc/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
2auc/assert_less_equal/Assert/AssertGuard/pred_id:0
3auc/assert_less_equal/Assert/AssertGuard/switch_f:0L
auc/Cast_1/x:0:auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0W
auc/assert_less_equal/All:08auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0G
	Softmax:0:auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
�
7auc_1/assert_greater_equal/Assert/AssertGuard/cond_text7auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:08auc_1/assert_greater_equal/Assert/AssertGuard/switch_t:0 *�
Bauc_1/assert_greater_equal/Assert/AssertGuard/control_dependency:0
7auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:0
8auc_1/assert_greater_equal/Assert/AssertGuard/switch_t:0
�
9auc_1/assert_greater_equal/Assert/AssertGuard/cond_text_17auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:08auc_1/assert_greater_equal/Assert/AssertGuard/switch_f:0*�
Softmax_1:0
auc_1/Cast/x:0
 auc_1/assert_greater_equal/All:0
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
?auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
?auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_3:0
Dauc_1/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
7auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:0
8auc_1/assert_greater_equal/Assert/AssertGuard/switch_f:0Q
auc_1/Cast/x:0?auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0a
 auc_1/assert_greater_equal/All:0=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0N
Softmax_1:0?auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
�
4auc_1/assert_less_equal/Assert/AssertGuard/cond_text4auc_1/assert_less_equal/Assert/AssertGuard/pred_id:05auc_1/assert_less_equal/Assert/AssertGuard/switch_t:0 *�
?auc_1/assert_less_equal/Assert/AssertGuard/control_dependency:0
4auc_1/assert_less_equal/Assert/AssertGuard/pred_id:0
5auc_1/assert_less_equal/Assert/AssertGuard/switch_t:0
�
6auc_1/assert_less_equal/Assert/AssertGuard/cond_text_14auc_1/assert_less_equal/Assert/AssertGuard/pred_id:05auc_1/assert_less_equal/Assert/AssertGuard/switch_f:0*�
Softmax_1:0
auc_1/Cast_1/x:0
auc_1/assert_less_equal/All:0
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
<auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
<auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_3:0
Aauc_1/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
4auc_1/assert_less_equal/Assert/AssertGuard/pred_id:0
5auc_1/assert_less_equal/Assert/AssertGuard/switch_f:0[
auc_1/assert_less_equal/All:0:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0P
auc_1/Cast_1/x:0<auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0K
Softmax_1:0<auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0"�
trainable_variables��
h
input/weights:0input/weights/Assigninput/weights/read:02)input/weights/Initializer/random_normal:0
d
input/biases:0input/biases/Assigninput/biases/read:02(input/biases/Initializer/random_normal:0
l
layer0/weights:0layer0/weights/Assignlayer0/weights/read:02*layer0/weights/Initializer/random_normal:0
h
layer0/biases:0layer0/biases/Assignlayer0/biases/read:02)layer0/biases/Initializer/random_normal:0
l
layer1/weights:0layer1/weights/Assignlayer1/weights/read:02*layer1/weights/Initializer/random_normal:0
h
layer1/biases:0layer1/biases/Assignlayer1/biases/read:02)layer1/biases/Initializer/random_normal:0
l
output/weights:0output/weights/Assignoutput/weights/read:02*output/weights/Initializer/random_normal:0
h
output/biases:0output/biases/Assignoutput/biases/read:02)output/biases/Initializer/random_normal:0"�
	variables��
h
input/weights:0input/weights/Assigninput/weights/read:02)input/weights/Initializer/random_normal:0
d
input/biases:0input/biases/Assigninput/biases/read:02(input/biases/Initializer/random_normal:0
l
layer0/weights:0layer0/weights/Assignlayer0/weights/read:02*layer0/weights/Initializer/random_normal:0
h
layer0/biases:0layer0/biases/Assignlayer0/biases/read:02)layer0/biases/Initializer/random_normal:0
l
layer1/weights:0layer1/weights/Assignlayer1/weights/read:02*layer1/weights/Initializer/random_normal:0
h
layer1/biases:0layer1/biases/Assignlayer1/biases/read:02)layer1/biases/Initializer/random_normal:0
l
output/weights:0output/weights/Assignoutput/weights/read:02*output/weights/Initializer/random_normal:0
h
output/biases:0output/biases/Assignoutput/biases/read:02)output/biases/Initializer/random_normal:0
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
�
input/weights/Adagrad:0input/weights/Adagrad/Assigninput/weights/Adagrad/read:02)input/weights/Adagrad/Initializer/Const:0
|
input/biases/Adagrad:0input/biases/Adagrad/Assigninput/biases/Adagrad/read:02(input/biases/Adagrad/Initializer/Const:0
�
layer0/weights/Adagrad:0layer0/weights/Adagrad/Assignlayer0/weights/Adagrad/read:02*layer0/weights/Adagrad/Initializer/Const:0
�
layer0/biases/Adagrad:0layer0/biases/Adagrad/Assignlayer0/biases/Adagrad/read:02)layer0/biases/Adagrad/Initializer/Const:0
�
layer1/weights/Adagrad:0layer1/weights/Adagrad/Assignlayer1/weights/Adagrad/read:02*layer1/weights/Adagrad/Initializer/Const:0
�
layer1/biases/Adagrad:0layer1/biases/Adagrad/Assignlayer1/biases/Adagrad/read:02)layer1/biases/Adagrad/Initializer/Const:0
�
output/weights/Adagrad:0output/weights/Adagrad/Assignoutput/weights/Adagrad/read:02*output/weights/Adagrad/Initializer/Const:0
�
output/biases/Adagrad:0output/biases/Adagrad/Assignoutput/biases/Adagrad/read:02)output/biases/Adagrad/Initializer/Const:0"
train_op
	
Adagrad"�
queue_runners��
�
input_producer)input_producer/input_producer_EnqueueMany#input_producer/input_producer_Close"%input_producer/input_producer_Close_1*
�
"shuffle_batch/random_shuffle_queue*shuffle_batch/random_shuffle_queue_enqueue(shuffle_batch/random_shuffle_queue_Close"*shuffle_batch/random_shuffle_queue_Close_1*
�
input_producer_1-input_producer_1/input_producer_1_EnqueueMany'input_producer_1/input_producer_1_Close")input_producer_1/input_producer_1_Close_1*
�
$shuffle_batch_1/random_shuffle_queue,shuffle_batch_1/random_shuffle_queue_enqueue*shuffle_batch_1/random_shuffle_queue_Close",shuffle_batch_1/random_shuffle_queue_Close_1*"$
legacy_init_op

legacy_init_op"�
local_variables��
p
matching_filenames:0matching_filenames/Assignmatching_filenames/read:02"matching_filenames/MatchingFiles:0
�
$input_producer/limit_epochs/epochs:0)input_producer/limit_epochs/epochs/Assign)input_producer/limit_epochs/epochs/read:02#input_producer/limit_epochs/Const:0
x
matching_filenames_1:0matching_filenames_1/Assignmatching_filenames_1/read:02$matching_filenames_1/MatchingFiles:0
�
&input_producer_1/limit_epochs/epochs:0+input_producer_1/limit_epochs/epochs/Assign+input_producer_1/limit_epochs/epochs/read:02%input_producer_1/limit_epochs/Const:0
t
auc/true_positives:0auc/true_positives/Assignauc/true_positives/read:02&auc/true_positives/Initializer/zeros:0
x
auc/false_negatives:0auc/false_negatives/Assignauc/false_negatives/read:02'auc/false_negatives/Initializer/zeros:0
t
auc/true_negatives:0auc/true_negatives/Assignauc/true_negatives/read:02&auc/true_negatives/Initializer/zeros:0
x
auc/false_positives:0auc/false_positives/Assignauc/false_positives/read:02'auc/false_positives/Initializer/zeros:0
|
auc_1/true_positives:0auc_1/true_positives/Assignauc_1/true_positives/read:02(auc_1/true_positives/Initializer/zeros:0
�
auc_1/false_negatives:0auc_1/false_negatives/Assignauc_1/false_negatives/read:02)auc_1/false_negatives/Initializer/zeros:0
|
auc_1/true_negatives:0auc_1/true_negatives/Assignauc_1/true_negatives/read:02(auc_1/true_negatives/Initializer/zeros:0
�
auc_1/false_positives:0auc_1/false_positives/Assignauc_1/false_positives/read:02)auc_1/false_positives/Initializer/zeros:0"�
	summaries�
�
$input_producer/fraction_of_32_full:0
.shuffle_batch/fraction_over_100_of_1024_full:0
&input_producer_1/fraction_of_32_full:0
0shuffle_batch_1/fraction_over_100_of_1024_full:0
loss_1:0
train_accuracy:0
train_auc:0
validate_accuracy:0
validate_auc:0*�
serving_default�
.
keys&
Placeholder_1:0���������
0
features$
Placeholder:0���������	)
keys!

Identity:0���������+

prediction

ArgMax_2:0	���������-
softmax"
Softmax_2:0���������tensorflow/serving/predict