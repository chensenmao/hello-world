Ć	
Ó6ľ6
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
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
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
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
8
Const
output"dtype"
valuetensor"
dtypetype
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

f
	DecodeRaw	
bytes
output"out_type"
out_typetype:
2		"
little_endianbool(
B
Equal
x"T
y"T
z
"
Ttype:
2	

Ž
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint˙˙˙˙˙˙˙˙˙"
	containerstring "
shared_namestring 
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint˙˙˙˙˙˙˙˙˙"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
í
ParseSingleExample

serialized
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense"

num_sparseint("
sparse_keyslist(string)("

dense_keyslist(string)("%
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
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( 

QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint˙˙˙˙˙˙˙˙˙
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint˙˙˙˙˙˙˙˙˙
y
QueueEnqueueV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint˙˙˙˙˙˙˙˙˙
&
QueueSizeV2

handle
size
Y
RandomShuffle

value"T
output"T"
seedint "
seed2int "	
Ttype
ř
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint˙˙˙˙˙˙˙˙˙"
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
J
ReaderReadV2
reader_handle
queue_handle
key	
value
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
|
TFRecordReaderV2
reader_handle"
	containerstring "
shared_namestring "
compression_typestring 
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.10.02
b'unknown'ë

PlaceholderPlaceholder*&
shape:˙˙˙˙˙˙˙˙˙*
dtype0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
o
truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
Z
truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
˘
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
T0*
dtype0*
seed2 *&
_output_shapes
: *

seed 

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*&
_output_shapes
: *
T0
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*&
_output_shapes
: 

Variable
VariableV2*
dtype0*
	container *&
_output_shapes
: *
shape: *
shared_name 
Ź
Variable/AssignAssignVariabletruncated_normal*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
q
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*&
_output_shapes
: 
R
ConstConst*
valueB *ÍĚĚ=*
dtype0*
_output_shapes
: 
v

Variable_1
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 

Variable_1/AssignAssign
Variable_1Const*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: *
use_locking(
k
Variable_1/readIdentity
Variable_1*
_output_shapes
: *
T0*
_class
loc:@Variable_1
f
Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
x
ReshapeReshapePlaceholderReshape/shape*
T0*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
Conv2DConv2DReshapeVariable/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
_
addAddConv2DVariable_1/read*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
M
TanhTanhadd*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
¤
MaxPoolMaxPoolTanh*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
T0
q
truncated_normal_1/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:
\
truncated_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_1/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
Ś
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
T0*
dtype0*
seed2 *&
_output_shapes
: @*

seed 

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*&
_output_shapes
: @*
T0
{
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*&
_output_shapes
: @*
T0


Variable_2
VariableV2*
dtype0*
	container *&
_output_shapes
: @*
shape: @*
shared_name 
´
Variable_2/AssignAssign
Variable_2truncated_normal_1*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
w
Variable_2/readIdentity
Variable_2*&
_output_shapes
: @*
T0*
_class
loc:@Variable_2
T
Const_1Const*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@
v

Variable_3
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:@*
shape:@

Variable_3/AssignAssign
Variable_3Const_1*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_3
k
Variable_3/readIdentity
Variable_3*
_output_shapes
:@*
T0*
_class
loc:@Variable_3
Ô
Conv2D_1Conv2DMaxPoolVariable_2/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@
a
add_1AddConv2D_1Variable_3/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@
O
Tanh_1Tanhadd_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@
¨
	MaxPool_1MaxPoolTanh_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
q
truncated_normal_2/shapeConst*%
valueB"      @   `   *
dtype0*
_output_shapes
:
\
truncated_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_2/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=
Ś
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
T0*
dtype0*
seed2 *&
_output_shapes
:@`*

seed 

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0*&
_output_shapes
:@`
{
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0*&
_output_shapes
:@`


Variable_4
VariableV2*
shared_name *
dtype0*
	container *&
_output_shapes
:@`*
shape:@`
´
Variable_4/AssignAssign
Variable_4truncated_normal_2*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*&
_output_shapes
:@`
w
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4*&
_output_shapes
:@`
T
Const_2Const*
valueB`*ÍĚĚ=*
dtype0*
_output_shapes
:`
v

Variable_5
VariableV2*
dtype0*
	container *
_output_shapes
:`*
shape:`*
shared_name 

Variable_5/AssignAssign
Variable_5Const_2*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:`
k
Variable_5/readIdentity
Variable_5*
_output_shapes
:`*
T0*
_class
loc:@Variable_5
Ö
Conv2D_2Conv2D	MaxPool_1Variable_4/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
a
add_2AddConv2D_2Variable_5/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
O
Tanh_2Tanhadd_2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0
¨
	MaxPool_2MaxPoolTanh_2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
q
truncated_normal_3/shapeConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
\
truncated_normal_3/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_3/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
Ś
"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
T0*
dtype0*
seed2 *&
_output_shapes
:``*

seed 

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*&
_output_shapes
:``*
T0
{
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*&
_output_shapes
:``


Variable_6
VariableV2*
shape:``*
shared_name *
dtype0*
	container *&
_output_shapes
:``
´
Variable_6/AssignAssign
Variable_6truncated_normal_3*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*&
_output_shapes
:``
w
Variable_6/readIdentity
Variable_6*&
_output_shapes
:``*
T0*
_class
loc:@Variable_6
T
Const_3Const*
valueB`*ÍĚĚ=*
dtype0*
_output_shapes
:`
v

Variable_7
VariableV2*
shape:`*
shared_name *
dtype0*
	container *
_output_shapes
:`

Variable_7/AssignAssign
Variable_7Const_3*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`
k
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7*
_output_shapes
:`
Ö
Conv2D_3Conv2D	MaxPool_2Variable_6/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
a
add_3AddConv2D_3Variable_7/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
O
Tanh_3Tanhadd_3*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
¨
	MaxPool_3MaxPoolTanh_3*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
q
truncated_normal_4/shapeConst*%
valueB"      `      *
dtype0*
_output_shapes
:
\
truncated_normal_4/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_4/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
§
"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*

seed *
T0*
dtype0*
seed2 *'
_output_shapes
:`

truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
T0*'
_output_shapes
:`
|
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*'
_output_shapes
:`*
T0


Variable_8
VariableV2*
dtype0*
	container *'
_output_shapes
:`*
shape:`*
shared_name 
ľ
Variable_8/AssignAssign
Variable_8truncated_normal_4*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*'
_output_shapes
:`
x
Variable_8/readIdentity
Variable_8*
T0*
_class
loc:@Variable_8*'
_output_shapes
:`
V
Const_4Const*
valueB*ÍĚĚ=*
dtype0*
_output_shapes	
:
x

Variable_9
VariableV2*
dtype0*
	container *
_output_shapes	
:*
shape:*
shared_name 

Variable_9/AssignAssign
Variable_9Const_4*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:
l
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9*
_output_shapes	
:
×
Conv2D_4Conv2D	MaxPool_3Variable_8/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
b
add_4AddConv2D_4Variable_9/read*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
P
Tanh_4Tanhadd_4*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
	MaxPool_4MaxPoolTanh_4*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
strides
*
data_formatNHWC
q
truncated_normal_5/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
\
truncated_normal_5/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
^
truncated_normal_5/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
¨
"truncated_normal_5/TruncatedNormalTruncatedNormaltruncated_normal_5/shape*

seed *
T0*
dtype0*
seed2 *(
_output_shapes
:

truncated_normal_5/mulMul"truncated_normal_5/TruncatedNormaltruncated_normal_5/stddev*
T0*(
_output_shapes
:
}
truncated_normal_5Addtruncated_normal_5/multruncated_normal_5/mean*
T0*(
_output_shapes
:

Variable_10
VariableV2*
dtype0*
	container *(
_output_shapes
:*
shape:*
shared_name 
š
Variable_10/AssignAssignVariable_10truncated_normal_5*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(*(
_output_shapes
:
|
Variable_10/readIdentityVariable_10*(
_output_shapes
:*
T0*
_class
loc:@Variable_10
V
Const_5Const*
dtype0*
_output_shapes	
:*
valueB*ÍĚĚ=
y
Variable_11
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes	
:
Ą
Variable_11/AssignAssignVariable_11Const_5*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:*
use_locking(
o
Variable_11/readIdentityVariable_11*
T0*
_class
loc:@Variable_11*
_output_shapes	
:
Ř
Conv2D_5Conv2D	MaxPool_4Variable_10/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
c
add_5AddConv2D_5Variable_11/read*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
P
Tanh_5Tanhadd_5*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
	MaxPool_5MaxPoolTanh_5*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
i
truncated_normal_6/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
\
truncated_normal_6/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_6/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_6/TruncatedNormalTruncatedNormaltruncated_normal_6/shape*
T0*
dtype0*
seed2 *
_output_shapes
:	@*

seed 

truncated_normal_6/mulMul"truncated_normal_6/TruncatedNormaltruncated_normal_6/stddev*
T0*
_output_shapes
:	@
t
truncated_normal_6Addtruncated_normal_6/multruncated_normal_6/mean*
T0*
_output_shapes
:	@

Variable_12
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:	@*
shape:	@
°
Variable_12/AssignAssignVariable_12truncated_normal_6*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(*
_output_shapes
:	@
s
Variable_12/readIdentityVariable_12*
T0*
_class
loc:@Variable_12*
_output_shapes
:	@
T
Const_6Const*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@
w
Variable_13
VariableV2*
shape:@*
shared_name *
dtype0*
	container *
_output_shapes
:@
 
Variable_13/AssignAssignVariable_13Const_6*
T0*
_class
loc:@Variable_13*
validate_shape(*
_output_shapes
:@*
use_locking(
n
Variable_13/readIdentityVariable_13*
T0*
_class
loc:@Variable_13*
_output_shapes
:@
`
Reshape_1/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
q
	Reshape_1Reshape	MaxPool_5Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

MatMulMatMul	Reshape_1Variable_12/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
X
add_6AddMatMulVariable_13/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
G
Tanh_6Tanhadd_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
R
Placeholder_2Placeholder*
shape:*
dtype0*
_output_shapes
:
S
dropout/ShapeShapeTanh_6*
T0*
out_type0*
_output_shapes
:
_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
dtype0*
seed2 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*

seed *
T0
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
T0*
_output_shapes
: 

dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
\
dropout/addAddPlaceholder_2dropout/random_uniform*
_output_shapes
:*
T0
F
dropout/FloorFloordropout/add*
T0*
_output_shapes
:
P
dropout/divRealDivTanh_6Placeholder_2*
T0*
_output_shapes
:
`
dropout/mulMuldropout/divdropout/Floor*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
i
truncated_normal_7/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
\
truncated_normal_7/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_7/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_7/TruncatedNormalTruncatedNormaltruncated_normal_7/shape*
T0*
dtype0*
seed2 *
_output_shapes

:@*

seed 

truncated_normal_7/mulMul"truncated_normal_7/TruncatedNormaltruncated_normal_7/stddev*
T0*
_output_shapes

:@
s
truncated_normal_7Addtruncated_normal_7/multruncated_normal_7/mean*
T0*
_output_shapes

:@

Variable_14
VariableV2*
shape
:@*
shared_name *
dtype0*
	container *
_output_shapes

:@
Ż
Variable_14/AssignAssignVariable_14truncated_normal_7*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*
_class
loc:@Variable_14
r
Variable_14/readIdentityVariable_14*
_output_shapes

:@*
T0*
_class
loc:@Variable_14
T
Const_7Const*
valueB*ÍĚĚ=*
dtype0*
_output_shapes
:
w
Variable_15
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
 
Variable_15/AssignAssignVariable_15Const_7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_15
n
Variable_15/readIdentityVariable_15*
_output_shapes
:*
T0*
_class
loc:@Variable_15

MatMul_1MatMuldropout/mulVariable_14/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
add_7AddMatMul_1Variable_15/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
J
y_convSoftmaxadd_7*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
q
input_producer/ConstConst*)
value BBbaby_train.tfrecords*
dtype0*
_output_shapes
:
U
input_producer/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
Z
input_producer/Greater/yConst*
value	B : *
dtype0*
_output_shapes
: 
q
input_producer/GreaterGreaterinput_producer/Sizeinput_producer/Greater/y*
_output_shapes
: *
T0

input_producer/Assert/ConstConst*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 

#input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 

input_producer/Assert/AssertAssertinput_producer/Greater#input_producer/Assert/Assert/data_0*

T
2*
	summarize
}
input_producer/IdentityIdentityinput_producer/Const^input_producer/Assert/Assert*
T0*
_output_shapes
:

input_producer/RandomShuffleRandomShuffleinput_producer/Identity*
T0*
seed2 *
_output_shapes
:*

seed 

input_producerFIFOQueueV2*
_output_shapes
: *
component_types
2*
shapes
: *
shared_name *
capacity *
	container 

)input_producer/input_producer_EnqueueManyQueueEnqueueManyV2input_producerinput_producer/RandomShuffle*

timeout_ms˙˙˙˙˙˙˙˙˙*
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

SrcT0*

DstT0*
_output_shapes
: 
Y
input_producer/mul/yConst*
valueB
 *   =*
dtype0*
_output_shapes
: 
h
input_producer/mulMulinput_producer/ToFloatinput_producer/mul/y*
_output_shapes
: *
T0

'input_producer/fraction_of_32_full/tagsConst*3
value*B( B"input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 

"input_producer/fraction_of_32_fullScalarSummary'input_producer/fraction_of_32_full/tagsinput_producer/mul*
T0*
_output_shapes
: 
x
TFRecordReaderV2TFRecordReaderV2*
compression_type *
shared_name *
	container *
_output_shapes
: 
X
ReaderReadV2ReaderReadV2TFRecordReaderV2input_producer*
_output_shapes
: : 
[
ParseSingleExample/ConstConst*
dtype0*
_output_shapes
: *
valueB 
]
ParseSingleExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
 
%ParseSingleExample/ParseSingleExampleParseSingleExampleReaderReadV2:1ParseSingleExample/ConstParseSingleExample/Const_1* 

dense_keys
img_rawlabel*
_output_shapes
: : *
dense_shapes
: : *
sparse_types
 *
sparse_keys
 *
Tdense
2	*

num_sparse 

	DecodeRaw	DecodeRaw%ParseSingleExample/ParseSingleExample*
little_endian(*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
Reshape_2/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:
m
	Reshape_2Reshape	DecodeRawReshape_2/shape*$
_output_shapes
:*
T0*
Tshape0
U
CastCast	Reshape_2*

SrcT0*

DstT0*$
_output_shapes
:
J
mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *;
F
mulMulCastmul/y*
T0*$
_output_shapes
:
J
sub/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
E
subSubmulsub/y*$
_output_shapes
:*
T0
g
Cast_1Cast'ParseSingleExample/ParseSingleExample:1*

DstT0*
_output_shapes
: *

SrcT0	
U
one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
O
one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 

one_hotOneHotCast_1one_hot/depthone_hot/on_valueone_hot/off_value*
T0*
TI0*
axis˙˙˙˙˙˙˙˙˙*
_output_shapes
:
U
shuffle_batch/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
ů
"shuffle_batch/random_shuffle_queueRandomShuffleQueueV2*
component_types
2*
_output_shapes
: *"
shapes
::*

seed *
shared_name *
min_after_dequeueÖ*
capacity˘*
	container *
seed2 
 
*shuffle_batch/random_shuffle_queue_enqueueQueueEnqueueV2"shuffle_batch/random_shuffle_queuesubone_hot*

timeout_ms˙˙˙˙˙˙˙˙˙*
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
V
shuffle_batch/sub/yConst*
dtype0*
_output_shapes
: *
value
B :Ö
w
shuffle_batch/subSub'shuffle_batch/random_shuffle_queue_Sizeshuffle_batch/sub/y*
T0*
_output_shapes
: 
Y
shuffle_batch/Maximum/xConst*
value	B : *
dtype0*
_output_shapes
: 
m
shuffle_batch/MaximumMaximumshuffle_batch/Maximum/xshuffle_batch/sub*
T0*
_output_shapes
: 
d
shuffle_batch/ToFloatCastshuffle_batch/Maximum*

SrcT0*

DstT0*
_output_shapes
: 
X
shuffle_batch/mul/yConst*
valueB
 *5x;*
dtype0*
_output_shapes
: 
e
shuffle_batch/mulMulshuffle_batch/ToFloatshuffle_batch/mul/y*
T0*
_output_shapes
: 

0shuffle_batch/fraction_over_470_of_460_full/tagsConst*<
value3B1 B+shuffle_batch/fraction_over_470_of_460_full*
dtype0*
_output_shapes
: 
˘
+shuffle_batch/fraction_over_470_of_460_fullScalarSummary0shuffle_batch/fraction_over_470_of_460_full/tagsshuffle_batch/mul*
_output_shapes
: *
T0
Q
shuffle_batch/nConst*
dtype0*
_output_shapes
: *
value	B :
Â
shuffle_batchQueueDequeueManyV2"shuffle_batch/random_shuffle_queueshuffle_batch/n*

timeout_ms˙˙˙˙˙˙˙˙˙*
component_types
2*2
_output_shapes 
::
\
clip_by_value/Minimum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
clip_by_value/MinimumMinimumy_convclip_by_value/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
clip_by_value/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
r
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
LogLogclip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
R
mul_1MulPlaceholder_1Log*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
Const_8Const*
valueB"       *
dtype0*
_output_shapes
:
X
SumSummul_1Const_8*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
0
NegNegSum*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
N
gradients/Neg_grad/NegNeggradients/Fill*
T0*
_output_shapes
: 
q
 gradients/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
]
gradients/Sum_grad/ShapeShapemul_1*
_output_shapes
:*
T0*
out_type0

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
gradients/mul_1_grad/ShapeShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
_
gradients/mul_1_grad/Shape_1ShapeLog*
T0*
out_type0*
_output_shapes
:
ş
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
o
gradients/mul_1_grad/MulMulgradients/Sum_grad/TileLog*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
gradients/mul_1_grad/Mul_1MulPlaceholder_1gradients/Sum_grad/Tile*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ł
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
â
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1

gradients/Log_grad/Reciprocal
Reciprocalclip_by_value0^gradients/mul_1_grad/tuple/control_dependency_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/Log_grad/mulMul/gradients/mul_1_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:
g
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
z
$gradients/clip_by_value_grad/Shape_2Shapegradients/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
m
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ž
"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0

)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/Minimumclip_by_value/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ć
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqualgradients/Log_grad/mul"gradients/clip_by_value_grad/zeros*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zerosgradients/Log_grad/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ľ
$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ş
&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1

5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1*
_output_shapes
: 
p
*gradients/clip_by_value/Minimum_grad/ShapeShapey_conv*
_output_shapes
:*
T0*
out_type0
o
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Ą
,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
u
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ö
*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualy_convclip_by_value/Minimum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ú
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ü
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Í
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ţ
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Â
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
˘
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
_output_shapes
: *
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1

gradients/y_conv_grad/mulMul=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyy_conv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
+gradients/y_conv_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ł
gradients/y_conv_grad/SumSumgradients/y_conv_grad/mul+gradients/y_conv_grad/Sum/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( 
t
#gradients/y_conv_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"˙˙˙˙   
¨
gradients/y_conv_grad/ReshapeReshapegradients/y_conv_grad/Sum#gradients/y_conv_grad/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
°
gradients/y_conv_grad/subSub=gradients/clip_by_value/Minimum_grad/tuple/control_dependencygradients/y_conv_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
gradients/y_conv_grad/mul_1Mulgradients/y_conv_grad/suby_conv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
gradients/add_7_grad/ShapeShapeMatMul_1*
T0*
out_type0*
_output_shapes
:
f
gradients/add_7_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ş
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¨
gradients/add_7_grad/SumSumgradients/y_conv_grad/mul_1*gradients/add_7_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ź
gradients/add_7_grad/Sum_1Sumgradients/y_conv_grad/mul_1,gradients/add_7_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
â
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_7_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
_output_shapes
:*
T0*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1
Á
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyVariable_14/read*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_b(
ľ
 gradients/MatMul_1_grad/MatMul_1MatMuldropout/mul-gradients/add_7_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
ě
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
é
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:@
t
 gradients/dropout/mul_grad/ShapeShapedropout/div*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
"gradients/dropout/mul_grad/Shape_1Shapedropout/Floor*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
0gradients/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/mul_grad/Shape"gradients/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/dropout/mul_grad/MulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout/Floor*
T0*
_output_shapes
:
ˇ
gradients/dropout/mul_grad/SumSumgradients/dropout/mul_grad/Mul0gradients/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
 
"gradients/dropout/mul_grad/ReshapeReshapegradients/dropout/mul_grad/Sum gradients/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:

 gradients/dropout/mul_grad/Mul_1Muldropout/div0gradients/MatMul_1_grad/tuple/control_dependency*
T0*
_output_shapes
:
˝
 gradients/dropout/mul_grad/Sum_1Sum gradients/dropout/mul_grad/Mul_12gradients/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ś
$gradients/dropout/mul_grad/Reshape_1Reshape gradients/dropout/mul_grad/Sum_1"gradients/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

+gradients/dropout/mul_grad/tuple/group_depsNoOp#^gradients/dropout/mul_grad/Reshape%^gradients/dropout/mul_grad/Reshape_1
ë
3gradients/dropout/mul_grad/tuple/control_dependencyIdentity"gradients/dropout/mul_grad/Reshape,^gradients/dropout/mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dropout/mul_grad/Reshape*
_output_shapes
:
ń
5gradients/dropout/mul_grad/tuple/control_dependency_1Identity$gradients/dropout/mul_grad/Reshape_1,^gradients/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/dropout/mul_grad/Reshape_1
f
 gradients/dropout/div_grad/ShapeShapeTanh_6*
T0*
out_type0*
_output_shapes
:
x
"gradients/dropout/div_grad/Shape_1ShapePlaceholder_2*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
0gradients/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/div_grad/Shape"gradients/dropout/div_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

"gradients/dropout/div_grad/RealDivRealDiv3gradients/dropout/mul_grad/tuple/control_dependencyPlaceholder_2*
T0*
_output_shapes
:
ť
gradients/dropout/div_grad/SumSum"gradients/dropout/div_grad/RealDiv0gradients/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ż
"gradients/dropout/div_grad/ReshapeReshapegradients/dropout/div_grad/Sum gradients/dropout/div_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
_
gradients/dropout/div_grad/NegNegTanh_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

$gradients/dropout/div_grad/RealDiv_1RealDivgradients/dropout/div_grad/NegPlaceholder_2*
_output_shapes
:*
T0

$gradients/dropout/div_grad/RealDiv_2RealDiv$gradients/dropout/div_grad/RealDiv_1Placeholder_2*
_output_shapes
:*
T0
Ł
gradients/dropout/div_grad/mulMul3gradients/dropout/mul_grad/tuple/control_dependency$gradients/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ť
 gradients/dropout/div_grad/Sum_1Sumgradients/dropout/div_grad/mul2gradients/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ś
$gradients/dropout/div_grad/Reshape_1Reshape gradients/dropout/div_grad/Sum_1"gradients/dropout/div_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0

+gradients/dropout/div_grad/tuple/group_depsNoOp#^gradients/dropout/div_grad/Reshape%^gradients/dropout/div_grad/Reshape_1
ú
3gradients/dropout/div_grad/tuple/control_dependencyIdentity"gradients/dropout/div_grad/Reshape,^gradients/dropout/div_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*5
_class+
)'loc:@gradients/dropout/div_grad/Reshape
ń
5gradients/dropout/div_grad/tuple/control_dependency_1Identity$gradients/dropout/div_grad/Reshape_1,^gradients/dropout/div_grad/tuple/group_deps*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/dropout/div_grad/Reshape_1

gradients/Tanh_6_grad/TanhGradTanhGradTanh_63gradients/dropout/div_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
`
gradients/add_6_grad/ShapeShapeMatMul*
T0*
out_type0*
_output_shapes
:
f
gradients/add_6_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
ş
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_6_grad/SumSumgradients/Tanh_6_grad/TanhGrad*gradients/add_6_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ż
gradients/add_6_grad/Sum_1Sumgradients/Tanh_6_grad/TanhGrad,gradients/add_6_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
â
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_6_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ű
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1*
_output_shapes
:@
Ŕ
gradients/MatMul_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyVariable_12/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
gradients/MatMul_grad/MatMul_1MatMul	Reshape_1-gradients/add_6_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	@*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes
:	@*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
g
gradients/Reshape_1_grad/ShapeShape	MaxPool_5*
T0*
out_type0*
_output_shapes
:
Ä
 gradients/Reshape_1_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
$gradients/MaxPool_5_grad/MaxPoolGradMaxPoolGradTanh_5	MaxPool_5 gradients/Reshape_1_grad/Reshape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME

gradients/Tanh_5_grad/TanhGradTanhGradTanh_5$gradients/MaxPool_5_grad/MaxPoolGrad*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
gradients/add_5_grad/ShapeShapeConv2D_5*
T0*
out_type0*
_output_shapes
:
g
gradients/add_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
ş
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_5_grad/SumSumgradients/Tanh_5_grad/TanhGrad*gradients/add_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ś
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
gradients/add_5_grad/Sum_1Sumgradients/Tanh_5_grad/TanhGrad,gradients/add_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
ë
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
_output_shapes	
:*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1

gradients/Conv2D_5_grad/ShapeNShapeN	MaxPool_4Variable_10/read*
T0*
out_type0*
N* 
_output_shapes
::
Ě
+gradients/Conv2D_5_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_5_grad/ShapeNVariable_10/read-gradients/add_5_grad/tuple/control_dependency*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Á
,gradients/Conv2D_5_grad/Conv2DBackpropFilterConv2DBackpropFilter	MaxPool_4 gradients/Conv2D_5_grad/ShapeN:1-gradients/add_5_grad/tuple/control_dependency*(
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

(gradients/Conv2D_5_grad/tuple/group_depsNoOp-^gradients/Conv2D_5_grad/Conv2DBackpropFilter,^gradients/Conv2D_5_grad/Conv2DBackpropInput

0gradients/Conv2D_5_grad/tuple/control_dependencyIdentity+gradients/Conv2D_5_grad/Conv2DBackpropInput)^gradients/Conv2D_5_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_5_grad/Conv2DBackpropInput*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

2gradients/Conv2D_5_grad/tuple/control_dependency_1Identity,gradients/Conv2D_5_grad/Conv2DBackpropFilter)^gradients/Conv2D_5_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_5_grad/Conv2DBackpropFilter*(
_output_shapes
:

$gradients/MaxPool_4_grad/MaxPoolGradMaxPoolGradTanh_4	MaxPool_40gradients/Conv2D_5_grad/tuple/control_dependency*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME

gradients/Tanh_4_grad/TanhGradTanhGradTanh_4$gradients/MaxPool_4_grad/MaxPoolGrad*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
gradients/add_4_grad/ShapeShapeConv2D_4*
T0*
out_type0*
_output_shapes
:
g
gradients/add_4_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ş
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ť
gradients/add_4_grad/SumSumgradients/Tanh_4_grad/TanhGrad*gradients/add_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ś
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
gradients/add_4_grad/Sum_1Sumgradients/Tanh_4_grad/TanhGrad,gradients/add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
_output_shapes	
:*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
ë
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
Ü
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
_output_shapes	
:

gradients/Conv2D_4_grad/ShapeNShapeN	MaxPool_3Variable_8/read*
N* 
_output_shapes
::*
T0*
out_type0
Ę
+gradients/Conv2D_4_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_4_grad/ShapeNVariable_8/read-gradients/add_4_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ŕ
,gradients/Conv2D_4_grad/Conv2DBackpropFilterConv2DBackpropFilter	MaxPool_3 gradients/Conv2D_4_grad/ShapeN:1-gradients/add_4_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:`*
	dilations


(gradients/Conv2D_4_grad/tuple/group_depsNoOp-^gradients/Conv2D_4_grad/Conv2DBackpropFilter,^gradients/Conv2D_4_grad/Conv2DBackpropInput

0gradients/Conv2D_4_grad/tuple/control_dependencyIdentity+gradients/Conv2D_4_grad/Conv2DBackpropInput)^gradients/Conv2D_4_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_4_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`

2gradients/Conv2D_4_grad/tuple/control_dependency_1Identity,gradients/Conv2D_4_grad/Conv2DBackpropFilter)^gradients/Conv2D_4_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_4_grad/Conv2DBackpropFilter*'
_output_shapes
:`

$gradients/MaxPool_3_grad/MaxPoolGradMaxPoolGradTanh_3	MaxPool_30gradients/Conv2D_4_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`

gradients/Tanh_3_grad/TanhGradTanhGradTanh_3$gradients/MaxPool_3_grad/MaxPoolGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
T0
b
gradients/add_3_grad/ShapeShapeConv2D_3*
T0*
out_type0*
_output_shapes
:
f
gradients/add_3_grad/Shape_1Const*
valueB:`*
dtype0*
_output_shapes
:
ş
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_3_grad/SumSumgradients/Tanh_3_grad/TanhGrad*gradients/add_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ľ
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ż
gradients/add_3_grad/Sum_1Sumgradients/Tanh_3_grad/TanhGrad,gradients/add_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:`
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
ę
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ű
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1*
_output_shapes
:`

gradients/Conv2D_3_grad/ShapeNShapeN	MaxPool_2Variable_6/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
+gradients/Conv2D_3_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_3_grad/ShapeNVariable_6/read-gradients/add_3_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ż
,gradients/Conv2D_3_grad/Conv2DBackpropFilterConv2DBackpropFilter	MaxPool_2 gradients/Conv2D_3_grad/ShapeN:1-gradients/add_3_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

(gradients/Conv2D_3_grad/tuple/group_depsNoOp-^gradients/Conv2D_3_grad/Conv2DBackpropFilter,^gradients/Conv2D_3_grad/Conv2DBackpropInput

0gradients/Conv2D_3_grad/tuple/control_dependencyIdentity+gradients/Conv2D_3_grad/Conv2DBackpropInput)^gradients/Conv2D_3_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_3_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`

2gradients/Conv2D_3_grad/tuple/control_dependency_1Identity,gradients/Conv2D_3_grad/Conv2DBackpropFilter)^gradients/Conv2D_3_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_3_grad/Conv2DBackpropFilter*&
_output_shapes
:``

$gradients/MaxPool_2_grad/MaxPoolGradMaxPoolGradTanh_2	MaxPool_20gradients/Conv2D_3_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `

gradients/Tanh_2_grad/TanhGradTanhGradTanh_2$gradients/MaxPool_2_grad/MaxPoolGrad*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
b
gradients/add_2_grad/ShapeShapeConv2D_2*
T0*
out_type0*
_output_shapes
:
f
gradients/add_2_grad/Shape_1Const*
valueB:`*
dtype0*
_output_shapes
:
ş
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_2_grad/SumSumgradients/Tanh_2_grad/TanhGrad*gradients/add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ľ
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ż
gradients/add_2_grad/Sum_1Sumgradients/Tanh_2_grad/TanhGrad,gradients/add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:`
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
ę
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ű
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
_output_shapes
:`

gradients/Conv2D_2_grad/ShapeNShapeN	MaxPool_1Variable_4/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
+gradients/Conv2D_2_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_2_grad/ShapeNVariable_4/read-gradients/add_2_grad/tuple/control_dependency*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ż
,gradients/Conv2D_2_grad/Conv2DBackpropFilterConv2DBackpropFilter	MaxPool_1 gradients/Conv2D_2_grad/ShapeN:1-gradients/add_2_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@`*
	dilations


(gradients/Conv2D_2_grad/tuple/group_depsNoOp-^gradients/Conv2D_2_grad/Conv2DBackpropFilter,^gradients/Conv2D_2_grad/Conv2DBackpropInput

0gradients/Conv2D_2_grad/tuple/control_dependencyIdentity+gradients/Conv2D_2_grad/Conv2DBackpropInput)^gradients/Conv2D_2_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_2_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @

2gradients/Conv2D_2_grad/tuple/control_dependency_1Identity,gradients/Conv2D_2_grad/Conv2DBackpropFilter)^gradients/Conv2D_2_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_2_grad/Conv2DBackpropFilter*&
_output_shapes
:@`

$gradients/MaxPool_1_grad/MaxPoolGradMaxPoolGradTanh_1	MaxPool_10gradients/Conv2D_2_grad/tuple/control_dependency*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@*
T0*
data_formatNHWC*
strides


gradients/Tanh_1_grad/TanhGradTanhGradTanh_1$gradients/MaxPool_1_grad/MaxPoolGrad*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@
b
gradients/add_1_grad/ShapeShapeConv2D_1*
T0*
out_type0*
_output_shapes
:
f
gradients/add_1_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
ş
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_1_grad/SumSumgradients/Tanh_1_grad/TanhGrad*gradients/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ľ
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@
Ż
gradients/add_1_grad/Sum_1Sumgradients/Tanh_1_grad/TanhGrad,gradients/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
ę
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@@
Ű
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:@

gradients/Conv2D_1_grad/ShapeNShapeNMaxPoolVariable_2/read*
N* 
_output_shapes
::*
T0*
out_type0
Ę
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_2/read-gradients/add_1_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
˝
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool gradients/Conv2D_1_grad/ShapeN:1-gradients/add_1_grad/tuple/control_dependency*&
_output_shapes
: @*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput

0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput

2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*&
_output_shapes
: @*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter

"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradTanhMaxPool0gradients/Conv2D_1_grad/tuple/control_dependency*
ksize
*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC*
strides


gradients/Tanh_grad/TanhGradTanhGradTanh"gradients/MaxPool_grad/MaxPoolGrad*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
^
gradients/add_grad/ShapeShapeConv2D*
T0*
out_type0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
gradients/add_grad/SumSumgradients/Tanh_grad/TanhGrad(gradients/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ą
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
Tshape0
Š
gradients/add_grad/Sum_1Sumgradients/Tanh_grad/TanhGrad*gradients/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
ä
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*-
_class#
!loc:@gradients/add_grad/Reshape
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
: 

gradients/Conv2D_grad/ShapeNShapeNReshapeVariable/read*
N* 
_output_shapes
::*
T0*
out_type0
Ä
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/read+gradients/add_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations

ˇ
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1+gradients/add_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput

.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput

0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
{
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape: *
dtype0*
_output_shapes
: 
Ť
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
g
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*
_class
loc:@Variable
{
beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *wž?*
_class
loc:@Variable

beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
Ť
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
g
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
Ľ
/Variable/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"             *
_class
loc:@Variable*
dtype0*
_output_shapes
:

%Variable/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable*
dtype0*
_output_shapes
: 
ß
Variable/Adam/Initializer/zerosFill/Variable/Adam/Initializer/zeros/shape_as_tensor%Variable/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable*&
_output_shapes
: 
Ž
Variable/Adam
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *
_class
loc:@Variable
Ĺ
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
{
Variable/Adam/readIdentityVariable/Adam*
T0*
_class
loc:@Variable*&
_output_shapes
: 
§
1Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *
_class
loc:@Variable*
dtype0*
_output_shapes
:

'Variable/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable*
dtype0*
_output_shapes
: 
ĺ
!Variable/Adam_1/Initializer/zerosFill1Variable/Adam_1/Initializer/zeros/shape_as_tensor'Variable/Adam_1/Initializer/zeros/Const*&
_output_shapes
: *
T0*

index_type0*
_class
loc:@Variable
°
Variable/Adam_1
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
Ë
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: *
use_locking(

Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable*&
_output_shapes
: 

!Variable_1/Adam/Initializer/zerosConst*
valueB *    *
_class
loc:@Variable_1*
dtype0*
_output_shapes
: 

Variable_1/Adam
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
shape: *
dtype0*
_output_shapes
: 
Á
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: *
use_locking(
u
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_class
loc:@Variable_1*
_output_shapes
: 

#Variable_1/Adam_1/Initializer/zerosConst*
valueB *    *
_class
loc:@Variable_1*
dtype0*
_output_shapes
: 

Variable_1/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
shape: *
dtype0*
_output_shapes
: 
Ç
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
y
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
Š
1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *
_class
loc:@Variable_2*
dtype0*
_output_shapes
:

'Variable_2/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_2*
dtype0*
_output_shapes
: 
ç
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_2*&
_output_shapes
: @
˛
Variable_2/Adam
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *
_class
loc:@Variable_2*
	container *
shape: @
Í
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @

Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2*&
_output_shapes
: @
Ť
3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"          @   *
_class
loc:@Variable_2

)Variable_2/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_2*
dtype0*
_output_shapes
: 
í
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*&
_output_shapes
: @*
T0*

index_type0*
_class
loc:@Variable_2
´
Variable_2/Adam_1
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *
_class
loc:@Variable_2*
	container 
Ó
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @

Variable_2/Adam_1/readIdentityVariable_2/Adam_1*&
_output_shapes
: @*
T0*
_class
loc:@Variable_2

!Variable_3/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_3*
dtype0*
_output_shapes
:@

Variable_3/Adam
VariableV2*
shared_name *
_class
loc:@Variable_3*
	container *
shape:@*
dtype0*
_output_shapes
:@
Á
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(
u
Variable_3/Adam/readIdentityVariable_3/Adam*
T0*
_class
loc:@Variable_3*
_output_shapes
:@

#Variable_3/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_3*
dtype0*
_output_shapes
:@

Variable_3/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_3*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ç
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_3
y
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
_output_shapes
:@*
T0*
_class
loc:@Variable_3
Š
1Variable_4/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   `   *
_class
loc:@Variable_4*
dtype0*
_output_shapes
:

'Variable_4/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_4*
dtype0*
_output_shapes
: 
ç
!Variable_4/Adam/Initializer/zerosFill1Variable_4/Adam/Initializer/zeros/shape_as_tensor'Variable_4/Adam/Initializer/zeros/Const*&
_output_shapes
:@`*
T0*

index_type0*
_class
loc:@Variable_4
˛
Variable_4/Adam
VariableV2*
	container *
shape:@`*
dtype0*&
_output_shapes
:@`*
shared_name *
_class
loc:@Variable_4
Í
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
:@`*
use_locking(*
T0*
_class
loc:@Variable_4

Variable_4/Adam/readIdentityVariable_4/Adam*
T0*
_class
loc:@Variable_4*&
_output_shapes
:@`
Ť
3Variable_4/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   `   *
_class
loc:@Variable_4*
dtype0*
_output_shapes
:

)Variable_4/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_4
í
#Variable_4/Adam_1/Initializer/zerosFill3Variable_4/Adam_1/Initializer/zeros/shape_as_tensor)Variable_4/Adam_1/Initializer/zeros/Const*&
_output_shapes
:@`*
T0*

index_type0*
_class
loc:@Variable_4
´
Variable_4/Adam_1
VariableV2*
	container *
shape:@`*
dtype0*&
_output_shapes
:@`*
shared_name *
_class
loc:@Variable_4
Ó
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*&
_output_shapes
:@`

Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0*
_class
loc:@Variable_4*&
_output_shapes
:@`

!Variable_5/Adam/Initializer/zerosConst*
valueB`*    *
_class
loc:@Variable_5*
dtype0*
_output_shapes
:`

Variable_5/Adam
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*
shared_name *
_class
loc:@Variable_5*
	container 
Á
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:`
u
Variable_5/Adam/readIdentityVariable_5/Adam*
T0*
_class
loc:@Variable_5*
_output_shapes
:`

#Variable_5/Adam_1/Initializer/zerosConst*
valueB`*    *
_class
loc:@Variable_5*
dtype0*
_output_shapes
:`

Variable_5/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_5*
	container *
shape:`*
dtype0*
_output_shapes
:`
Ç
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:`*
use_locking(
y
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
T0*
_class
loc:@Variable_5*
_output_shapes
:`
Š
1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      `   `   *
_class
loc:@Variable_6*
dtype0*
_output_shapes
:

'Variable_6/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_6*
dtype0*
_output_shapes
: 
ç
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6*&
_output_shapes
:``
˛
Variable_6/Adam
VariableV2*
_class
loc:@Variable_6*
	container *
shape:``*
dtype0*&
_output_shapes
:``*
shared_name 
Í
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_6*
validate_shape(*&
_output_shapes
:``*
use_locking(

Variable_6/Adam/readIdentityVariable_6/Adam*
T0*
_class
loc:@Variable_6*&
_output_shapes
:``
Ť
3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      `   `   *
_class
loc:@Variable_6*
dtype0*
_output_shapes
:

)Variable_6/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_6
í
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6*&
_output_shapes
:``
´
Variable_6/Adam_1
VariableV2*
dtype0*&
_output_shapes
:``*
shared_name *
_class
loc:@Variable_6*
	container *
shape:``
Ó
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*&
_output_shapes
:``

Variable_6/Adam_1/readIdentityVariable_6/Adam_1*&
_output_shapes
:``*
T0*
_class
loc:@Variable_6

!Variable_7/Adam/Initializer/zerosConst*
valueB`*    *
_class
loc:@Variable_7*
dtype0*
_output_shapes
:`

Variable_7/Adam
VariableV2*
dtype0*
_output_shapes
:`*
shared_name *
_class
loc:@Variable_7*
	container *
shape:`
Á
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`
u
Variable_7/Adam/readIdentityVariable_7/Adam*
T0*
_class
loc:@Variable_7*
_output_shapes
:`

#Variable_7/Adam_1/Initializer/zerosConst*
valueB`*    *
_class
loc:@Variable_7*
dtype0*
_output_shapes
:`

Variable_7/Adam_1
VariableV2*
dtype0*
_output_shapes
:`*
shared_name *
_class
loc:@Variable_7*
	container *
shape:`
Ç
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`
y
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
T0*
_class
loc:@Variable_7*
_output_shapes
:`
Š
1Variable_8/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      `      *
_class
loc:@Variable_8*
dtype0*
_output_shapes
:

'Variable_8/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_8*
dtype0*
_output_shapes
: 
č
!Variable_8/Adam/Initializer/zerosFill1Variable_8/Adam/Initializer/zeros/shape_as_tensor'Variable_8/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_8*'
_output_shapes
:`
´
Variable_8/Adam
VariableV2*
shape:`*
dtype0*'
_output_shapes
:`*
shared_name *
_class
loc:@Variable_8*
	container 
Î
Variable_8/Adam/AssignAssignVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*'
_output_shapes
:`

Variable_8/Adam/readIdentityVariable_8/Adam*'
_output_shapes
:`*
T0*
_class
loc:@Variable_8
Ť
3Variable_8/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      `      *
_class
loc:@Variable_8*
dtype0*
_output_shapes
:

)Variable_8/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_8*
dtype0*
_output_shapes
: 
î
#Variable_8/Adam_1/Initializer/zerosFill3Variable_8/Adam_1/Initializer/zeros/shape_as_tensor)Variable_8/Adam_1/Initializer/zeros/Const*'
_output_shapes
:`*
T0*

index_type0*
_class
loc:@Variable_8
ś
Variable_8/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_8*
	container *
shape:`*
dtype0*'
_output_shapes
:`
Ô
Variable_8/Adam_1/AssignAssignVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
validate_shape(*'
_output_shapes
:`*
use_locking(*
T0*
_class
loc:@Variable_8

Variable_8/Adam_1/readIdentityVariable_8/Adam_1*'
_output_shapes
:`*
T0*
_class
loc:@Variable_8

!Variable_9/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_9*
dtype0*
_output_shapes	
:

Variable_9/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@Variable_9*
	container *
shape:
Â
Variable_9/Adam/AssignAssignVariable_9/Adam!Variable_9/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@Variable_9
v
Variable_9/Adam/readIdentityVariable_9/Adam*
T0*
_class
loc:@Variable_9*
_output_shapes	
:

#Variable_9/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_9*
dtype0*
_output_shapes	
:

Variable_9/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_9*
	container *
shape:*
dtype0*
_output_shapes	
:
Č
Variable_9/Adam_1/AssignAssignVariable_9/Adam_1#Variable_9/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:
z
Variable_9/Adam_1/readIdentityVariable_9/Adam_1*
T0*
_class
loc:@Variable_9*
_output_shapes	
:
Ť
2Variable_10/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"            *
_class
loc:@Variable_10

(Variable_10/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_10*
dtype0*
_output_shapes
: 
í
"Variable_10/Adam/Initializer/zerosFill2Variable_10/Adam/Initializer/zeros/shape_as_tensor(Variable_10/Adam/Initializer/zeros/Const*(
_output_shapes
:*
T0*

index_type0*
_class
loc:@Variable_10
¸
Variable_10/Adam
VariableV2*
shared_name *
_class
loc:@Variable_10*
	container *
shape:*
dtype0*(
_output_shapes
:
Ó
Variable_10/Adam/AssignAssignVariable_10/Adam"Variable_10/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(*(
_output_shapes
:

Variable_10/Adam/readIdentityVariable_10/Adam*
T0*
_class
loc:@Variable_10*(
_output_shapes
:
­
4Variable_10/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"            *
_class
loc:@Variable_10

*Variable_10/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_10*
dtype0*
_output_shapes
: 
ó
$Variable_10/Adam_1/Initializer/zerosFill4Variable_10/Adam_1/Initializer/zeros/shape_as_tensor*Variable_10/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_10*(
_output_shapes
:
ş
Variable_10/Adam_1
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *
_class
loc:@Variable_10*
	container *
shape:
Ů
Variable_10/Adam_1/AssignAssignVariable_10/Adam_1$Variable_10/Adam_1/Initializer/zeros*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_10

Variable_10/Adam_1/readIdentityVariable_10/Adam_1*
T0*
_class
loc:@Variable_10*(
_output_shapes
:

"Variable_11/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *
_class
loc:@Variable_11

Variable_11/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@Variable_11*
	container *
shape:
Ć
Variable_11/Adam/AssignAssignVariable_11/Adam"Variable_11/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:
y
Variable_11/Adam/readIdentityVariable_11/Adam*
_output_shapes	
:*
T0*
_class
loc:@Variable_11

$Variable_11/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *
_class
loc:@Variable_11
 
Variable_11/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@Variable_11
Ě
Variable_11/Adam_1/AssignAssignVariable_11/Adam_1$Variable_11/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@Variable_11
}
Variable_11/Adam_1/readIdentityVariable_11/Adam_1*
T0*
_class
loc:@Variable_11*
_output_shapes	
:
Ł
2Variable_12/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_class
loc:@Variable_12*
dtype0*
_output_shapes
:

(Variable_12/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_12*
dtype0*
_output_shapes
: 
ä
"Variable_12/Adam/Initializer/zerosFill2Variable_12/Adam/Initializer/zeros/shape_as_tensor(Variable_12/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_12*
_output_shapes
:	@
Ś
Variable_12/Adam
VariableV2*
dtype0*
_output_shapes
:	@*
shared_name *
_class
loc:@Variable_12*
	container *
shape:	@
Ę
Variable_12/Adam/AssignAssignVariable_12/Adam"Variable_12/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(*
_output_shapes
:	@
}
Variable_12/Adam/readIdentityVariable_12/Adam*
T0*
_class
loc:@Variable_12*
_output_shapes
:	@
Ľ
4Variable_12/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_class
loc:@Variable_12*
dtype0*
_output_shapes
:

*Variable_12/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_12*
dtype0*
_output_shapes
: 
ę
$Variable_12/Adam_1/Initializer/zerosFill4Variable_12/Adam_1/Initializer/zeros/shape_as_tensor*Variable_12/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_12*
_output_shapes
:	@
¨
Variable_12/Adam_1
VariableV2*
_class
loc:@Variable_12*
	container *
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name 
Đ
Variable_12/Adam_1/AssignAssignVariable_12/Adam_1$Variable_12/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_12*
validate_shape(*
_output_shapes
:	@*
use_locking(

Variable_12/Adam_1/readIdentityVariable_12/Adam_1*
_output_shapes
:	@*
T0*
_class
loc:@Variable_12

"Variable_13/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_13*
dtype0*
_output_shapes
:@

Variable_13/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_13*
	container *
shape:@
Ĺ
Variable_13/Adam/AssignAssignVariable_13/Adam"Variable_13/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(*
_output_shapes
:@
x
Variable_13/Adam/readIdentityVariable_13/Adam*
T0*
_class
loc:@Variable_13*
_output_shapes
:@

$Variable_13/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_13*
dtype0*
_output_shapes
:@

Variable_13/Adam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_13
Ë
Variable_13/Adam_1/AssignAssignVariable_13/Adam_1$Variable_13/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(*
_output_shapes
:@
|
Variable_13/Adam_1/readIdentityVariable_13/Adam_1*
_output_shapes
:@*
T0*
_class
loc:@Variable_13

"Variable_14/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_14*
dtype0*
_output_shapes

:@
¤
Variable_14/Adam
VariableV2*
_class
loc:@Variable_14*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name 
É
Variable_14/Adam/AssignAssignVariable_14/Adam"Variable_14/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(*
_output_shapes

:@
|
Variable_14/Adam/readIdentityVariable_14/Adam*
_output_shapes

:@*
T0*
_class
loc:@Variable_14

$Variable_14/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_14*
dtype0*
_output_shapes

:@
Ś
Variable_14/Adam_1
VariableV2*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *
_class
loc:@Variable_14
Ď
Variable_14/Adam_1/AssignAssignVariable_14/Adam_1$Variable_14/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(*
_output_shapes

:@

Variable_14/Adam_1/readIdentityVariable_14/Adam_1*
T0*
_class
loc:@Variable_14*
_output_shapes

:@

"Variable_15/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_15*
dtype0*
_output_shapes
:

Variable_15/Adam
VariableV2*
shared_name *
_class
loc:@Variable_15*
	container *
shape:*
dtype0*
_output_shapes
:
Ĺ
Variable_15/Adam/AssignAssignVariable_15/Adam"Variable_15/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(*
_output_shapes
:
x
Variable_15/Adam/readIdentityVariable_15/Adam*
T0*
_class
loc:@Variable_15*
_output_shapes
:

$Variable_15/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_15*
dtype0*
_output_shapes
:

Variable_15/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_15
Ë
Variable_15/Adam_1/AssignAssignVariable_15/Adam_1$Variable_15/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_15
|
Variable_15/Adam_1/readIdentityVariable_15/Adam_1*
_output_shapes
:*
T0*
_class
loc:@Variable_15
W
Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *ˇŃ8
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
Ú
Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable*
use_nesterov( *&
_output_shapes
: *
use_locking( 
Ő
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable_1
ć
 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( *&
_output_shapes
: @
×
 Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*
_class
loc:@Variable_3
ć
 Adam/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_2_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_4*
use_nesterov( *&
_output_shapes
:@`*
use_locking( 
×
 Adam/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_5*
use_nesterov( *
_output_shapes
:`
ć
 Adam/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_3_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_6*
use_nesterov( *&
_output_shapes
:``*
use_locking( 
×
 Adam/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_3_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_7*
use_nesterov( *
_output_shapes
:`
ç
 Adam/update_Variable_8/ApplyAdam	ApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_4_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_8*
use_nesterov( *'
_output_shapes
:`*
use_locking( 
Ř
 Adam/update_Variable_9/ApplyAdam	ApplyAdam
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_9*
use_nesterov( *
_output_shapes	
:
í
!Adam/update_Variable_10/ApplyAdam	ApplyAdamVariable_10Variable_10/AdamVariable_10/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_5_grad/tuple/control_dependency_1*
use_nesterov( *(
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Variable_10
Ý
!Adam/update_Variable_11/ApplyAdam	ApplyAdamVariable_11Variable_11/AdamVariable_11/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_5_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_11*
use_nesterov( *
_output_shapes	
:
â
!Adam/update_Variable_12/ApplyAdam	ApplyAdamVariable_12Variable_12/AdamVariable_12/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:	@*
use_locking( *
T0*
_class
loc:@Variable_12
Ü
!Adam/update_Variable_13/ApplyAdam	ApplyAdamVariable_13Variable_13/AdamVariable_13/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_6_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*
_class
loc:@Variable_13
ă
!Adam/update_Variable_14/ApplyAdam	ApplyAdamVariable_14Variable_14/AdamVariable_14/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_14*
use_nesterov( *
_output_shapes

:@*
use_locking( 
Ü
!Adam/update_Variable_15/ApplyAdam	ApplyAdamVariable_15Variable_15/AdamVariable_15/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_7_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_15*
use_nesterov( *
_output_shapes
:

Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam"^Adam/update_Variable_10/ApplyAdam"^Adam/update_Variable_11/ApplyAdam"^Adam/update_Variable_12/ApplyAdam"^Adam/update_Variable_13/ApplyAdam"^Adam/update_Variable_14/ApplyAdam"^Adam/update_Variable_15/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@Variable

Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable
Ą

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam"^Adam/update_Variable_10/ApplyAdam"^Adam/update_Variable_11/ApplyAdam"^Adam/update_Variable_12/ApplyAdam"^Adam/update_Variable_13/ApplyAdam"^Adam/update_Variable_14/ApplyAdam"^Adam/update_Variable_15/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking( 
Ţ
AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam"^Adam/update_Variable_10/ApplyAdam"^Adam/update_Variable_11/ApplyAdam"^Adam/update_Variable_12/ApplyAdam"^Adam/update_Variable_13/ApplyAdam"^Adam/update_Variable_14/ApplyAdam"^Adam/update_Variable_15/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam
[
ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
w
ArgMaxArgMaxy_convArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
]
ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	
R
Cast_2CastEqual*

SrcT0
*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
Const_9Const*
valueB: *
dtype0*
_output_shapes
:
[
MeanMeanCast_2Const_9*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Â	
initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_10/Adam/Assign^Variable_10/Adam_1/Assign^Variable_10/Assign^Variable_11/Adam/Assign^Variable_11/Adam_1/Assign^Variable_11/Assign^Variable_12/Adam/Assign^Variable_12/Adam_1/Assign^Variable_12/Assign^Variable_13/Adam/Assign^Variable_13/Adam_1/Assign^Variable_13/Assign^Variable_14/Adam/Assign^Variable_14/Adam_1/Assign^Variable_14/Assign^Variable_15/Adam/Assign^Variable_15/Adam_1/Assign^Variable_15/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^Variable_8/Adam/Assign^Variable_8/Adam_1/Assign^Variable_8/Assign^Variable_9/Adam/Assign^Variable_9/Adam_1/Assign^Variable_9/Assign^beta1_power/Assign^beta2_power/Assign
Ä	
init_1NoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_10/Adam/Assign^Variable_10/Adam_1/Assign^Variable_10/Assign^Variable_11/Adam/Assign^Variable_11/Adam_1/Assign^Variable_11/Assign^Variable_12/Adam/Assign^Variable_12/Adam_1/Assign^Variable_12/Assign^Variable_13/Adam/Assign^Variable_13/Adam_1/Assign^Variable_13/Assign^Variable_14/Adam/Assign^Variable_14/Adam_1/Assign^Variable_14/Assign^Variable_15/Adam/Assign^Variable_15/Adam_1/Assign^Variable_15/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^Variable_8/Adam/Assign^Variable_8/Adam_1/Assign^Variable_8/Assign^Variable_9/Adam/Assign^Variable_9/Adam_1/Assign^Variable_9/Assign^beta1_power/Assign^beta2_power/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/SaveV2/tensor_namesConst*ť
valueąBŽ2BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1BVariable_10BVariable_10/AdamBVariable_10/Adam_1BVariable_11BVariable_11/AdamBVariable_11/Adam_1BVariable_12BVariable_12/AdamBVariable_12/Adam_1BVariable_13BVariable_13/AdamBVariable_13/Adam_1BVariable_14BVariable_14/AdamBVariable_14/Adam_1BVariable_15BVariable_15/AdamBVariable_15/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:2
Ç
save/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Á
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1Variable_10Variable_10/AdamVariable_10/Adam_1Variable_11Variable_11/AdamVariable_11/Adam_1Variable_12Variable_12/AdamVariable_12/Adam_1Variable_13Variable_13/AdamVariable_13/Adam_1Variable_14Variable_14/AdamVariable_14/Adam_1Variable_15Variable_15/AdamVariable_15/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power*@
dtypes6
422
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 

save/RestoreV2/tensor_namesConst*ť
valueąBŽ2BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1BVariable_10BVariable_10/AdamBVariable_10/Adam_1BVariable_11BVariable_11/AdamBVariable_11/Adam_1BVariable_12BVariable_12/AdamBVariable_12/Adam_1BVariable_13BVariable_13/AdamBVariable_13/Adam_1BVariable_14BVariable_14/AdamBVariable_14/Adam_1BVariable_15BVariable_15/AdamBVariable_15/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:2
Ę
save/RestoreV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*@
dtypes6
422*Ţ
_output_shapesË
Č::::::::::::::::::::::::::::::::::::::::::::::::::
Ś
save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
Ż
save/Assign_1AssignVariable/Adamsave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
ą
save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
˘
save/Assign_3Assign
Variable_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
§
save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable_1
Š
save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: *
use_locking(
˛
save/Assign_6AssignVariable_10save/RestoreV2:6*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_10
ˇ
save/Assign_7AssignVariable_10/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(*(
_output_shapes
:
š
save/Assign_8AssignVariable_10/Adam_1save/RestoreV2:8*
T0*
_class
loc:@Variable_10*
validate_shape(*(
_output_shapes
:*
use_locking(
Ľ
save/Assign_9AssignVariable_11save/RestoreV2:9*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:*
use_locking(
Ź
save/Assign_10AssignVariable_11/Adamsave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:
Ž
save/Assign_11AssignVariable_11/Adam_1save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:
Ť
save/Assign_12AssignVariable_12save/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(*
_output_shapes
:	@
°
save/Assign_13AssignVariable_12/Adamsave/RestoreV2:13*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0*
_class
loc:@Variable_12
˛
save/Assign_14AssignVariable_12/Adam_1save/RestoreV2:14*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(*
_output_shapes
:	@
Ś
save/Assign_15AssignVariable_13save/RestoreV2:15*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(*
_output_shapes
:@
Ť
save/Assign_16AssignVariable_13/Adamsave/RestoreV2:16*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_13
­
save/Assign_17AssignVariable_13/Adam_1save/RestoreV2:17*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(*
_output_shapes
:@
Ş
save/Assign_18AssignVariable_14save/RestoreV2:18*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(*
_output_shapes

:@
Ż
save/Assign_19AssignVariable_14/Adamsave/RestoreV2:19*
T0*
_class
loc:@Variable_14*
validate_shape(*
_output_shapes

:@*
use_locking(
ą
save/Assign_20AssignVariable_14/Adam_1save/RestoreV2:20*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*
_class
loc:@Variable_14
Ś
save/Assign_21AssignVariable_15save/RestoreV2:21*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_15
Ť
save/Assign_22AssignVariable_15/Adamsave/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(*
_output_shapes
:
­
save/Assign_23AssignVariable_15/Adam_1save/RestoreV2:23*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_15
°
save/Assign_24Assign
Variable_2save/RestoreV2:24*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*
_class
loc:@Variable_2
ľ
save/Assign_25AssignVariable_2/Adamsave/RestoreV2:25*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
ˇ
save/Assign_26AssignVariable_2/Adam_1save/RestoreV2:26*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
¤
save/Assign_27Assign
Variable_3save/RestoreV2:27*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_3
Š
save/Assign_28AssignVariable_3/Adamsave/RestoreV2:28*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(
Ť
save/Assign_29AssignVariable_3/Adam_1save/RestoreV2:29*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(
°
save/Assign_30Assign
Variable_4save/RestoreV2:30*
validate_shape(*&
_output_shapes
:@`*
use_locking(*
T0*
_class
loc:@Variable_4
ľ
save/Assign_31AssignVariable_4/Adamsave/RestoreV2:31*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*&
_output_shapes
:@`
ˇ
save/Assign_32AssignVariable_4/Adam_1save/RestoreV2:32*
validate_shape(*&
_output_shapes
:@`*
use_locking(*
T0*
_class
loc:@Variable_4
¤
save/Assign_33Assign
Variable_5save/RestoreV2:33*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:`*
use_locking(
Š
save/Assign_34AssignVariable_5/Adamsave/RestoreV2:34*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:`*
use_locking(
Ť
save/Assign_35AssignVariable_5/Adam_1save/RestoreV2:35*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:`*
use_locking(
°
save/Assign_36Assign
Variable_6save/RestoreV2:36*
T0*
_class
loc:@Variable_6*
validate_shape(*&
_output_shapes
:``*
use_locking(
ľ
save/Assign_37AssignVariable_6/Adamsave/RestoreV2:37*
validate_shape(*&
_output_shapes
:``*
use_locking(*
T0*
_class
loc:@Variable_6
ˇ
save/Assign_38AssignVariable_6/Adam_1save/RestoreV2:38*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*&
_output_shapes
:``
¤
save/Assign_39Assign
Variable_7save/RestoreV2:39*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`
Š
save/Assign_40AssignVariable_7/Adamsave/RestoreV2:40*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`
Ť
save/Assign_41AssignVariable_7/Adam_1save/RestoreV2:41*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`*
use_locking(
ą
save/Assign_42Assign
Variable_8save/RestoreV2:42*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*'
_output_shapes
:`
ś
save/Assign_43AssignVariable_8/Adamsave/RestoreV2:43*
validate_shape(*'
_output_shapes
:`*
use_locking(*
T0*
_class
loc:@Variable_8
¸
save/Assign_44AssignVariable_8/Adam_1save/RestoreV2:44*
validate_shape(*'
_output_shapes
:`*
use_locking(*
T0*
_class
loc:@Variable_8
Ľ
save/Assign_45Assign
Variable_9save/RestoreV2:45*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:*
use_locking(
Ş
save/Assign_46AssignVariable_9/Adamsave/RestoreV2:46*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@Variable_9
Ź
save/Assign_47AssignVariable_9/Adam_1save/RestoreV2:47*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:*
use_locking(

save/Assign_48Assignbeta1_powersave/RestoreV2:48*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 

save/Assign_49Assignbeta2_powersave/RestoreV2:49*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(
Ţ
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
R
save_1/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_69489431abdf40c0b6c78e7eb6827c71/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst*ť
valueąBŽ2BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1BVariable_10BVariable_10/AdamBVariable_10/Adam_1BVariable_11BVariable_11/AdamBVariable_11/Adam_1BVariable_12BVariable_12/AdamBVariable_12/Adam_1BVariable_13BVariable_13/AdamBVariable_13/Adam_1BVariable_14BVariable_14/AdamBVariable_14/Adam_1BVariable_15BVariable_15/AdamBVariable_15/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:2
É
save_1/SaveV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2
Ó
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1Variable_10Variable_10/AdamVariable_10/Adam_1Variable_11Variable_11/AdamVariable_11/Adam_1Variable_12Variable_12/AdamVariable_12/Adam_1Variable_13Variable_13/AdamVariable_13/Adam_1Variable_14Variable_14/AdamVariable_14/Adam_1Variable_15Variable_15/AdamVariable_15/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power*@
dtypes6
422

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 

save_1/RestoreV2/tensor_namesConst*ť
valueąBŽ2BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1BVariable_10BVariable_10/AdamBVariable_10/Adam_1BVariable_11BVariable_11/AdamBVariable_11/Adam_1BVariable_12BVariable_12/AdamBVariable_12/Adam_1BVariable_13BVariable_13/AdamBVariable_13/Adam_1BVariable_14BVariable_14/AdamBVariable_14/Adam_1BVariable_15BVariable_15/AdamBVariable_15/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:2
Ě
!save_1/RestoreV2/shape_and_slicesConst*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:2

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*Ţ
_output_shapesË
Č::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422
Ş
save_1/AssignAssignVariablesave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
ł
save_1/Assign_1AssignVariable/Adamsave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
ľ
save_1/Assign_2AssignVariable/Adam_1save_1/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
Ś
save_1/Assign_3Assign
Variable_1save_1/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable_1
Ť
save_1/Assign_4AssignVariable_1/Adamsave_1/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
­
save_1/Assign_5AssignVariable_1/Adam_1save_1/RestoreV2:5*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: *
use_locking(
ś
save_1/Assign_6AssignVariable_10save_1/RestoreV2:6*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_10
ť
save_1/Assign_7AssignVariable_10/Adamsave_1/RestoreV2:7*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_10
˝
save_1/Assign_8AssignVariable_10/Adam_1save_1/RestoreV2:8*
T0*
_class
loc:@Variable_10*
validate_shape(*(
_output_shapes
:*
use_locking(
Š
save_1/Assign_9AssignVariable_11save_1/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:
°
save_1/Assign_10AssignVariable_11/Adamsave_1/RestoreV2:10*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@Variable_11
˛
save_1/Assign_11AssignVariable_11/Adam_1save_1/RestoreV2:11*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:*
use_locking(
Ż
save_1/Assign_12AssignVariable_12save_1/RestoreV2:12*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0*
_class
loc:@Variable_12
´
save_1/Assign_13AssignVariable_12/Adamsave_1/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(*
_output_shapes
:	@
ś
save_1/Assign_14AssignVariable_12/Adam_1save_1/RestoreV2:14*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0*
_class
loc:@Variable_12
Ş
save_1/Assign_15AssignVariable_13save_1/RestoreV2:15*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(*
_output_shapes
:@
Ż
save_1/Assign_16AssignVariable_13/Adamsave_1/RestoreV2:16*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_13
ą
save_1/Assign_17AssignVariable_13/Adam_1save_1/RestoreV2:17*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(*
_output_shapes
:@
Ž
save_1/Assign_18AssignVariable_14save_1/RestoreV2:18*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(*
_output_shapes

:@
ł
save_1/Assign_19AssignVariable_14/Adamsave_1/RestoreV2:19*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(*
_output_shapes

:@
ľ
save_1/Assign_20AssignVariable_14/Adam_1save_1/RestoreV2:20*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(*
_output_shapes

:@
Ş
save_1/Assign_21AssignVariable_15save_1/RestoreV2:21*
T0*
_class
loc:@Variable_15*
validate_shape(*
_output_shapes
:*
use_locking(
Ż
save_1/Assign_22AssignVariable_15/Adamsave_1/RestoreV2:22*
T0*
_class
loc:@Variable_15*
validate_shape(*
_output_shapes
:*
use_locking(
ą
save_1/Assign_23AssignVariable_15/Adam_1save_1/RestoreV2:23*
T0*
_class
loc:@Variable_15*
validate_shape(*
_output_shapes
:*
use_locking(
´
save_1/Assign_24Assign
Variable_2save_1/RestoreV2:24*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
š
save_1/Assign_25AssignVariable_2/Adamsave_1/RestoreV2:25*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*
_class
loc:@Variable_2
ť
save_1/Assign_26AssignVariable_2/Adam_1save_1/RestoreV2:26*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
¨
save_1/Assign_27Assign
Variable_3save_1/RestoreV2:27*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
­
save_1/Assign_28AssignVariable_3/Adamsave_1/RestoreV2:28*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
Ż
save_1/Assign_29AssignVariable_3/Adam_1save_1/RestoreV2:29*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
´
save_1/Assign_30Assign
Variable_4save_1/RestoreV2:30*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*&
_output_shapes
:@`
š
save_1/Assign_31AssignVariable_4/Adamsave_1/RestoreV2:31*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*&
_output_shapes
:@`
ť
save_1/Assign_32AssignVariable_4/Adam_1save_1/RestoreV2:32*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*&
_output_shapes
:@`
¨
save_1/Assign_33Assign
Variable_5save_1/RestoreV2:33*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:`
­
save_1/Assign_34AssignVariable_5/Adamsave_1/RestoreV2:34*
validate_shape(*
_output_shapes
:`*
use_locking(*
T0*
_class
loc:@Variable_5
Ż
save_1/Assign_35AssignVariable_5/Adam_1save_1/RestoreV2:35*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:`
´
save_1/Assign_36Assign
Variable_6save_1/RestoreV2:36*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*&
_output_shapes
:``
š
save_1/Assign_37AssignVariable_6/Adamsave_1/RestoreV2:37*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*&
_output_shapes
:``
ť
save_1/Assign_38AssignVariable_6/Adam_1save_1/RestoreV2:38*
validate_shape(*&
_output_shapes
:``*
use_locking(*
T0*
_class
loc:@Variable_6
¨
save_1/Assign_39Assign
Variable_7save_1/RestoreV2:39*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`*
use_locking(
­
save_1/Assign_40AssignVariable_7/Adamsave_1/RestoreV2:40*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`
Ż
save_1/Assign_41AssignVariable_7/Adam_1save_1/RestoreV2:41*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:`
ľ
save_1/Assign_42Assign
Variable_8save_1/RestoreV2:42*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*'
_output_shapes
:`
ş
save_1/Assign_43AssignVariable_8/Adamsave_1/RestoreV2:43*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*'
_output_shapes
:`
ź
save_1/Assign_44AssignVariable_8/Adam_1save_1/RestoreV2:44*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*'
_output_shapes
:`
Š
save_1/Assign_45Assign
Variable_9save_1/RestoreV2:45*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@Variable_9
Ž
save_1/Assign_46AssignVariable_9/Adamsave_1/RestoreV2:46*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:
°
save_1/Assign_47AssignVariable_9/Adam_1save_1/RestoreV2:47*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:
Ł
save_1/Assign_48Assignbeta1_powersave_1/RestoreV2:48*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ł
save_1/Assign_49Assignbeta2_powersave_1/RestoreV2:49*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Ć
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op

Adam"­&
	variables&&
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02Const:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	Const_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
A
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_2:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:08
A
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_3:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_4:08
A
Variable_9:0Variable_9/AssignVariable_9/read:02	Const_4:08
O
Variable_10:0Variable_10/AssignVariable_10/read:02truncated_normal_5:08
D
Variable_11:0Variable_11/AssignVariable_11/read:02	Const_5:08
O
Variable_12:0Variable_12/AssignVariable_12/read:02truncated_normal_6:08
D
Variable_13:0Variable_13/AssignVariable_13/read:02	Const_6:08
O
Variable_14:0Variable_14/AssignVariable_14/read:02truncated_normal_7:08
D
Variable_15:0Variable_15/AssignVariable_15/read:02	Const_7:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
`
Variable/Adam:0Variable/Adam/AssignVariable/Adam/read:02!Variable/Adam/Initializer/zeros:0
h
Variable/Adam_1:0Variable/Adam_1/AssignVariable/Adam_1/read:02#Variable/Adam_1/Initializer/zeros:0
h
Variable_1/Adam:0Variable_1/Adam/AssignVariable_1/Adam/read:02#Variable_1/Adam/Initializer/zeros:0
p
Variable_1/Adam_1:0Variable_1/Adam_1/AssignVariable_1/Adam_1/read:02%Variable_1/Adam_1/Initializer/zeros:0
h
Variable_2/Adam:0Variable_2/Adam/AssignVariable_2/Adam/read:02#Variable_2/Adam/Initializer/zeros:0
p
Variable_2/Adam_1:0Variable_2/Adam_1/AssignVariable_2/Adam_1/read:02%Variable_2/Adam_1/Initializer/zeros:0
h
Variable_3/Adam:0Variable_3/Adam/AssignVariable_3/Adam/read:02#Variable_3/Adam/Initializer/zeros:0
p
Variable_3/Adam_1:0Variable_3/Adam_1/AssignVariable_3/Adam_1/read:02%Variable_3/Adam_1/Initializer/zeros:0
h
Variable_4/Adam:0Variable_4/Adam/AssignVariable_4/Adam/read:02#Variable_4/Adam/Initializer/zeros:0
p
Variable_4/Adam_1:0Variable_4/Adam_1/AssignVariable_4/Adam_1/read:02%Variable_4/Adam_1/Initializer/zeros:0
h
Variable_5/Adam:0Variable_5/Adam/AssignVariable_5/Adam/read:02#Variable_5/Adam/Initializer/zeros:0
p
Variable_5/Adam_1:0Variable_5/Adam_1/AssignVariable_5/Adam_1/read:02%Variable_5/Adam_1/Initializer/zeros:0
h
Variable_6/Adam:0Variable_6/Adam/AssignVariable_6/Adam/read:02#Variable_6/Adam/Initializer/zeros:0
p
Variable_6/Adam_1:0Variable_6/Adam_1/AssignVariable_6/Adam_1/read:02%Variable_6/Adam_1/Initializer/zeros:0
h
Variable_7/Adam:0Variable_7/Adam/AssignVariable_7/Adam/read:02#Variable_7/Adam/Initializer/zeros:0
p
Variable_7/Adam_1:0Variable_7/Adam_1/AssignVariable_7/Adam_1/read:02%Variable_7/Adam_1/Initializer/zeros:0
h
Variable_8/Adam:0Variable_8/Adam/AssignVariable_8/Adam/read:02#Variable_8/Adam/Initializer/zeros:0
p
Variable_8/Adam_1:0Variable_8/Adam_1/AssignVariable_8/Adam_1/read:02%Variable_8/Adam_1/Initializer/zeros:0
h
Variable_9/Adam:0Variable_9/Adam/AssignVariable_9/Adam/read:02#Variable_9/Adam/Initializer/zeros:0
p
Variable_9/Adam_1:0Variable_9/Adam_1/AssignVariable_9/Adam_1/read:02%Variable_9/Adam_1/Initializer/zeros:0
l
Variable_10/Adam:0Variable_10/Adam/AssignVariable_10/Adam/read:02$Variable_10/Adam/Initializer/zeros:0
t
Variable_10/Adam_1:0Variable_10/Adam_1/AssignVariable_10/Adam_1/read:02&Variable_10/Adam_1/Initializer/zeros:0
l
Variable_11/Adam:0Variable_11/Adam/AssignVariable_11/Adam/read:02$Variable_11/Adam/Initializer/zeros:0
t
Variable_11/Adam_1:0Variable_11/Adam_1/AssignVariable_11/Adam_1/read:02&Variable_11/Adam_1/Initializer/zeros:0
l
Variable_12/Adam:0Variable_12/Adam/AssignVariable_12/Adam/read:02$Variable_12/Adam/Initializer/zeros:0
t
Variable_12/Adam_1:0Variable_12/Adam_1/AssignVariable_12/Adam_1/read:02&Variable_12/Adam_1/Initializer/zeros:0
l
Variable_13/Adam:0Variable_13/Adam/AssignVariable_13/Adam/read:02$Variable_13/Adam/Initializer/zeros:0
t
Variable_13/Adam_1:0Variable_13/Adam_1/AssignVariable_13/Adam_1/read:02&Variable_13/Adam_1/Initializer/zeros:0
l
Variable_14/Adam:0Variable_14/Adam/AssignVariable_14/Adam/read:02$Variable_14/Adam/Initializer/zeros:0
t
Variable_14/Adam_1:0Variable_14/Adam_1/AssignVariable_14/Adam_1/read:02&Variable_14/Adam_1/Initializer/zeros:0
l
Variable_15/Adam:0Variable_15/Adam/AssignVariable_15/Adam/read:02$Variable_15/Adam/Initializer/zeros:0
t
Variable_15/Adam_1:0Variable_15/Adam_1/AssignVariable_15/Adam_1/read:02&Variable_15/Adam_1/Initializer/zeros:0"Î
queue_runnersźš

input_producer)input_producer/input_producer_EnqueueMany#input_producer/input_producer_Close"%input_producer/input_producer_Close_1*
Š
"shuffle_batch/random_shuffle_queue*shuffle_batch/random_shuffle_queue_enqueue(shuffle_batch/random_shuffle_queue_Close"*shuffle_batch/random_shuffle_queue_Close_1*"d
	summariesW
U
$input_producer/fraction_of_32_full:0
-shuffle_batch/fraction_over_470_of_460_full:0"Ť	
trainable_variables		
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02Const:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	Const_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
A
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_2:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:08
A
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_3:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_4:08
A
Variable_9:0Variable_9/AssignVariable_9/read:02	Const_4:08
O
Variable_10:0Variable_10/AssignVariable_10/read:02truncated_normal_5:08
D
Variable_11:0Variable_11/AssignVariable_11/read:02	Const_5:08
O
Variable_12:0Variable_12/AssignVariable_12/read:02truncated_normal_6:08
D
Variable_13:0Variable_13/AssignVariable_13/read:02	Const_6:08
O
Variable_14:0Variable_14/AssignVariable_14/read:02truncated_normal_7:08
D
Variable_15:0Variable_15/AssignVariable_15/read:02	Const_7:08*
serving_default|
3
x.
Placeholder:0˙˙˙˙˙˙˙˙˙)
y_conv
y_conv:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict