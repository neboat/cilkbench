; ModuleID = 'kdTree.C'
source_filename = "kdTree.C"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.timer = type <{ double, double, double, i8, [3 x i8], %struct.timezone, [4 x i8] }>
%struct.timezone = type { i32, i32 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.range = type { float, float }
%struct.event = type { float, i32 }
%struct.anon = type { i32*, i32**, %struct.event** }
%struct.anon.0 = type { i32*, i32**, i32*, %struct.event**, %struct.range*, float*, float*, float** }
%"struct.std::pair" = type { %struct._seq, %struct._seq }
%struct._seq = type { %struct.event*, i64 }
%struct.anon.1 = type { i32*, %struct.event**, i8**, %struct.range**, float*, i8** }
%struct.treeNode = type { %struct.treeNode*, %struct.treeNode*, [3 x %struct.range], i32, float, i32*, i32, i32 }
%__cilkrts_stack_frame = type { i32, i32, %__cilkrts_stack_frame*, %__cilkrts_worker*, i8*, [5 x i8*], i32, i16, i16, %__cilkrts_pedigree }
%__cilkrts_worker = type { %__cilkrts_stack_frame**, %__cilkrts_stack_frame**, %__cilkrts_stack_frame**, %__cilkrts_stack_frame**, %__cilkrts_stack_frame**, i32, i8*, i8*, i8*, %__cilkrts_stack_frame*, i8*, i8*, %__cilkrts_pedigree }
%__cilkrts_pedigree = type { i64, %__cilkrts_pedigree* }
%struct.cutInfo = type { float, float, i32, i32 }
%struct.anon.2 = type { [3 x %struct.cutInfo]*, i32*, %struct.event***, %struct.range**, i32* }
%struct.anon.3 = type { [3 x %"struct.std::pair"]*, i32*, %struct.range**, %struct.event***, float*, i32* }
%struct.anon.4 = type { %struct.treeNode**, %struct.range***, [3 x %struct.event*]*, [3 x %struct.range]*, i32*, i32* }
%struct.ray = type { %class._point3d, %class._vect3d }
%class._point3d = type { double, double, double }
%class._vect3d = type { double, double, double }
%struct.triangles = type { i32, i32, %class._point3d*, %struct.triangle* }
%struct.triangle = type { [3 x i32] }
%struct.anon.5 = type { i32*, i32**, %struct.ray**, %struct.treeNode**, %struct.triangles* }
%struct.timeval = type { i64, i64 }
%struct.anon.6 = type { i32*, %class._point3d**, %struct.triangles*, [3 x %struct.range*]* }
%struct.anon.7 = type { i32*, [3 x %struct.event*]*, i32*, [3 x %struct.range*]* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%struct.anon.8 = type { i32*, i32** }
%struct.cmpVal = type { i8 }
%struct.anon.17 = type { i64*, %struct.event**, %struct.event**, i32* }
%struct.anon.18 = type { i64*, %struct.event**, %struct.event** }
%struct.anon.19 = type { i64*, i64*, i64*, i32*, %struct.event**, %struct.cmpVal*, %struct.event**, i32**, i32* }
%struct.transpose = type { i32*, i32* }
%struct.blockTrans = type { %struct.event*, %struct.event*, i32*, i32*, i32* }
%struct.anon.21 = type { i64*, i32**, i64*, i32*, i32*, %struct.cmpVal*, %struct.event**, %struct.event**, %struct.event** }
%struct.anon.9 = type { %struct.treeNode** }
%"struct.utils::addF" = type { i8 }
%"struct.sequence::getA" = type { i32* }
%struct.anon.10 = type { i32*, i32*, i32*, i32**, %"struct.utils::addF"*, %"struct.sequence::getA"* }
%struct.anon.11 = type { i32*, i32*, i32*, i32**, %"struct.utils::addF"*, %"struct.sequence::getA"*, i32**, i8*, i8* }
%"struct.std::less" = type { i8 }
%"struct.sequence::getA.12" = type { float* }
%struct.anon.13 = type { i32*, i32*, i32*, i32**, %"struct.std::less"*, %"struct.sequence::getA.12"* }
%"struct.sequence::getA.14" = type { %struct.event* }
%struct.anon.15 = type { i32*, i32*, i32*, i32**, i8** }
%struct.anon.16 = type { i32*, i32*, i32*, %struct.event**, i32**, i8**, %"struct.sequence::getA.14"* }
%"struct.std::pair.22" = type { %struct.event*, %struct.event* }
%struct.anon.23 = type { %struct.event**, %"struct.std::pair.22"*, %struct.cmpVal* }
%struct.anon.24 = type { %struct.event**, %"struct.std::pair.22"*, %struct.cmpVal* }
%"struct.std::plus" = type { i8 }
%"struct.sequence::getA.25" = type { i32* }
%struct.anon.26 = type { i64*, i64*, i64*, i32**, %"struct.std::plus"*, %"struct.sequence::getA.25"* }
%struct.anon.27 = type { i64*, i64*, i64*, i32**, %"struct.std::plus"*, %"struct.sequence::getA.25"*, i32**, i8*, i8* }
%struct.anon.28 = type { %struct.transpose*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.anon.29 = type { %struct.transpose*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.anon.30 = type { %struct.blockTrans*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.anon.31 = type { %struct.blockTrans*, i32*, i32*, i32*, i32*, i32*, i32* }

$_ZN8treeNodeC2EPP5eventiP5range = comdat any

$_Z10sampleSortI5event6cmpValiEvPT_T1_T0_ = comdat any

$_ZN8treeNode3delEPS_ = comdat any

$_ZN5timer7reportTEd = comdat any

$_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb = comdat any

$_ZN8sequence8maxIndexIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_ = comdat any

$_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_ = comdat any

$_ZN8sequence10packSerialI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_ = comdat any

$_Z9quickSortI5event6cmpValiEvPT_T1_T0_ = comdat any

$_Z9quickSortI5event6cmpVallEvPT_T1_T0_ = comdat any

$_Z5splitI5event6cmpValiESt4pairIPT_S4_ES4_T1_T0_ = comdat any

$_Z15quickSortSerialI5event6cmpVallEvPT_T1_T0_ = comdat any

$_Z5splitI5event6cmpVallESt4pairIPT_S4_ES4_T1_T0_ = comdat any

$_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb = comdat any

$_ZN9transposeIiiE6transREiiiiii = comdat any

$_ZN10blockTransI5eventiE6transREiiiiii = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZL3_tm = internal global %struct.timer zeroinitializer, align 8
@CHECK = local_unnamed_addr global i32 0, align 4
@STATS = local_unnamed_addr global i32 0, align 4
@CT = local_unnamed_addr global float 6.000000e+00, align 4
@CL = local_unnamed_addr global float 1.250000e+00, align 4
@maxExpand = local_unnamed_addr global float 0x3FF99999A0000000, align 4
@maxRecursionDepth = local_unnamed_addr global i32 25, align 4
@minParallelSize = local_unnamed_addr global i32 500000, align 4
@epsilon = local_unnamed_addr global float 0x3E7AD7F2A0000000, align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [44 x i8] c"kdTree: mismatched lengths, something wrong\00", align 1
@tcount = local_unnamed_addr global i32 0, align 4
@ccount = local_unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"generate and sort events\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"build tree\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Triangles across all leaves = \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c" Leaves = \00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"intersect rays\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"delete tree\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"bad intersect in checking ray intersection\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"tcount=\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c" ccount=\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"PBBS-time: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_kdTree.C, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mallopt(i32, i32) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readnone uwtable
define i64 @_Z7hashValm(i64 %a) local_unnamed_addr #3 {
entry:
  %mul = mul i64 %a, 982451653
  %add = add i64 %mul, 12345
  ret i64 %add
}

; Function Attrs: norecurse nounwind readonly uwtable
define float @_Z14boxSurfaceAreaP5range(%struct.range* nocapture readonly %B) local_unnamed_addr #4 {
entry:
  %max = getelementptr inbounds %struct.range, %struct.range* %B, i64 0, i32 1
  %0 = load float, float* %max, align 4, !tbaa !14
  %min = getelementptr inbounds %struct.range, %struct.range* %B, i64 0, i32 0
  %1 = load float, float* %min, align 4, !tbaa !19
  %sub = fsub float %0, %1
  %max3 = getelementptr inbounds %struct.range, %struct.range* %B, i64 1, i32 1
  %2 = load float, float* %max3, align 4, !tbaa !14
  %min5 = getelementptr inbounds %struct.range, %struct.range* %B, i64 1, i32 0
  %3 = load float, float* %min5, align 4, !tbaa !19
  %sub6 = fsub float %2, %3
  %max8 = getelementptr inbounds %struct.range, %struct.range* %B, i64 2, i32 1
  %4 = load float, float* %max8, align 4, !tbaa !14
  %min10 = getelementptr inbounds %struct.range, %struct.range* %B, i64 2, i32 0
  %5 = load float, float* %min10, align 4, !tbaa !19
  %sub11 = fsub float %4, %5
  %mul = fmul float %sub, %sub6
  %mul12 = fmul float %sub6, %sub11
  %add = fadd float %mul, %mul12
  %mul13 = fmul float %sub, %sub11
  %add14 = fadd float %mul13, %add
  %mul15 = fmul float %add14, 2.000000e+00
  ret float %mul15
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: norecurse nounwind readonly uwtable
define <2 x float> @_Z8fixRangeff(float %minv, float %maxv) local_unnamed_addr #4 {
entry:
  %cmp = fcmp oeq float %minv, %maxv
  %0 = load float, float* @epsilon, align 4
  %add = fadd float %0, %minv
  %maxv.sink = select i1 %cmp, float %add, float %maxv
  %retval.0.vec.insert8 = insertelement <2 x float> undef, float %minv, i32 0
  %retval.4.vec.insert10 = insertelement <2 x float> %retval.0.vec.insert8, float %maxv.sink, i32 1
  ret <2 x float> %retval.4.vec.insert10
}

; Function Attrs: norecurse nounwind readonly uwtable
define { <2 x float>, i64 } @_Z13bestCutSerialP5event5rangeS1_S1_i(%struct.event* nocapture readonly %E, <2 x float> %r.coerce, <2 x float> %r1.coerce, <2 x float> %r2.coerce, i32 %n) local_unnamed_addr #4 {
entry:
  %r.sroa.0.4.vec.extract = extractelement <2 x float> %r.coerce, i32 1
  %r.sroa.0.0.vec.extract = extractelement <2 x float> %r.coerce, i32 0
  %sub = fsub float %r.sroa.0.4.vec.extract, %r.sroa.0.0.vec.extract
  %cmp = fcmp oeq float %sub, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %retval.sroa.0.4.vec.insert = shufflevector <2 x float> <float 0x47EFFFFFE0000000, float undef>, <2 x float> %r.coerce, <2 x i32> <i32 0, i32 2>
  %retval.sroa.5.8.insert.ext = zext i32 %n to i64
  br label %return

if.end:                                           ; preds = %entry
  %r1.sroa.0.4.vec.extract = extractelement <2 x float> %r1.coerce, i32 1
  %r1.sroa.0.0.vec.extract = extractelement <2 x float> %r1.coerce, i32 0
  %sub4 = fsub float %r1.sroa.0.4.vec.extract, %r1.sroa.0.0.vec.extract
  %mul = fmul float %sub4, 2.000000e+00
  %r2.sroa.0.4.vec.extract = extractelement <2 x float> %r2.coerce, i32 1
  %r2.sroa.0.0.vec.extract = extractelement <2 x float> %r2.coerce, i32 0
  %sub7 = fsub float %r2.sroa.0.4.vec.extract, %r2.sroa.0.0.vec.extract
  %mul8 = fmul float %mul, %sub7
  %add = fadd float %sub4, %sub7
  %mul15 = fmul float %add, 2.000000e+00
  %div = sdiv i32 %n, 2
  %cmp16121 = icmp sgt i32 %n, 0
  br i1 %cmp16121, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %wide.trip.count = zext i32 %n to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %0 = icmp eq i32 %n, 1
  br i1 %0, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %if.end39.1, %for.body.lr.ph
  %ln.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %ln.1.1, %if.end39.1 ]
  %rn.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %rn.1.1, %if.end39.1 ]
  %k.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %k.1.1, %if.end39.1 ]
  %minCost.1.lcssa.ph = phi float [ undef, %for.body.lr.ph ], [ %minCost.1.1, %if.end39.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %if.end39.1 ]
  %inLeft.0128.unr = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select102.1, %if.end39.1 ]
  %inRight.0127.unr = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select.1, %if.end39.1 ]
  %minCost.0126.unr = phi float [ 0x47EFFFFFE0000000, %for.body.lr.ph ], [ %minCost.1.1, %if.end39.1 ]
  %k.0125.unr = phi i32 [ 0, %for.body.lr.ph ], [ %k.1.1, %if.end39.1 ]
  %rn.0124.unr = phi i32 [ 0, %for.body.lr.ph ], [ %rn.1.1, %if.end39.1 ]
  %ln.0122.unr = phi i32 [ 0, %for.body.lr.ph ], [ %ln.1.1, %if.end39.1 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %p.epil = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.unr, i32 1
  %1 = load i32, i32* %p.epil, align 4, !tbaa !20
  %2 = shl i32 %1, 31
  %sext.epil = ashr exact i32 %2, 31
  %spec.select.epil = add nsw i32 %sext.epil, %inRight.0127.unr
  %v.epil = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.unr, i32 0
  %3 = load float, float* %v.epil, align 4, !tbaa !23
  %sub22.epil = fsub float %3, %r.sroa.0.0.vec.extract
  %mul23.epil = fmul float %mul15, %sub22.epil
  %add24.epil = fadd float %mul8, %mul23.epil
  %sub29.epil = fsub float %r.sroa.0.4.vec.extract, %3
  %mul30.epil = fmul float %mul15, %sub29.epil
  %add31.epil = fadd float %mul8, %mul30.epil
  %conv32.epil = sitofp i32 %inLeft.0128.unr to float
  %mul33.epil = fmul float %add24.epil, %conv32.epil
  %conv34.epil = sitofp i32 %spec.select.epil to float
  %mul35.epil = fmul float %add31.epil, %conv34.epil
  %add36.epil = fadd float %mul33.epil, %mul35.epil
  %cmp37.epil = fcmp olt float %add36.epil, %minCost.0126.unr
  br i1 %cmp37.epil, label %if.then38.epil, label %for.cond.cleanup

if.then38.epil:                                   ; preds = %for.body.epil
  %4 = trunc i64 %indvars.iv.unr to i32
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil, %if.then38.epil, %if.end
  %ln.0.lcssa = phi i32 [ %div, %if.end ], [ %ln.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %inLeft.0128.unr, %if.then38.epil ], [ %ln.0122.unr, %for.body.epil ]
  %rn.0.lcssa = phi i32 [ 0, %if.end ], [ %rn.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %spec.select.epil, %if.then38.epil ], [ %rn.0124.unr, %for.body.epil ]
  %k.0.lcssa = phi i32 [ 0, %if.end ], [ %k.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %4, %if.then38.epil ], [ %k.0125.unr, %for.body.epil ]
  %minCost.0.lcssa = phi float [ 0x47EFFFFFE0000000, %if.end ], [ %minCost.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %add36.epil, %if.then38.epil ], [ %minCost.0126.unr, %for.body.epil ]
  %idxprom48 = sext i32 %k.0.lcssa to i64
  %v50 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %idxprom48, i32 0
  %5 = load float, float* %v50, align 4, !tbaa !23
  %retval.sroa.0.0.vec.insert109 = insertelement <2 x float> undef, float %minCost.0.lcssa, i32 0
  %retval.sroa.0.4.vec.insert111 = insertelement <2 x float> %retval.sroa.0.0.vec.insert109, float %5, i32 1
  %retval.sroa.5.8.insert.ext113 = zext i32 %ln.0.lcssa to i64
  %retval.sroa.5.12.insert.ext117 = zext i32 %rn.0.lcssa to i64
  br label %return

for.body:                                         ; preds = %if.end39.1, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %if.end39.1 ]
  %inLeft.0128 = phi i32 [ 0, %for.body.lr.ph.new ], [ %spec.select102.1, %if.end39.1 ]
  %inRight.0127 = phi i32 [ %div, %for.body.lr.ph.new ], [ %spec.select.1, %if.end39.1 ]
  %minCost.0126 = phi float [ 0x47EFFFFFE0000000, %for.body.lr.ph.new ], [ %minCost.1.1, %if.end39.1 ]
  %k.0125 = phi i32 [ 0, %for.body.lr.ph.new ], [ %k.1.1, %if.end39.1 ]
  %rn.0124 = phi i32 [ 0, %for.body.lr.ph.new ], [ %rn.1.1, %if.end39.1 ]
  %ln.0122 = phi i32 [ %div, %for.body.lr.ph.new ], [ %ln.1.1, %if.end39.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.1, %if.end39.1 ]
  %p = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv, i32 1
  %6 = load i32, i32* %p, align 4, !tbaa !20
  %and = and i32 %6, 1
  %7 = shl i32 %6, 31
  %sext = ashr exact i32 %7, 31
  %spec.select = add nsw i32 %sext, %inRight.0127
  %v = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv, i32 0
  %8 = load float, float* %v, align 4, !tbaa !23
  %sub22 = fsub float %8, %r.sroa.0.0.vec.extract
  %mul23 = fmul float %mul15, %sub22
  %add24 = fadd float %mul8, %mul23
  %sub29 = fsub float %r.sroa.0.4.vec.extract, %8
  %mul30 = fmul float %mul15, %sub29
  %add31 = fadd float %mul8, %mul30
  %conv32 = sitofp i32 %inLeft.0128 to float
  %mul33 = fmul float %add24, %conv32
  %conv34 = sitofp i32 %spec.select to float
  %mul35 = fmul float %add31, %conv34
  %add36 = fadd float %mul33, %mul35
  %cmp37 = fcmp olt float %add36, %minCost.0126
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body
  %9 = trunc i64 %indvars.iv to i32
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %for.body
  %ln.1 = phi i32 [ %inLeft.0128, %if.then38 ], [ %ln.0122, %for.body ]
  %rn.1 = phi i32 [ %spec.select, %if.then38 ], [ %rn.0124, %for.body ]
  %k.1 = phi i32 [ %9, %if.then38 ], [ %k.0125, %for.body ]
  %minCost.1 = phi float [ %add36, %if.then38 ], [ %minCost.0126, %for.body ]
  %10 = xor i32 %and, 1
  %spec.select102 = add nuw nsw i32 %10, %inLeft.0128
  %indvars.iv.next = or i64 %indvars.iv, 1
  %p.1 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.next, i32 1
  %11 = load i32, i32* %p.1, align 4, !tbaa !20
  %and.1 = and i32 %11, 1
  %12 = shl i32 %11, 31
  %sext.1 = ashr exact i32 %12, 31
  %spec.select.1 = add nsw i32 %sext.1, %spec.select
  %v.1 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.next, i32 0
  %13 = load float, float* %v.1, align 4, !tbaa !23
  %sub22.1 = fsub float %13, %r.sroa.0.0.vec.extract
  %mul23.1 = fmul float %mul15, %sub22.1
  %add24.1 = fadd float %mul8, %mul23.1
  %sub29.1 = fsub float %r.sroa.0.4.vec.extract, %13
  %mul30.1 = fmul float %mul15, %sub29.1
  %add31.1 = fadd float %mul8, %mul30.1
  %conv32.1 = sitofp i32 %spec.select102 to float
  %mul33.1 = fmul float %add24.1, %conv32.1
  %conv34.1 = sitofp i32 %spec.select.1 to float
  %mul35.1 = fmul float %add31.1, %conv34.1
  %add36.1 = fadd float %mul33.1, %mul35.1
  %cmp37.1 = fcmp olt float %add36.1, %minCost.1
  br i1 %cmp37.1, label %if.then38.1, label %if.end39.1

return:                                           ; preds = %for.cond.cleanup, %if.then
  %retval.sroa.5.12.insert.ext117.sink = phi i64 [ %retval.sroa.5.12.insert.ext117, %for.cond.cleanup ], [ %retval.sroa.5.8.insert.ext, %if.then ]
  %retval.sroa.5.8.insert.ext113.sink = phi i64 [ %retval.sroa.5.8.insert.ext113, %for.cond.cleanup ], [ %retval.sroa.5.8.insert.ext, %if.then ]
  %retval.sroa.0.0 = phi <2 x float> [ %retval.sroa.0.4.vec.insert111, %for.cond.cleanup ], [ %retval.sroa.0.4.vec.insert, %if.then ]
  %retval.sroa.5.12.insert.shift118 = shl nuw i64 %retval.sroa.5.12.insert.ext117.sink, 32
  %retval.sroa.5.12.insert.insert120 = or i64 %retval.sroa.5.12.insert.shift118, %retval.sroa.5.8.insert.ext113.sink
  %.fca.0.insert = insertvalue { <2 x float>, i64 } undef, <2 x float> %retval.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, i64 } %.fca.0.insert, i64 %retval.sroa.5.12.insert.insert120, 1
  ret { <2 x float>, i64 } %.fca.1.insert

if.then38.1:                                      ; preds = %if.end39
  %14 = trunc i64 %indvars.iv.next to i32
  br label %if.end39.1

if.end39.1:                                       ; preds = %if.then38.1, %if.end39
  %ln.1.1 = phi i32 [ %spec.select102, %if.then38.1 ], [ %ln.1, %if.end39 ]
  %rn.1.1 = phi i32 [ %spec.select.1, %if.then38.1 ], [ %rn.1, %if.end39 ]
  %k.1.1 = phi i32 [ %14, %if.then38.1 ], [ %k.1, %if.end39 ]
  %minCost.1.1 = phi float [ %add36.1, %if.then38.1 ], [ %minCost.1, %if.end39 ]
  %15 = xor i32 %and.1, 1
  %spec.select102.1 = add nuw nsw i32 %15, %spec.select102
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

; Function Attrs: uwtable
define { <2 x float>, i64 } @_Z7bestCutP5event5rangeS1_S1_i(%struct.event* %E, <2 x float> %r.coerce, <2 x float> %r1.coerce, <2 x float> %r2.coerce, i32 %n) local_unnamed_addr #6 {
entry:
  %r = alloca <2 x float>, align 8
  %E.addr = alloca %struct.event*, align 8
  %n.addr = alloca i32, align 4
  %orthogArea = alloca float, align 4
  %diameter = alloca float, align 4
  %upperC = alloca i32*, align 8
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %cost = alloca float*, align 8
  %i34 = alloca i32, align 4
  %agg.captured41 = alloca %struct.anon.0, align 8
  store <2 x float> %r.coerce, <2 x float>* %r, align 8
  store %struct.event* %E, %struct.event** %E.addr, align 8, !tbaa !24
  store i32 %n, i32* %n.addr, align 4, !tbaa !26
  %0 = load i32, i32* @minParallelSize, align 4, !tbaa !26
  %cmp = icmp sgt i32 %0, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %r.sroa.0.4.vec.extract.i = extractelement <2 x float> %r.coerce, i32 1
  %r.sroa.0.0.vec.extract.i = extractelement <2 x float> %r.coerce, i32 0
  %sub.i = fsub float %r.sroa.0.4.vec.extract.i, %r.sroa.0.0.vec.extract.i
  %cmp.i = fcmp oeq float %sub.i, 0.000000e+00
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %retval.sroa.0.4.vec.insert.i = shufflevector <2 x float> <float 0x47EFFFFFE0000000, float undef>, <2 x float> %r.coerce, <2 x i32> <i32 0, i32 2>
  %retval.sroa.5.8.insert.ext.i = zext i32 %n to i64
  %retval.sroa.5.12.insert.shift.i = shl nuw i64 %retval.sroa.5.8.insert.ext.i, 32
  %retval.sroa.5.12.insert.insert.i = or i64 %retval.sroa.5.12.insert.shift.i, %retval.sroa.5.8.insert.ext.i
  br label %return

if.end.i:                                         ; preds = %if.then
  %r1.sroa.0.4.vec.extract.i = extractelement <2 x float> %r1.coerce, i32 1
  %r1.sroa.0.0.vec.extract.i = extractelement <2 x float> %r1.coerce, i32 0
  %sub4.i = fsub float %r1.sroa.0.4.vec.extract.i, %r1.sroa.0.0.vec.extract.i
  %mul.i = fmul float %sub4.i, 2.000000e+00
  %r2.sroa.0.4.vec.extract.i = extractelement <2 x float> %r2.coerce, i32 1
  %r2.sroa.0.0.vec.extract.i = extractelement <2 x float> %r2.coerce, i32 0
  %sub7.i = fsub float %r2.sroa.0.4.vec.extract.i, %r2.sroa.0.0.vec.extract.i
  %mul8.i = fmul float %mul.i, %sub7.i
  %add.i = fadd float %sub4.i, %sub7.i
  %mul15.i = fmul float %add.i, 2.000000e+00
  %div.i = sdiv i32 %n, 2
  %cmp16121.i = icmp sgt i32 %n, 0
  br i1 %cmp16121.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %wide.trip.count.i = zext i32 %n to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %1 = icmp eq i32 %n, 1
  br i1 %1, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = sub nsw i64 %wide.trip.count.i, %xtraiter
  br label %for.body.i

for.cond.cleanup.i.loopexit.unr-lcssa:            ; preds = %if.end39.i.1, %for.body.lr.ph.i
  %ln.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %ln.1.i.1, %if.end39.i.1 ]
  %rn.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %rn.1.i.1, %if.end39.i.1 ]
  %k.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %k.1.i.1, %if.end39.i.1 ]
  %minCost.1.i.lcssa.ph = phi float [ undef, %for.body.lr.ph.i ], [ %minCost.1.i.1, %if.end39.i.1 ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.1, %if.end39.i.1 ]
  %inLeft.0128.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select102.i.1, %if.end39.i.1 ]
  %inRight.0127.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i.1, %if.end39.i.1 ]
  %minCost.0126.i.unr = phi float [ 0x47EFFFFFE0000000, %for.body.lr.ph.i ], [ %minCost.1.i.1, %if.end39.i.1 ]
  %k.0125.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %k.1.i.1, %if.end39.i.1 ]
  %rn.0124.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %rn.1.i.1, %if.end39.i.1 ]
  %ln.0122.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %ln.1.i.1, %if.end39.i.1 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup.i, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa
  %p.i.epil = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.i.unr, i32 1
  %2 = load i32, i32* %p.i.epil, align 4, !tbaa !20
  %3 = shl i32 %2, 31
  %sext.i.epil = ashr exact i32 %3, 31
  %spec.select.i.epil = add nsw i32 %sext.i.epil, %inRight.0127.i.unr
  %v.i.epil = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.i.unr, i32 0
  %4 = load float, float* %v.i.epil, align 4, !tbaa !23
  %sub22.i.epil = fsub float %4, %r.sroa.0.0.vec.extract.i
  %mul23.i.epil = fmul float %mul15.i, %sub22.i.epil
  %add24.i.epil = fadd float %mul8.i, %mul23.i.epil
  %sub29.i.epil = fsub float %r.sroa.0.4.vec.extract.i, %4
  %mul30.i.epil = fmul float %mul15.i, %sub29.i.epil
  %add31.i.epil = fadd float %mul8.i, %mul30.i.epil
  %conv32.i.epil = sitofp i32 %inLeft.0128.i.unr to float
  %mul33.i.epil = fmul float %add24.i.epil, %conv32.i.epil
  %conv34.i.epil = sitofp i32 %spec.select.i.epil to float
  %mul35.i.epil = fmul float %add31.i.epil, %conv34.i.epil
  %add36.i.epil = fadd float %mul33.i.epil, %mul35.i.epil
  %cmp37.i.epil = fcmp olt float %add36.i.epil, %minCost.0126.i.unr
  br i1 %cmp37.i.epil, label %if.then38.i.epil, label %for.cond.cleanup.i

if.then38.i.epil:                                 ; preds = %for.body.i.epil
  %5 = trunc i64 %indvars.iv.i.unr to i32
  br label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil, %if.then38.i.epil, %if.end.i
  %ln.0.lcssa.i = phi i32 [ %div.i, %if.end.i ], [ %ln.1.i.lcssa.ph, %for.cond.cleanup.i.loopexit.unr-lcssa ], [ %inLeft.0128.i.unr, %if.then38.i.epil ], [ %ln.0122.i.unr, %for.body.i.epil ]
  %rn.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %rn.1.i.lcssa.ph, %for.cond.cleanup.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %if.then38.i.epil ], [ %rn.0124.i.unr, %for.body.i.epil ]
  %k.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %k.1.i.lcssa.ph, %for.cond.cleanup.i.loopexit.unr-lcssa ], [ %5, %if.then38.i.epil ], [ %k.0125.i.unr, %for.body.i.epil ]
  %minCost.0.lcssa.i = phi float [ 0x47EFFFFFE0000000, %if.end.i ], [ %minCost.1.i.lcssa.ph, %for.cond.cleanup.i.loopexit.unr-lcssa ], [ %add36.i.epil, %if.then38.i.epil ], [ %minCost.0126.i.unr, %for.body.i.epil ]
  %idxprom48.i = sext i32 %k.0.lcssa.i to i64
  %v50.i = getelementptr inbounds %struct.event, %struct.event* %E, i64 %idxprom48.i, i32 0
  %6 = load float, float* %v50.i, align 4, !tbaa !23
  %retval.sroa.0.0.vec.insert109.i = insertelement <2 x float> undef, float %minCost.0.lcssa.i, i32 0
  %retval.sroa.0.4.vec.insert111.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert109.i, float %6, i32 1
  %retval.sroa.5.8.insert.ext113.i = zext i32 %ln.0.lcssa.i to i64
  %retval.sroa.5.12.insert.ext117.i = zext i32 %rn.0.lcssa.i to i64
  %retval.sroa.5.12.insert.shift118.i = shl nuw i64 %retval.sroa.5.12.insert.ext117.i, 32
  %retval.sroa.5.12.insert.insert120.i = or i64 %retval.sroa.5.12.insert.shift118.i, %retval.sroa.5.8.insert.ext113.i
  br label %return

for.body.i:                                       ; preds = %if.end39.i.1, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.1, %if.end39.i.1 ]
  %inLeft.0128.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %spec.select102.i.1, %if.end39.i.1 ]
  %inRight.0127.i = phi i32 [ %div.i, %for.body.lr.ph.i.new ], [ %spec.select.i.1, %if.end39.i.1 ]
  %minCost.0126.i = phi float [ 0x47EFFFFFE0000000, %for.body.lr.ph.i.new ], [ %minCost.1.i.1, %if.end39.i.1 ]
  %k.0125.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %k.1.i.1, %if.end39.i.1 ]
  %rn.0124.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %rn.1.i.1, %if.end39.i.1 ]
  %ln.0122.i = phi i32 [ %div.i, %for.body.lr.ph.i.new ], [ %ln.1.i.1, %if.end39.i.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.i.new ], [ %niter.nsub.1, %if.end39.i.1 ]
  %p.i = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.i, i32 1
  %7 = load i32, i32* %p.i, align 4, !tbaa !20
  %and.i = and i32 %7, 1
  %8 = shl i32 %7, 31
  %sext.i = ashr exact i32 %8, 31
  %spec.select.i = add nsw i32 %sext.i, %inRight.0127.i
  %v.i = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.i, i32 0
  %9 = load float, float* %v.i, align 4, !tbaa !23
  %sub22.i = fsub float %9, %r.sroa.0.0.vec.extract.i
  %mul23.i = fmul float %mul15.i, %sub22.i
  %add24.i = fadd float %mul8.i, %mul23.i
  %sub29.i = fsub float %r.sroa.0.4.vec.extract.i, %9
  %mul30.i = fmul float %mul15.i, %sub29.i
  %add31.i = fadd float %mul8.i, %mul30.i
  %conv32.i = sitofp i32 %inLeft.0128.i to float
  %mul33.i = fmul float %add24.i, %conv32.i
  %conv34.i = sitofp i32 %spec.select.i to float
  %mul35.i = fmul float %add31.i, %conv34.i
  %add36.i = fadd float %mul33.i, %mul35.i
  %cmp37.i = fcmp olt float %add36.i, %minCost.0126.i
  br i1 %cmp37.i, label %if.then38.i, label %if.end39.i

if.then38.i:                                      ; preds = %for.body.i
  %10 = trunc i64 %indvars.iv.i to i32
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %for.body.i
  %ln.1.i = phi i32 [ %inLeft.0128.i, %if.then38.i ], [ %ln.0122.i, %for.body.i ]
  %rn.1.i = phi i32 [ %spec.select.i, %if.then38.i ], [ %rn.0124.i, %for.body.i ]
  %k.1.i = phi i32 [ %10, %if.then38.i ], [ %k.0125.i, %for.body.i ]
  %minCost.1.i = phi float [ %add36.i, %if.then38.i ], [ %minCost.0126.i, %for.body.i ]
  %11 = xor i32 %and.i, 1
  %spec.select102.i = add nuw nsw i32 %11, %inLeft.0128.i
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %p.i.1 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.next.i, i32 1
  %12 = load i32, i32* %p.i.1, align 4, !tbaa !20
  %and.i.1 = and i32 %12, 1
  %13 = shl i32 %12, 31
  %sext.i.1 = ashr exact i32 %13, 31
  %spec.select.i.1 = add nsw i32 %sext.i.1, %spec.select.i
  %v.i.1 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.next.i, i32 0
  %14 = load float, float* %v.i.1, align 4, !tbaa !23
  %sub22.i.1 = fsub float %14, %r.sroa.0.0.vec.extract.i
  %mul23.i.1 = fmul float %mul15.i, %sub22.i.1
  %add24.i.1 = fadd float %mul8.i, %mul23.i.1
  %sub29.i.1 = fsub float %r.sroa.0.4.vec.extract.i, %14
  %mul30.i.1 = fmul float %mul15.i, %sub29.i.1
  %add31.i.1 = fadd float %mul8.i, %mul30.i.1
  %conv32.i.1 = sitofp i32 %spec.select102.i to float
  %mul33.i.1 = fmul float %add24.i.1, %conv32.i.1
  %conv34.i.1 = sitofp i32 %spec.select.i.1 to float
  %mul35.i.1 = fmul float %add31.i.1, %conv34.i.1
  %add36.i.1 = fadd float %mul33.i.1, %mul35.i.1
  %cmp37.i.1 = fcmp olt float %add36.i.1, %minCost.1.i
  br i1 %cmp37.i.1, label %if.then38.i.1, label %if.end39.i.1

if.end:                                           ; preds = %entry
  %15 = extractelement <2 x float> %r.coerce, i32 0
  %16 = extractelement <2 x float> %r.coerce, i32 1
  %sub = fsub float %16, %15
  %cmp3 = fcmp oeq float %sub, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %retval.sroa.0.4.vec.insert87 = shufflevector <2 x float> <float 0x47EFFFFFE0000000, float undef>, <2 x float> %r.coerce, <2 x i32> <i32 0, i32 2>
  %retval.sroa.6.8.insert.ext89 = zext i32 %n to i64
  %retval.sroa.6.12.insert.shift94 = shl nuw i64 %retval.sroa.6.8.insert.ext89, 32
  %retval.sroa.6.12.insert.insert96 = or i64 %retval.sroa.6.12.insert.shift94, %retval.sroa.6.8.insert.ext89
  br label %return

if.end6:                                          ; preds = %if.end
  %17 = bitcast float* %orthogArea to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #2
  %r1.sroa.0.4.vec.extract = extractelement <2 x float> %r1.coerce, i32 1
  %r1.sroa.0.0.vec.extract = extractelement <2 x float> %r1.coerce, i32 0
  %sub9 = fsub float %r1.sroa.0.4.vec.extract, %r1.sroa.0.0.vec.extract
  %r2.sroa.0.4.vec.extract = extractelement <2 x float> %r2.coerce, i32 1
  %r2.sroa.0.0.vec.extract = extractelement <2 x float> %r2.coerce, i32 0
  %sub12 = fsub float %r2.sroa.0.4.vec.extract, %r2.sroa.0.0.vec.extract
  %mul = fmul float %sub9, %sub12
  %mul13 = fmul float %mul, 2.000000e+00
  store float %mul13, float* %orthogArea, align 4, !tbaa !27
  %18 = bitcast float* %diameter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #2
  %add = fadd float %sub9, %sub12
  %mul20 = fmul float %add, 2.000000e+00
  store float %mul20, float* %diameter, align 4, !tbaa !27
  %19 = bitcast i32** %upperC to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #2
  %conv21 = sext i32 %n to i64
  %mul22 = shl nsw i64 %conv21, 2
  %call23 = tail call noalias i8* @malloc(i64 %mul22) #2
  %20 = bitcast i32** %upperC to i8**
  store i8* %call23, i8** %20, align 8, !tbaa !24
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  %cmp24 = icmp sgt i32 %n, 0
  %22 = bitcast i8* %call23 to i32*
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end6
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i64 0, i32 0
  store i32* %i, i32** %23, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i64 0, i32 1
  store i32** %upperC, i32*** %24, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i64 0, i32 2
  store %struct.event** %E.addr, %struct.event*** %25, align 8, !tbaa !24
  %26 = bitcast %struct.anon* %agg.captured to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon*, i32, i32)* @__cilk_for_helper to void (i8*, i32, i32)*), i8* nonnull %26, i32 %n, i32 0)
  %.pre = load i32*, i32** %upperC, align 8, !tbaa !24
  %.pre97 = load i32, i32* %n.addr, align 4, !tbaa !26
  %.pre100 = sext i32 %.pre97 to i64
  %.pre101 = shl nsw i64 %.pre100, 2
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end6
  %mul32.pre-phi = phi i64 [ %.pre101, %if.then25 ], [ %mul22, %if.end6 ]
  %27 = phi i32 [ %.pre97, %if.then25 ], [ %n, %if.end6 ]
  %28 = phi i32* [ %.pre, %if.then25 ], [ %22, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #2
  %call.i82 = call i32 @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb(i32* %28, i32 0, i32 %27, i32* %28, i32 0, i1 zeroext false, i1 zeroext false)
  %29 = bitcast float** %cost to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #2
  %call33 = call noalias i8* @malloc(i64 %mul32.pre-phi) #2
  %30 = bitcast float** %cost to i8**
  store i8* %call33, i8** %30, align 8, !tbaa !24
  %31 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #2
  store i32 0, i32* %i34, align 4, !tbaa !26
  %cmp35 = icmp sgt i32 %27, 0
  %32 = bitcast i8* %call33 to float*
  br i1 %cmp35, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end29
  %33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured41, i64 0, i32 0
  store i32* %i34, i32** %33, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured41, i64 0, i32 1
  store i32** %upperC, i32*** %34, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured41, i64 0, i32 2
  store i32* %n.addr, i32** %35, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured41, i64 0, i32 3
  store %struct.event** %E.addr, %struct.event*** %36, align 8, !tbaa !24
  %37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured41, i64 0, i32 4
  %38 = bitcast %struct.range** %37 to <2 x float>**
  store <2 x float>* %r, <2 x float>** %38, align 8, !tbaa !24
  %39 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured41, i64 0, i32 5
  store float* %orthogArea, float** %39, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured41, i64 0, i32 6
  store float* %diameter, float** %40, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured41, i64 0, i32 7
  store float** %cost, float*** %41, align 8, !tbaa !24
  %42 = bitcast %struct.anon.0* %agg.captured41 to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.0*, i32, i32)* @__cilk_for_helper.4 to void (i8*, i32, i32)*), i8* nonnull %42, i32 %27, i32 0)
  %.pre98 = load float*, float** %cost, align 8, !tbaa !24
  %.pre99 = load i32, i32* %n.addr, align 4, !tbaa !26
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end29
  %43 = phi i32 [ %.pre99, %if.then36 ], [ %27, %if.end29 ]
  %44 = phi float* [ %.pre98, %if.then36 ], [ %32, %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #2
  %call.i = call i32 @_ZN8sequence8maxIndexIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_(i32 0, i32 %43, float* %44)
  %45 = load float*, float** %cost, align 8, !tbaa !24
  %idxprom = sext i32 %call.i to i64
  %arrayidx = getelementptr inbounds float, float* %45, i64 %idxprom
  %46 = load float, float* %arrayidx, align 4, !tbaa !27
  %47 = load i32*, i32** %upperC, align 8, !tbaa !24
  %arrayidx46 = getelementptr inbounds i32, i32* %47, i64 %idxprom
  %48 = load i32, i32* %arrayidx46, align 4, !tbaa !26
  %sub47 = sub nsw i32 %call.i, %48
  %49 = load i32, i32* %n.addr, align 4, !tbaa !26
  %div48 = sdiv i32 %49, 2
  %50 = load %struct.event*, %struct.event** %E.addr, align 8, !tbaa !24
  %p = getelementptr inbounds %struct.event, %struct.event* %50, i64 %idxprom, i32 1
  %51 = load i32, i32* %p, align 4, !tbaa !20
  %and = and i32 %51, 1
  %add53.neg = sub i32 %div48, %48
  %sub54 = sub i32 %add53.neg, %and
  %52 = bitcast i32* %47 to i8*
  call void @free(i8* %52) #2
  %53 = load i8*, i8** %30, align 8, !tbaa !24
  call void @free(i8* %53) #2
  %54 = load %struct.event*, %struct.event** %E.addr, align 8, !tbaa !24
  %v = getelementptr inbounds %struct.event, %struct.event* %54, i64 %idxprom, i32 0
  %55 = load float, float* %v, align 4, !tbaa !23
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %46, i32 0
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %55, i32 1
  %retval.sroa.6.8.insert.ext = zext i32 %sub47 to i64
  %retval.sroa.6.12.insert.ext = zext i32 %sub54 to i64
  %retval.sroa.6.12.insert.shift = shl nuw i64 %retval.sroa.6.12.insert.ext, 32
  %retval.sroa.6.12.insert.insert = or i64 %retval.sroa.6.12.insert.shift, %retval.sroa.6.8.insert.ext
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #2
  br label %return

return:                                           ; preds = %for.cond.cleanup.i, %if.then.i, %if.end42, %if.then4
  %retval.sroa.6.0 = phi i64 [ %retval.sroa.6.12.insert.insert96, %if.then4 ], [ %retval.sroa.6.12.insert.insert, %if.end42 ], [ %retval.sroa.5.12.insert.insert.i, %if.then.i ], [ %retval.sroa.5.12.insert.insert120.i, %for.cond.cleanup.i ]
  %retval.sroa.0.0 = phi <2 x float> [ %retval.sroa.0.4.vec.insert87, %if.then4 ], [ %retval.sroa.0.4.vec.insert, %if.end42 ], [ %retval.sroa.0.4.vec.insert.i, %if.then.i ], [ %retval.sroa.0.4.vec.insert111.i, %for.cond.cleanup.i ]
  %.fca.0.insert = insertvalue { <2 x float>, i64 } undef, <2 x float> %retval.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, i64 } %.fca.0.insert, i64 %retval.sroa.6.0, 1
  ret { <2 x float>, i64 } %.fca.1.insert

if.then38.i.1:                                    ; preds = %if.end39.i
  %56 = trunc i64 %indvars.iv.next.i to i32
  br label %if.end39.i.1

if.end39.i.1:                                     ; preds = %if.then38.i.1, %if.end39.i
  %ln.1.i.1 = phi i32 [ %spec.select102.i, %if.then38.i.1 ], [ %ln.1.i, %if.end39.i ]
  %rn.1.i.1 = phi i32 [ %spec.select.i.1, %if.then38.i.1 ], [ %rn.1.i, %if.end39.i ]
  %k.1.i.1 = phi i32 [ %56, %if.then38.i.1 ], [ %k.1.i, %if.end39.i ]
  %minCost.1.i.1 = phi float [ %add36.i.1, %if.then38.i.1 ], [ %minCost.1.i, %if.end39.i ]
  %57 = xor i32 %and.i.1, 1
  %spec.select102.i.1 = add nuw nsw i32 %57, %spec.select102.i
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper(%struct.anon* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !28
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %__context, i64 0, i32 2
  %5 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !30
  %6 = load %struct.event*, %struct.event** %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %__context, i64 0, i32 1
  %8 = load i32**, i32*** %7, align 8, !tbaa !31
  %9 = load i32*, i32** %8, align 8, !tbaa !24
  %10 = sext i32 %add to i64
  %11 = add i32 %__high, -1
  %12 = sub i32 %11, %__low
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %13, 1
  %min.iters.check = icmp ult i64 %14, 9
  br i1 %min.iters.check, label %loop.body.preheader, label %vector.memcheck

loop.body.preheader:                              ; preds = %middle.block.loop.body.preheader_crit_edge, %vector.memcheck, %loop.body.lr.ph
  %.pre-phi = phi i32 [ %.pre, %middle.block.loop.body.preheader_crit_edge ], [ %12, %vector.memcheck ], [ %12, %loop.body.lr.ph ]
  %indvars.iv.ph = phi i64 [ %ind.end, %middle.block.loop.body.preheader_crit_edge ], [ %10, %vector.memcheck ], [ %10, %loop.body.lr.ph ]
  %__index.addr.010.ph = phi i32 [ %ind.end20, %middle.block.loop.body.preheader_crit_edge ], [ %__low, %vector.memcheck ], [ %__low, %loop.body.lr.ph ]
  %15 = sub i32 %__high, %__index.addr.010.ph
  %xtraiter = and i32 %15, 7
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %loop.body.prol.loopexit, label %loop.body.prol.preheader

loop.body.prol.preheader:                         ; preds = %loop.body.preheader
  %16 = add nsw i32 %xtraiter, -1
  %17 = add nsw i64 %indvars.iv.ph, 1
  br label %loop.body.prol

loop.body.prol:                                   ; preds = %loop.body.prol, %loop.body.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %loop.body.prol ], [ %indvars.iv.ph, %loop.body.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %loop.body.prol ], [ %xtraiter, %loop.body.prol.preheader ]
  %p.prol = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.prol, i32 1
  %18 = load i32, i32* %p.prol, align 4, !tbaa !20
  %and.prol = and i32 %18, 1
  %arrayidx2.prol = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.prol
  store i32 %and.prol, i32* %arrayidx2.prol, align 4, !tbaa !26
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add nsw i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %loop.body.prol.loopexit.loopexit, label %loop.body.prol, !llvm.loop !32

loop.body.prol.loopexit.loopexit:                 ; preds = %loop.body.prol
  %19 = zext i32 %16 to i64
  %20 = add nsw i64 %17, %19
  %21 = add i32 %xtraiter, %__index.addr.010.ph
  br label %loop.body.prol.loopexit

loop.body.prol.loopexit:                          ; preds = %loop.body.prol.loopexit.loopexit, %loop.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %loop.body.preheader ], [ %20, %loop.body.prol.loopexit.loopexit ]
  %__index.addr.010.unr = phi i32 [ %__index.addr.010.ph, %loop.body.preheader ], [ %21, %loop.body.prol.loopexit.loopexit ]
  %22 = icmp ult i32 %.pre-phi, 7
  br i1 %22, label %loop.cond.cleanup, label %loop.body.preheader25

loop.body.preheader25:                            ; preds = %loop.body.prol.loopexit
  br label %loop.body

vector.memcheck:                                  ; preds = %loop.body.lr.ph
  %scevgep = getelementptr i32, i32* %9, i64 %10
  %23 = add nsw i64 %14, %10
  %scevgep13 = getelementptr i32, i32* %9, i64 %23
  %scevgep15 = getelementptr %struct.event, %struct.event* %6, i64 %10, i32 1
  %scevgep17 = getelementptr %struct.event, %struct.event* %6, i64 %23
  %24 = bitcast %struct.event* %scevgep17 to i32*
  %bound0 = icmp ult i32* %scevgep, %24
  %bound1 = icmp ult i32* %scevgep15, %scevgep13
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %loop.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %25 = add i32 %12, 1
  %26 = and i32 %25, 7
  %n.mod.vf = zext i32 %26 to i64
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %14, %28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %29 = add i64 %index, %10
  %30 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %29, i32 1
  %31 = bitcast i32* %30 to <16 x i32>*
  %wide.vec = load <16 x i32>, <16 x i32>* %31, align 4, !tbaa !20
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %32 = and <8 x i32> %strided.vec, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %33 = getelementptr inbounds i32, i32* %9, i64 %29
  %34 = bitcast i32* %33 to <8 x i32>*
  store <8 x i32> %32, <8 x i32>* %34, align 4, !tbaa !26, !alias.scope !34, !noalias !37
  %index.next = add i64 %index, 8
  %35 = icmp eq i64 %index.next, %n.vec
  br i1 %35, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end20 = add i32 %cast.crd, %__low
  %cmp.n = icmp eq i64 %28, 0
  br i1 %cmp.n, label %loop.cond.cleanup, label %middle.block.loop.body.preheader_crit_edge

middle.block.loop.body.preheader_crit_edge:       ; preds = %middle.block
  %ind.end = add nsw i64 %n.vec, %10
  %.pre = sub i32 %11, %ind.end20
  br label %loop.body.preheader

loop.cond.cleanup:                                ; preds = %loop.body, %loop.body.prol.loopexit, %middle.block, %entry
  ret void

loop.body:                                        ; preds = %loop.body.preheader25, %loop.body
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %loop.body ], [ %indvars.iv.unr, %loop.body.preheader25 ]
  %__index.addr.010 = phi i32 [ %44, %loop.body ], [ %__index.addr.010.unr, %loop.body.preheader25 ]
  %p = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv, i32 1
  %36 = load i32, i32* %p, align 4, !tbaa !20
  %and = and i32 %36, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv
  store i32 %and, i32* %arrayidx2, align 4, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %p.1 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.next, i32 1
  %37 = load i32, i32* %p.1, align 4, !tbaa !20
  %and.1 = and i32 %37, 1
  %arrayidx2.1 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.next
  store i32 %and.1, i32* %arrayidx2.1, align 4, !tbaa !26
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %p.2 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.next.1, i32 1
  %38 = load i32, i32* %p.2, align 4, !tbaa !20
  %and.2 = and i32 %38, 1
  %arrayidx2.2 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.next.1
  store i32 %and.2, i32* %arrayidx2.2, align 4, !tbaa !26
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %p.3 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.next.2, i32 1
  %39 = load i32, i32* %p.3, align 4, !tbaa !20
  %and.3 = and i32 %39, 1
  %arrayidx2.3 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.next.2
  store i32 %and.3, i32* %arrayidx2.3, align 4, !tbaa !26
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %p.4 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.next.3, i32 1
  %40 = load i32, i32* %p.4, align 4, !tbaa !20
  %and.4 = and i32 %40, 1
  %arrayidx2.4 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.next.3
  store i32 %and.4, i32* %arrayidx2.4, align 4, !tbaa !26
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5
  %p.5 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.next.4, i32 1
  %41 = load i32, i32* %p.5, align 4, !tbaa !20
  %and.5 = and i32 %41, 1
  %arrayidx2.5 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.next.4
  store i32 %and.5, i32* %arrayidx2.5, align 4, !tbaa !26
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6
  %p.6 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.next.5, i32 1
  %42 = load i32, i32* %p.6, align 4, !tbaa !20
  %and.6 = and i32 %42, 1
  %arrayidx2.6 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.next.5
  store i32 %and.6, i32* %arrayidx2.6, align 4, !tbaa !26
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7
  %p.7 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.next.6, i32 1
  %43 = load i32, i32* %p.7, align 4, !tbaa !20
  %and.7 = and i32 %43, 1
  %arrayidx2.7 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.next.6
  store i32 %and.7, i32* %arrayidx2.7, align 4, !tbaa !26
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8
  %44 = add i32 %__index.addr.010, 8
  %exitcond.7 = icmp eq i32 %44, %__high
  br i1 %exitcond.7, label %loop.cond.cleanup, label %loop.body, !llvm.loop !41
}

declare void @__cilkrts_cilk_for_32(void (i8*, i32, i32)*, i8*, i32, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.4(%struct.anon.0* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !42
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %__context, i64 0, i32 1
  %5 = load i32**, i32*** %4, align 8, !tbaa !44
  %6 = load i32*, i32** %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %__context, i64 0, i32 2
  %8 = load i32*, i32** %7, align 8, !tbaa !45
  %9 = load i32, i32* %8, align 4, !tbaa !26
  %div = sdiv i32 %9, 2
  %10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %__context, i64 0, i32 3
  %11 = load %struct.event**, %struct.event*** %10, align 8, !tbaa !46
  %12 = load %struct.event*, %struct.event** %11, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %__context, i64 0, i32 4
  %14 = load %struct.range*, %struct.range** %13, align 8, !tbaa !47
  %min = getelementptr inbounds %struct.range, %struct.range* %14, i64 0, i32 0
  %15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %__context, i64 0, i32 5
  %16 = load float*, float** %15, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %__context, i64 0, i32 6
  %18 = load float*, float** %17, align 8, !tbaa !49
  %max = getelementptr %struct.range, %struct.range* %14, i64 0, i32 1
  %19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %__context, i64 0, i32 7
  %20 = load float**, float*** %19, align 8, !tbaa !50
  %21 = load float*, float** %20, align 8, !tbaa !24
  %22 = sext i32 %add to i64
  %23 = xor i32 %__low, -1
  %24 = add i32 %23, %__high
  %25 = zext i32 %24 to i64
  %26 = add nuw nsw i64 %25, 1
  %min.iters.check = icmp ult i64 %26, 8
  br i1 %min.iters.check, label %loop.body.preheader, label %vector.memcheck

loop.body.preheader:                              ; preds = %middle.block, %vector.memcheck, %loop.body.lr.ph
  %indvars.iv.ph = phi i64 [ %ind.end, %middle.block ], [ %22, %loop.body.lr.ph ], [ %22, %vector.memcheck ]
  %__index.addr.043.ph = phi i32 [ %ind.end69, %middle.block ], [ %__low, %loop.body.lr.ph ], [ %__low, %vector.memcheck ]
  br label %loop.body

vector.memcheck:                                  ; preds = %loop.body.lr.ph
  %27 = bitcast float* %18 to i8*
  %28 = bitcast float* %16 to i8*
  %scevgep = getelementptr float, float* %21, i64 %22
  %scevgep44 = bitcast float* %scevgep to i8*
  %29 = add nsw i64 %22, %25
  %30 = add nsw i64 %29, 1
  %scevgep45 = getelementptr float, float* %21, i64 %30
  %scevgep47 = getelementptr %struct.event, %struct.event* %12, i64 %22
  %scevgep49 = getelementptr %struct.event, %struct.event* %12, i64 %29, i32 1
  %scevgep5152 = bitcast float* %max to i8*
  %uglygep = getelementptr i8, i8* %scevgep5152, i64 1
  %uglygep53 = getelementptr i8, i8* %28, i64 1
  %uglygep54 = getelementptr i8, i8* %27, i64 1
  %31 = bitcast i32* %scevgep49 to float*
  %bound0 = icmp ult float* %scevgep, %31
  %32 = bitcast float* %scevgep45 to %struct.event*
  %bound1 = icmp ult %struct.event* %scevgep47, %32
  %found.conflict = and i1 %bound0, %bound1
  %bound055 = icmp ugt i8* %uglygep, %scevgep44
  %bound156 = icmp ult float* %max, %scevgep45
  %found.conflict57 = and i1 %bound156, %bound055
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  %bound059 = icmp ugt i8* %uglygep53, %scevgep44
  %bound160 = icmp ult float* %16, %scevgep45
  %found.conflict61 = and i1 %bound160, %bound059
  %conflict.rdx62 = or i1 %found.conflict61, %conflict.rdx
  %bound064 = icmp ugt i8* %uglygep54, %scevgep44
  %bound165 = icmp ult float* %18, %scevgep45
  %found.conflict66 = and i1 %bound165, %bound064
  %conflict.rdx67 = or i1 %found.conflict66, %conflict.rdx62
  br i1 %conflict.rdx67, label %loop.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %33 = add i32 %24, 1
  %34 = and i32 %33, 7
  %n.mod.vf = zext i32 %34 to i64
  %n.vec = sub nsw i64 %26, %n.mod.vf
  %.splatinsert72 = insertelement <8 x i32> undef, i32 %add, i32 0
  %.splat73 = shufflevector <8 x i32> %.splatinsert72, <8 x i32> undef, <8 x i32> zeroinitializer
  %induction74 = add <8 x i32> %.splat73, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %broadcast.splatinsert78 = insertelement <8 x i32> undef, i32 %div, i32 0
  %broadcast.splat79 = shufflevector <8 x i32> %broadcast.splatinsert78, <8 x i32> undef, <8 x i32> zeroinitializer
  %.pre = load float, float* %min, align 4, !tbaa !19, !alias.scope !51
  %.pre81 = load float, float* %16, align 4, !tbaa !27, !alias.scope !54
  %.pre82 = load float, float* %18, align 4, !tbaa !27, !alias.scope !56
  %.pre83 = load float, float* %max, align 4, !tbaa !14, !alias.scope !51
  %35 = insertelement <8 x float> undef, float %.pre, i32 0
  %36 = shufflevector <8 x float> %35, <8 x float> undef, <8 x i32> zeroinitializer
  %37 = insertelement <8 x float> undef, float %.pre81, i32 0
  %38 = shufflevector <8 x float> %37, <8 x float> undef, <8 x i32> zeroinitializer
  %39 = insertelement <8 x float> undef, float %.pre82, i32 0
  %40 = shufflevector <8 x float> %39, <8 x float> undef, <8 x i32> zeroinitializer
  %41 = insertelement <8 x float> undef, float %.pre83, i32 0
  %42 = shufflevector <8 x float> %41, <8 x float> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind75 = phi <8 x i32> [ %induction74, %vector.ph ], [ %vec.ind.next76, %vector.body ]
  %43 = add i64 %index, %22
  %44 = getelementptr inbounds i32, i32* %6, i64 %43
  %45 = bitcast i32* %44 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %45, align 4, !tbaa !26, !alias.scope !58
  %46 = sub nsw <8 x i32> %vec.ind75, %wide.load
  %47 = getelementptr inbounds %struct.event, %struct.event* %12, i64 %43, i32 1
  %48 = getelementptr i32, i32* %47, i64 -1
  %49 = bitcast i32* %48 to <16 x i32>*
  %wide.vec = load <16 x i32>, <16 x i32>* %49, align 4, !tbaa !60
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %50 = bitcast <8 x i32> %strided.vec to <8 x float>
  %strided.vec77 = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %51 = and <8 x i32> %strided.vec77, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %52 = sub <8 x i32> %broadcast.splat79, %wide.load
  %53 = sub <8 x i32> %52, %51
  %54 = fsub <8 x float> %50, %36
  %55 = fmul <8 x float> %54, %40
  %56 = fadd <8 x float> %38, %55
  %57 = fsub <8 x float> %42, %50
  %58 = fmul <8 x float> %40, %57
  %59 = fadd <8 x float> %38, %58
  %60 = sitofp <8 x i32> %46 to <8 x float>
  %61 = fmul <8 x float> %56, %60
  %62 = sitofp <8 x i32> %53 to <8 x float>
  %63 = fmul <8 x float> %59, %62
  %64 = fadd <8 x float> %61, %63
  %65 = getelementptr inbounds float, float* %21, i64 %43
  %66 = bitcast float* %65 to <8 x float>*
  store <8 x float> %64, <8 x float>* %66, align 4, !tbaa !27, !alias.scope !61, !noalias !63
  %index.next = add i64 %index, 8
  %vec.ind.next76 = add <8 x i32> %vec.ind75, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %67 = icmp eq i64 %index.next, %n.vec
  br i1 %67, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = add nsw i64 %n.vec, %22
  %ind.end69 = add i32 %cast.crd, %__low
  %cmp.n = icmp eq i32 %34, 0
  br i1 %cmp.n, label %loop.cond.cleanup, label %loop.body.preheader

loop.cond.cleanup:                                ; preds = %loop.body, %middle.block, %entry
  ret void

loop.body:                                        ; preds = %loop.body.preheader, %loop.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %loop.body ], [ %indvars.iv.ph, %loop.body.preheader ]
  %__index.addr.043 = phi i32 [ %76, %loop.body ], [ %__index.addr.043.ph, %loop.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %indvars.iv
  %68 = load i32, i32* %arrayidx, align 4, !tbaa !26
  %69 = trunc i64 %indvars.iv to i32
  %sub = sub nsw i32 %69, %68
  %p = getelementptr inbounds %struct.event, %struct.event* %12, i64 %indvars.iv, i32 1
  %70 = load i32, i32* %p, align 4, !tbaa !20
  %and = and i32 %70, 1
  %add5.neg = sub i32 %div, %68
  %sub6 = sub i32 %add5.neg, %and
  %v = getelementptr inbounds %struct.event, %struct.event* %12, i64 %indvars.iv, i32 0
  %71 = load float, float* %v, align 4, !tbaa !23
  %72 = load float, float* %min, align 4, !tbaa !19
  %sub9 = fsub float %71, %72
  %73 = load float, float* %16, align 4, !tbaa !27
  %74 = load float, float* %18, align 4, !tbaa !27
  %mul10 = fmul float %sub9, %74
  %add11 = fadd float %73, %mul10
  %75 = load float, float* %max, align 4, !tbaa !14
  %sub15 = fsub float %75, %71
  %mul16 = fmul float %74, %sub15
  %add17 = fadd float %73, %mul16
  %conv = sitofp i32 %sub to float
  %mul18 = fmul float %add11, %conv
  %conv19 = sitofp i32 %sub6 to float
  %mul20 = fmul float %add17, %conv19
  %add21 = fadd float %mul18, %mul20
  %arrayidx23 = getelementptr inbounds float, float* %21, i64 %indvars.iv
  store float %add21, float* %arrayidx23, align 4, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %76 = add nuw i32 %__index.addr.043, 1
  %exitcond = icmp eq i32 %76, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body, !llvm.loop !66
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @_Z17splitEventsSerialP5rangeP5eventfi(%"struct.std::pair"* noalias nocapture sret %agg.result, %struct.range* nocapture readonly %boxes, %struct.event* nocapture readonly %events, float %cutOff, i32 %n) local_unnamed_addr #8 {
entry:
  %conv = sext i32 %n to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #2
  %0 = bitcast i8* %call to %struct.event*
  %call3 = tail call noalias i8* @malloc(i64 %mul) #2
  %1 = bitcast i8* %call3 to %struct.event*
  %cmp61 = icmp sgt i32 %n, 0
  br i1 %cmp61, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %2 = icmp eq i32 %n, 1
  br i1 %2, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %if.end25.1, %for.body.lr.ph
  %r.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %r.1.1, %if.end25.1 ]
  %l.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %l.1.1, %if.end25.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %if.end25.1 ]
  %l.064.unr = phi i32 [ 0, %for.body.lr.ph ], [ %l.1.1, %if.end25.1 ]
  %r.062.unr = phi i32 [ 0, %for.body.lr.ph ], [ %r.1.1, %if.end25.1 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %arrayidx.epil = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.unr
  %p.epil = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.unr, i32 1
  %3 = load i32, i32* %p.epil, align 4, !tbaa !20
  %shr.epil = ashr i32 %3, 1
  %idxprom4.epil = sext i32 %shr.epil to i64
  %min.epil = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.epil, i32 0
  %4 = load float, float* %min.epil, align 4, !tbaa !19
  %cmp6.epil = fcmp olt float %4, %cutOff
  br i1 %cmp6.epil, label %if.then.epil, label %if.else.epil

if.else.epil:                                     ; preds = %for.body.epil
  %inc22.epil = add nsw i32 %r.062.unr, 1
  %idxprom23.epil = sext i32 %r.062.unr to i64
  %arrayidx24.epil = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom23.epil
  %5 = bitcast %struct.event* %arrayidx.epil to i64*
  %6 = bitcast %struct.event* %arrayidx24.epil to i64*
  %7 = load i64, i64* %5, align 4
  store i64 %7, i64* %6, align 4
  br label %for.cond.cleanup

if.then.epil:                                     ; preds = %for.body.epil
  %inc.epil = add nsw i32 %l.064.unr, 1
  %idxprom9.epil = sext i32 %l.064.unr to i64
  %arrayidx10.epil = getelementptr inbounds %struct.event, %struct.event* %0, i64 %idxprom9.epil
  %8 = bitcast %struct.event* %arrayidx.epil to i64*
  %9 = bitcast %struct.event* %arrayidx10.epil to i64*
  %10 = load i64, i64* %8, align 4
  store i64 %10, i64* %9, align 4
  %max.epil = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.epil, i32 1
  %11 = load float, float* %max.epil, align 4, !tbaa !14
  %cmp13.epil = fcmp ogt float %11, %cutOff
  br i1 %cmp13.epil, label %if.then14.epil, label %for.cond.cleanup

if.then14.epil:                                   ; preds = %if.then.epil
  %inc17.epil = add nsw i32 %r.062.unr, 1
  %idxprom18.epil = sext i32 %r.062.unr to i64
  %arrayidx19.epil = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom18.epil
  %12 = bitcast %struct.event* %arrayidx19.epil to i64*
  store i64 %10, i64* %12, align 4
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %if.else.epil, %if.then.epil, %if.then14.epil, %entry
  %r.0.lcssa = phi i32 [ 0, %entry ], [ %r.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %inc17.epil, %if.then14.epil ], [ %r.062.unr, %if.then.epil ], [ %inc22.epil, %if.else.epil ]
  %l.0.lcssa = phi i32 [ 0, %entry ], [ %l.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %inc.epil, %if.then14.epil ], [ %inc.epil, %if.then.epil ], [ %l.064.unr, %if.else.epil ]
  %conv27 = sext i32 %l.0.lcssa to i64
  %conv29 = sext i32 %r.0.lcssa to i64
  %13 = bitcast %"struct.std::pair"* %agg.result to i8**
  store i8* %call, i8** %13, align 8
  %ref.tmp.sroa.4.0..sroa_idx60 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 1
  store i64 %conv27, i64* %ref.tmp.sroa.4.0..sroa_idx60, align 8
  %ref.tmp28.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 0
  %14 = bitcast %struct.event** %ref.tmp28.sroa.0.0..sroa_idx to i8**
  store i8* %call3, i8** %14, align 8
  %ref.tmp28.sroa.4.0..sroa_idx57 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 1
  store i64 %conv29, i64* %ref.tmp28.sroa.4.0..sroa_idx57, align 8
  ret void

for.body:                                         ; preds = %if.end25.1, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %if.end25.1 ]
  %l.064 = phi i32 [ 0, %for.body.lr.ph.new ], [ %l.1.1, %if.end25.1 ]
  %r.062 = phi i32 [ 0, %for.body.lr.ph.new ], [ %r.1.1, %if.end25.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.1, %if.end25.1 ]
  %arrayidx = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv
  %p = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv, i32 1
  %15 = load i32, i32* %p, align 4, !tbaa !20
  %shr = ashr i32 %15, 1
  %idxprom4 = sext i32 %shr to i64
  %min = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4, i32 0
  %16 = load float, float* %min, align 4, !tbaa !19
  %cmp6 = fcmp olt float %16, %cutOff
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %l.064, 1
  %idxprom9 = sext i32 %l.064 to i64
  %arrayidx10 = getelementptr inbounds %struct.event, %struct.event* %0, i64 %idxprom9
  %17 = bitcast %struct.event* %arrayidx to i64*
  %18 = bitcast %struct.event* %arrayidx10 to i64*
  %19 = load i64, i64* %17, align 4
  store i64 %19, i64* %18, align 4
  %max = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4, i32 1
  %20 = load float, float* %max, align 4, !tbaa !14
  %cmp13 = fcmp ogt float %20, %cutOff
  br i1 %cmp13, label %if.then14, label %if.end25

if.then14:                                        ; preds = %if.then
  %inc17 = add nsw i32 %r.062, 1
  %idxprom18 = sext i32 %r.062 to i64
  %arrayidx19 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom18
  %21 = bitcast %struct.event* %arrayidx19 to i64*
  store i64 %19, i64* %21, align 4
  br label %if.end25

if.else:                                          ; preds = %for.body
  %inc22 = add nsw i32 %r.062, 1
  %idxprom23 = sext i32 %r.062 to i64
  %arrayidx24 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom23
  %22 = bitcast %struct.event* %arrayidx to i64*
  %23 = bitcast %struct.event* %arrayidx24 to i64*
  %24 = load i64, i64* %22, align 4
  store i64 %24, i64* %23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then, %if.then14, %if.else
  %r.1 = phi i32 [ %inc17, %if.then14 ], [ %r.062, %if.then ], [ %inc22, %if.else ]
  %l.1 = phi i32 [ %inc, %if.then14 ], [ %inc, %if.then ], [ %l.064, %if.else ]
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.next
  %p.1 = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.next, i32 1
  %25 = load i32, i32* %p.1, align 4, !tbaa !20
  %shr.1 = ashr i32 %25, 1
  %idxprom4.1 = sext i32 %shr.1 to i64
  %min.1 = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.1, i32 0
  %26 = load float, float* %min.1, align 4, !tbaa !19
  %cmp6.1 = fcmp olt float %26, %cutOff
  br i1 %cmp6.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %if.end25
  %inc22.1 = add nsw i32 %r.1, 1
  %idxprom23.1 = sext i32 %r.1 to i64
  %arrayidx24.1 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom23.1
  %27 = bitcast %struct.event* %arrayidx.1 to i64*
  %28 = bitcast %struct.event* %arrayidx24.1 to i64*
  %29 = load i64, i64* %27, align 4
  store i64 %29, i64* %28, align 4
  br label %if.end25.1

if.then.1:                                        ; preds = %if.end25
  %inc.1 = add nsw i32 %l.1, 1
  %idxprom9.1 = sext i32 %l.1 to i64
  %arrayidx10.1 = getelementptr inbounds %struct.event, %struct.event* %0, i64 %idxprom9.1
  %30 = bitcast %struct.event* %arrayidx.1 to i64*
  %31 = bitcast %struct.event* %arrayidx10.1 to i64*
  %32 = load i64, i64* %30, align 4
  store i64 %32, i64* %31, align 4
  %max.1 = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.1, i32 1
  %33 = load float, float* %max.1, align 4, !tbaa !14
  %cmp13.1 = fcmp ogt float %33, %cutOff
  br i1 %cmp13.1, label %if.then14.1, label %if.end25.1

if.then14.1:                                      ; preds = %if.then.1
  %inc17.1 = add nsw i32 %r.1, 1
  %idxprom18.1 = sext i32 %r.1 to i64
  %arrayidx19.1 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom18.1
  %34 = bitcast %struct.event* %arrayidx19.1 to i64*
  store i64 %32, i64* %34, align 4
  br label %if.end25.1

if.end25.1:                                       ; preds = %if.then14.1, %if.then.1, %if.else.1
  %r.1.1 = phi i32 [ %inc17.1, %if.then14.1 ], [ %r.1, %if.then.1 ], [ %inc22.1, %if.else.1 ]
  %l.1.1 = phi i32 [ %inc.1, %if.then14.1 ], [ %inc.1, %if.then.1 ], [ %l.1, %if.else.1 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

; Function Attrs: uwtable
define void @_Z11splitEventsP5rangeP5eventfi(%"struct.std::pair"* noalias nocapture sret %agg.result, %struct.range* %boxes, %struct.event* %events, float %cutOff, i32 %n) local_unnamed_addr #6 {
entry:
  %boxes.addr = alloca %struct.range*, align 8
  %events.addr = alloca %struct.event*, align 8
  %cutOff.addr = alloca float, align 4
  %lower = alloca i8*, align 8
  %upper = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon.1, align 8
  store %struct.range* %boxes, %struct.range** %boxes.addr, align 8, !tbaa !24
  store %struct.event* %events, %struct.event** %events.addr, align 8, !tbaa !24
  store float %cutOff, float* %cutOff.addr, align 4, !tbaa !27
  %0 = load i32, i32* @minParallelSize, align 4, !tbaa !26
  %cmp = icmp sgt i32 %0, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv.i = sext i32 %n to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i = tail call noalias i8* @malloc(i64 %mul.i) #2, !noalias !67
  %1 = bitcast i8* %call.i to %struct.event*
  %call3.i = tail call noalias i8* @malloc(i64 %mul.i) #2, !noalias !67
  %2 = bitcast i8* %call3.i to %struct.event*
  %cmp61.i = icmp sgt i32 %n, 0
  br i1 %cmp61.i, label %for.body.lr.ph.i, label %_Z17splitEventsSerialP5rangeP5eventfi.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %wide.trip.count.i = zext i32 %n to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %3 = icmp eq i32 %n, 1
  br i1 %3, label %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = sub nsw i64 %wide.trip.count.i, %xtraiter
  br label %for.body.i

for.body.i:                                       ; preds = %if.end25.i.1, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.1, %if.end25.i.1 ]
  %l.064.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %l.1.i.1, %if.end25.i.1 ]
  %r.062.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %r.1.i.1, %if.end25.i.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.i.new ], [ %niter.nsub.1, %if.end25.i.1 ]
  %arrayidx.i = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.i
  %p.i = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.i, i32 1
  %4 = load i32, i32* %p.i, align 4, !tbaa !20, !noalias !67
  %shr.i = ashr i32 %4, 1
  %idxprom4.i = sext i32 %shr.i to i64
  %min.i = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i, i32 0
  %5 = load float, float* %min.i, align 4, !tbaa !19, !noalias !67
  %cmp6.i = fcmp olt float %5, %cutOff
  br i1 %cmp6.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add nsw i32 %l.064.i, 1
  %idxprom9.i = sext i32 %l.064.i to i64
  %arrayidx10.i = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom9.i
  %6 = bitcast %struct.event* %arrayidx.i to i64*
  %7 = bitcast %struct.event* %arrayidx10.i to i64*
  %8 = load i64, i64* %6, align 4, !noalias !67
  store i64 %8, i64* %7, align 4, !noalias !67
  %max.i = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i, i32 1
  %9 = load float, float* %max.i, align 4, !tbaa !14, !noalias !67
  %cmp13.i = fcmp ogt float %9, %cutOff
  br i1 %cmp13.i, label %if.then14.i, label %if.end25.i

if.then14.i:                                      ; preds = %if.then.i
  %inc17.i = add nsw i32 %r.062.i, 1
  %idxprom18.i = sext i32 %r.062.i to i64
  %arrayidx19.i = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom18.i
  %10 = bitcast %struct.event* %arrayidx19.i to i64*
  store i64 %8, i64* %10, align 4, !noalias !67
  br label %if.end25.i

if.else.i:                                        ; preds = %for.body.i
  %inc22.i = add nsw i32 %r.062.i, 1
  %idxprom23.i = sext i32 %r.062.i to i64
  %arrayidx24.i = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom23.i
  %11 = bitcast %struct.event* %arrayidx.i to i64*
  %12 = bitcast %struct.event* %arrayidx24.i to i64*
  %13 = load i64, i64* %11, align 4, !noalias !67
  store i64 %13, i64* %12, align 4, !noalias !67
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then14.i, %if.then.i
  %r.1.i = phi i32 [ %inc17.i, %if.then14.i ], [ %r.062.i, %if.then.i ], [ %inc22.i, %if.else.i ]
  %l.1.i = phi i32 [ %inc.i, %if.then14.i ], [ %inc.i, %if.then.i ], [ %l.064.i, %if.else.i ]
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.next.i
  %p.i.1 = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.next.i, i32 1
  %14 = load i32, i32* %p.i.1, align 4, !tbaa !20, !noalias !67
  %shr.i.1 = ashr i32 %14, 1
  %idxprom4.i.1 = sext i32 %shr.i.1 to i64
  %min.i.1 = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i.1, i32 0
  %15 = load float, float* %min.i.1, align 4, !tbaa !19, !noalias !67
  %cmp6.i.1 = fcmp olt float %15, %cutOff
  br i1 %cmp6.i.1, label %if.then.i.1, label %if.else.i.1

_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa: ; preds = %if.end25.i.1, %for.body.lr.ph.i
  %r.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %r.1.i.1, %if.end25.i.1 ]
  %l.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %l.1.i.1, %if.end25.i.1 ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.1, %if.end25.i.1 ]
  %l.064.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %l.1.i.1, %if.end25.i.1 ]
  %r.062.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %r.1.i.1, %if.end25.i.1 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %_Z17splitEventsSerialP5rangeP5eventfi.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa
  %arrayidx.i.epil = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.i.unr
  %p.i.epil = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.i.unr, i32 1
  %16 = load i32, i32* %p.i.epil, align 4, !tbaa !20, !noalias !67
  %shr.i.epil = ashr i32 %16, 1
  %idxprom4.i.epil = sext i32 %shr.i.epil to i64
  %min.i.epil = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i.epil, i32 0
  %17 = load float, float* %min.i.epil, align 4, !tbaa !19, !noalias !67
  %cmp6.i.epil = fcmp olt float %17, %cutOff
  br i1 %cmp6.i.epil, label %if.then.i.epil, label %if.else.i.epil

if.else.i.epil:                                   ; preds = %for.body.i.epil
  %inc22.i.epil = add nsw i32 %r.062.i.unr, 1
  %idxprom23.i.epil = sext i32 %r.062.i.unr to i64
  %arrayidx24.i.epil = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom23.i.epil
  %18 = bitcast %struct.event* %arrayidx.i.epil to i64*
  %19 = bitcast %struct.event* %arrayidx24.i.epil to i64*
  %20 = load i64, i64* %18, align 4, !noalias !67
  store i64 %20, i64* %19, align 4, !noalias !67
  br label %_Z17splitEventsSerialP5rangeP5eventfi.exit

if.then.i.epil:                                   ; preds = %for.body.i.epil
  %inc.i.epil = add nsw i32 %l.064.i.unr, 1
  %idxprom9.i.epil = sext i32 %l.064.i.unr to i64
  %arrayidx10.i.epil = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom9.i.epil
  %21 = bitcast %struct.event* %arrayidx.i.epil to i64*
  %22 = bitcast %struct.event* %arrayidx10.i.epil to i64*
  %23 = load i64, i64* %21, align 4, !noalias !67
  store i64 %23, i64* %22, align 4, !noalias !67
  %max.i.epil = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i.epil, i32 1
  %24 = load float, float* %max.i.epil, align 4, !tbaa !14, !noalias !67
  %cmp13.i.epil = fcmp ogt float %24, %cutOff
  br i1 %cmp13.i.epil, label %if.then14.i.epil, label %_Z17splitEventsSerialP5rangeP5eventfi.exit

if.then14.i.epil:                                 ; preds = %if.then.i.epil
  %inc17.i.epil = add nsw i32 %r.062.i.unr, 1
  %idxprom18.i.epil = sext i32 %r.062.i.unr to i64
  %arrayidx19.i.epil = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom18.i.epil
  %25 = bitcast %struct.event* %arrayidx19.i.epil to i64*
  store i64 %23, i64* %25, align 4, !noalias !67
  br label %_Z17splitEventsSerialP5rangeP5eventfi.exit

_Z17splitEventsSerialP5rangeP5eventfi.exit:       ; preds = %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa, %if.else.i.epil, %if.then.i.epil, %if.then14.i.epil, %if.then
  %r.0.lcssa.i = phi i32 [ 0, %if.then ], [ %r.1.i.lcssa.ph, %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa ], [ %inc17.i.epil, %if.then14.i.epil ], [ %r.062.i.unr, %if.then.i.epil ], [ %inc22.i.epil, %if.else.i.epil ]
  %l.0.lcssa.i = phi i32 [ 0, %if.then ], [ %l.1.i.lcssa.ph, %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa ], [ %inc.i.epil, %if.then14.i.epil ], [ %inc.i.epil, %if.then.i.epil ], [ %l.064.i.unr, %if.else.i.epil ]
  %conv27.i = sext i32 %l.0.lcssa.i to i64
  %conv29.i = sext i32 %r.0.lcssa.i to i64
  %26 = bitcast %"struct.std::pair"* %agg.result to i8**
  store i8* %call.i, i8** %26, align 8, !alias.scope !67
  %ref.tmp.sroa.4.0..sroa_idx60.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 1
  store i64 %conv27.i, i64* %ref.tmp.sroa.4.0..sroa_idx60.i, align 8, !alias.scope !67
  %ref.tmp28.sroa.0.0..sroa_idx.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 0
  %27 = bitcast %struct.event** %ref.tmp28.sroa.0.0..sroa_idx.i to i8**
  store i8* %call3.i, i8** %27, align 8, !alias.scope !67
  %ref.tmp28.sroa.4.0..sroa_idx57.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 1
  store i64 %conv29.i, i64* %ref.tmp28.sroa.4.0..sroa_idx57.i, align 8, !alias.scope !67
  br label %return

if.end:                                           ; preds = %entry
  %28 = bitcast i8** %lower to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #2
  %conv = sext i32 %n to i64
  %call = tail call noalias i8* @malloc(i64 %conv) #2
  store i8* %call, i8** %lower, align 8, !tbaa !24
  %29 = bitcast i8** %upper to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #2
  %call3 = tail call noalias i8* @malloc(i64 %conv) #2
  store i8* %call3, i8** %upper, align 8, !tbaa !24
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %31 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %agg.captured, i64 0, i32 0
  store i32* %i, i32** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %agg.captured, i64 0, i32 1
  store %struct.event** %events.addr, %struct.event*** %32, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %agg.captured, i64 0, i32 2
  store i8** %lower, i8*** %33, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %agg.captured, i64 0, i32 3
  store %struct.range** %boxes.addr, %struct.range*** %34, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %agg.captured, i64 0, i32 4
  store float* %cutOff.addr, float** %35, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %agg.captured, i64 0, i32 5
  store i8** %upper, i8*** %36, align 8, !tbaa !24
  %37 = bitcast %struct.anon.1* %agg.captured to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.1*, i32, i32)* @__cilk_for_helper.5 to void (i8*, i32, i32)*), i8* nonnull %37, i32 %n, i32 0)
  %.pre = load %struct.event*, %struct.event** %events.addr, align 8, !tbaa !24
  %.pre25 = load i8*, i8** %lower, align 8, !tbaa !24
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %38 = phi i8* [ %.pre25, %if.then5 ], [ %call, %if.end ]
  %39 = phi %struct.event* [ %.pre, %if.then5 ], [ %events, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #2
  %call.i17 = call { %struct.event*, i64 } @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* null, i8* %38, i32 0, i32 %n, %struct.event* %39)
  %40 = extractvalue { %struct.event*, i64 } %call.i17, 0
  %41 = extractvalue { %struct.event*, i64 } %call.i17, 1
  %42 = load %struct.event*, %struct.event** %events.addr, align 8, !tbaa !24
  %43 = load i8*, i8** %upper, align 8, !tbaa !24
  %call.i18 = call { %struct.event*, i64 } @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* null, i8* %43, i32 0, i32 %n, %struct.event* %42)
  %44 = extractvalue { %struct.event*, i64 } %call.i18, 0
  %45 = extractvalue { %struct.event*, i64 } %call.i18, 1
  %46 = load i8*, i8** %lower, align 8, !tbaa !24
  call void @free(i8* %46) #2
  %47 = load i8*, i8** %upper, align 8, !tbaa !24
  call void @free(i8* %47) #2
  %L.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 0
  store %struct.event* %40, %struct.event** %L.sroa.0.0..sroa_idx, align 8
  %L.sroa.4.0..sroa_idx24 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 1
  store i64 %41, i64* %L.sroa.4.0..sroa_idx24, align 8
  %R.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 0
  store %struct.event* %44, %struct.event** %R.sroa.0.0..sroa_idx, align 8
  %R.sroa.4.0..sroa_idx21 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 1
  store i64 %45, i64* %R.sroa.4.0..sroa_idx21, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #2
  br label %return

return:                                           ; preds = %if.end7, %_Z17splitEventsSerialP5rangeP5eventfi.exit
  ret void

if.else.i.1:                                      ; preds = %if.end25.i
  %inc22.i.1 = add nsw i32 %r.1.i, 1
  %idxprom23.i.1 = sext i32 %r.1.i to i64
  %arrayidx24.i.1 = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom23.i.1
  %48 = bitcast %struct.event* %arrayidx.i.1 to i64*
  %49 = bitcast %struct.event* %arrayidx24.i.1 to i64*
  %50 = load i64, i64* %48, align 4, !noalias !67
  store i64 %50, i64* %49, align 4, !noalias !67
  br label %if.end25.i.1

if.then.i.1:                                      ; preds = %if.end25.i
  %inc.i.1 = add nsw i32 %l.1.i, 1
  %idxprom9.i.1 = sext i32 %l.1.i to i64
  %arrayidx10.i.1 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %idxprom9.i.1
  %51 = bitcast %struct.event* %arrayidx.i.1 to i64*
  %52 = bitcast %struct.event* %arrayidx10.i.1 to i64*
  %53 = load i64, i64* %51, align 4, !noalias !67
  store i64 %53, i64* %52, align 4, !noalias !67
  %max.i.1 = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i.1, i32 1
  %54 = load float, float* %max.i.1, align 4, !tbaa !14, !noalias !67
  %cmp13.i.1 = fcmp ogt float %54, %cutOff
  br i1 %cmp13.i.1, label %if.then14.i.1, label %if.end25.i.1

if.then14.i.1:                                    ; preds = %if.then.i.1
  %inc17.i.1 = add nsw i32 %r.1.i, 1
  %idxprom18.i.1 = sext i32 %r.1.i to i64
  %arrayidx19.i.1 = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom18.i.1
  %55 = bitcast %struct.event* %arrayidx19.i.1 to i64*
  store i64 %53, i64* %55, align 4, !noalias !67
  br label %if.end25.i.1

if.end25.i.1:                                     ; preds = %if.then14.i.1, %if.then.i.1, %if.else.i.1
  %r.1.i.1 = phi i32 [ %inc17.i.1, %if.then14.i.1 ], [ %r.1.i, %if.then.i.1 ], [ %inc22.i.1, %if.else.i.1 ]
  %l.1.i.1 = phi i32 [ %inc.i.1, %if.then14.i.1 ], [ %inc.i.1, %if.then.i.1 ], [ %l.1.i, %if.else.i.1 ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa, label %for.body.i
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.5(%struct.anon.1* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ugt i32 %__high, %__low
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !70
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %__context, i64 0, i32 1
  %5 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !72
  %6 = load %struct.event*, %struct.event** %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %__context, i64 0, i32 3
  %8 = load %struct.range**, %struct.range*** %7, align 8, !tbaa !73
  %9 = load %struct.range*, %struct.range** %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %__context, i64 0, i32 4
  %11 = load float*, float** %10, align 8, !tbaa !74
  %12 = load float, float* %11, align 4, !tbaa !27
  %13 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %__context, i64 0, i32 2
  %14 = load i8**, i8*** %13, align 8, !tbaa !75
  %15 = load i8*, i8** %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %__context, i64 0, i32 5
  %17 = load i8**, i8*** %16, align 8, !tbaa !76
  %18 = load i8*, i8** %17, align 8, !tbaa !24
  %19 = sext i32 %add to i64
  %20 = sub i32 %__high, %__low
  %21 = add i32 %__high, -1
  %xtraiter = and i32 %20, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %loop.body.prol.loopexit, label %loop.body.prol

loop.body.prol:                                   ; preds = %loop.body.lr.ph
  %p.prol = getelementptr inbounds %struct.event, %struct.event* %6, i64 %19, i32 1
  %22 = load i32, i32* %p.prol, align 4, !tbaa !20
  %shr.prol = ashr i32 %22, 1
  %idxprom1.prol = sext i32 %shr.prol to i64
  %min.prol = getelementptr inbounds %struct.range, %struct.range* %9, i64 %idxprom1.prol, i32 0
  %23 = load float, float* %min.prol, align 4, !tbaa !19
  %cmp.prol = fcmp olt float %23, %12
  %arrayidx4.prol = getelementptr inbounds i8, i8* %15, i64 %19
  %frombool.prol = zext i1 %cmp.prol to i8
  store i8 %frombool.prol, i8* %arrayidx4.prol, align 1, !tbaa !77
  %max.prol = getelementptr inbounds %struct.range, %struct.range* %9, i64 %idxprom1.prol, i32 1
  %24 = load float, float* %max.prol, align 4, !tbaa !14
  %cmp7.prol = fcmp ogt float %24, %12
  %arrayidx9.prol = getelementptr inbounds i8, i8* %18, i64 %19
  %frombool10.prol = zext i1 %cmp7.prol to i8
  store i8 %frombool10.prol, i8* %arrayidx9.prol, align 1, !tbaa !77
  %indvars.iv.next.prol = add nsw i64 %19, 1
  %25 = add nuw i32 %__low, 1
  br label %loop.body.prol.loopexit

loop.body.prol.loopexit:                          ; preds = %loop.body.lr.ph, %loop.body.prol
  %indvars.iv.unr = phi i64 [ %19, %loop.body.lr.ph ], [ %indvars.iv.next.prol, %loop.body.prol ]
  %__index.addr.022.unr = phi i32 [ %__low, %loop.body.lr.ph ], [ %25, %loop.body.prol ]
  %26 = icmp eq i32 %21, %__low
  br i1 %26, label %loop.cond.cleanup, label %loop.body.preheader

loop.body.preheader:                              ; preds = %loop.body.prol.loopexit
  br label %loop.body

loop.cond.cleanup:                                ; preds = %loop.body, %loop.body.prol.loopexit, %entry
  ret void

loop.body:                                        ; preds = %loop.body.preheader, %loop.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %loop.body ], [ %indvars.iv.unr, %loop.body.preheader ]
  %__index.addr.022 = phi i32 [ %33, %loop.body ], [ %__index.addr.022.unr, %loop.body.preheader ]
  %p = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv, i32 1
  %27 = load i32, i32* %p, align 4, !tbaa !20
  %shr = ashr i32 %27, 1
  %idxprom1 = sext i32 %shr to i64
  %min = getelementptr inbounds %struct.range, %struct.range* %9, i64 %idxprom1, i32 0
  %28 = load float, float* %min, align 4, !tbaa !19
  %cmp = fcmp olt float %28, %12
  %arrayidx4 = getelementptr inbounds i8, i8* %15, i64 %indvars.iv
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %arrayidx4, align 1, !tbaa !77
  %max = getelementptr inbounds %struct.range, %struct.range* %9, i64 %idxprom1, i32 1
  %29 = load float, float* %max, align 4, !tbaa !14
  %cmp7 = fcmp ogt float %29, %12
  %arrayidx9 = getelementptr inbounds i8, i8* %18, i64 %indvars.iv
  %frombool10 = zext i1 %cmp7 to i8
  store i8 %frombool10, i8* %arrayidx9, align 1, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %p.1 = getelementptr inbounds %struct.event, %struct.event* %6, i64 %indvars.iv.next, i32 1
  %30 = load i32, i32* %p.1, align 4, !tbaa !20
  %shr.1 = ashr i32 %30, 1
  %idxprom1.1 = sext i32 %shr.1 to i64
  %min.1 = getelementptr inbounds %struct.range, %struct.range* %9, i64 %idxprom1.1, i32 0
  %31 = load float, float* %min.1, align 4, !tbaa !19
  %cmp.1 = fcmp olt float %31, %12
  %arrayidx4.1 = getelementptr inbounds i8, i8* %15, i64 %indvars.iv.next
  %frombool.1 = zext i1 %cmp.1 to i8
  store i8 %frombool.1, i8* %arrayidx4.1, align 1, !tbaa !77
  %max.1 = getelementptr inbounds %struct.range, %struct.range* %9, i64 %idxprom1.1, i32 1
  %32 = load float, float* %max.1, align 4, !tbaa !14
  %cmp7.1 = fcmp ogt float %32, %12
  %arrayidx9.1 = getelementptr inbounds i8, i8* %18, i64 %indvars.iv.next
  %frombool10.1 = zext i1 %cmp7.1 to i8
  store i8 %frombool10.1, i8* %arrayidx9.1, align 1, !tbaa !77
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %33 = add i32 %__index.addr.022, 2
  %exitcond.1 = icmp eq i32 %33, %__high
  br i1 %exitcond.1, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: stealable uwtable
define nonnull %struct.treeNode* @_Z12generateNodePP5rangePP5eventS0_ii(%struct.range** %boxes, %struct.event** %events, %struct.range* %B, i32 %n, i32 %maxDepth) local_unnamed_addr #9 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = call %__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %__cilkrts_worker* %0, null
  br i1 %1, label %2, label %__cilk_parent_prologue.exit

; <label>:2:                                      ; preds = %entry
  %3 = call %__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilk_parent_prologue.exit

__cilk_parent_prologue.exit:                      ; preds = %entry, %2
  %.sink = phi i32 [ 16777344, %2 ], [ 16777216, %entry ]
  %4 = phi %__cilkrts_worker* [ %3, %2 ], [ %0, %entry ]
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %5 release, align 8
  %6 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %4, i64 0, i32 9
  %7 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %6 acquire, align 8
  %8 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %8 release, align 8
  %9 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %4, %__cilkrts_worker** %9 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %6 release, align 8
  %boxes.addr = alloca %struct.range**, align 8
  %events.addr = alloca %struct.event**, align 8
  %B.addr = alloca %struct.range*, align 8
  %n.addr = alloca i32, align 4
  %maxDepth.addr = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %cuts = alloca [3 x %struct.cutInfo], align 16
  %d = alloca i32, align 4
  %agg.captured = alloca %struct.anon.2, align 8
  %cutDimRanges = alloca %struct.range*, align 8
  %cutOff = alloca float, align 4
  %BBL = alloca [3 x %struct.range], align 16
  %10 = bitcast [3 x %struct.range]* %BBL to i8*
  %ref.tmp = alloca i64, align 8
  %tmpcast = bitcast i64* %ref.tmp to %struct.range*
  %leftEvents = alloca [3 x %struct.event*], align 16
  %nl = alloca i32, align 4
  %BBR = alloca [3 x %struct.range], align 16
  %11 = bitcast [3 x %struct.range]* %BBR to i8*
  %ref.tmp102 = alloca i64, align 8
  %tmpcast284 = bitcast i64* %ref.tmp102 to %struct.range*
  %rightEvents = alloca [3 x %struct.event*], align 16
  %X = alloca [3 x %"struct.std::pair"], align 16
  %12 = bitcast [3 x %"struct.std::pair"]* %X to i8*
  %d118 = alloca i32, align 4
  %agg.captured125 = alloca %struct.anon.3, align 8
  %L = alloca %struct.treeNode*, align 8
  %agg.captured195 = alloca %struct.anon.4, align 8
  store %struct.range** %boxes, %struct.range*** %boxes.addr, align 8, !tbaa !24
  store %struct.event** %events, %struct.event*** %events.addr, align 8, !tbaa !24
  store %struct.range* %B, %struct.range** %B.addr, align 8, !tbaa !24
  store i32 %n, i32* %n.addr, align 4, !tbaa !26
  store i32 %maxDepth, i32* %maxDepth.addr, align 4, !tbaa !26
  %cmp = icmp slt i32 %n, 3
  %cmp1 = icmp eq i32 %maxDepth, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %__cilk_parent_prologue.exit
  %call = invoke i8* @_Znwm(i64 64) #18
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %13 = bitcast i8* %call to %struct.treeNode*
  invoke void @_ZN8treeNodeC2EPP5eventiP5range(%struct.treeNode* nonnull %13, %struct.event** %events, i32 %n, %struct.range* %B)
          to label %cleanup228 unwind label %lpad2

lpad:                                             ; preds = %if.then
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  br label %ehcleanup231

lpad2:                                            ; preds = %invoke.cont
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %exn.slot, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  call void @_ZdlPv(i8* nonnull %call) #19
  br label %ehcleanup231

if.end:                                           ; preds = %__cilk_parent_prologue.exit
  %20 = bitcast [3 x %struct.cutInfo]* %cuts to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %20) #2
  %21 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #2
  store i32 0, i32* %d, align 4, !tbaa !26
  %22 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %23 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  %24 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %24, i64 0, i64 0
  %26 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  %27 = bitcast [5 x i8*]* %24 to i8*
  %28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured, i64 0, i32 0
  %29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured, i64 0, i32 1
  %30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured, i64 0, i32 2
  %31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured, i64 0, i32 3
  %32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured, i64 0, i32 4
  br label %cilk.spawn.savestate

for.cond.cleanup:                                 ; preds = %for.inc
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #2
  %33 = load atomic i32, i32* %5 acquire, align 8
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %invoke.cont9, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %for.cond.cleanup
  %36 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %36, i64 0, i32 12, i32 0
  %37 = bitcast i64* %.elt.i to <2 x i64>*
  %38 = load <2 x i64>, <2 x i64>* %37, align 8
  %.repack.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %39 = bitcast i64* %.repack.i to <2 x i64>*
  store <2 x i64> %38, <2 x i64>* %39, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %22, i16* nonnull %23) #2
  store volatile i8* %49, i8** %25, align 8
  %40 = call i8* @llvm.stacksave()
  store volatile i8* %40, i8** %26, align 8
  %41 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %27) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont9 unwind label %lpad4

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %43 = load atomic i32, i32* %5 acquire, align 8
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %invoke.cont9, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc286 unwind label %lpad4

.noexc286:                                        ; preds = %cilk.sync.rethrow.i
  unreachable

lpad4:                                            ; preds = %cilk.sync.rethrow.i, %cilk.sync.runtimecall.i
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %exn.slot, align 8
  %48 = extractvalue { i8*, i32 } %46, 1
  br label %ehcleanup227

cilk.spawn.savestate:                             ; preds = %if.end, %for.inc
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %22, i16* nonnull %23) #2
  %49 = call i8* @llvm.frameaddress(i32 0)
  store volatile i8* %49, i8** %25, align 8
  %50 = call i8* @llvm.stacksave()
  store volatile i8* %50, i8** %26, align 8
  %51 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %27) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %cilk.spawn.helpercall, label %for.inc

cilk.spawn.helpercall:                            ; preds = %cilk.spawn.savestate
  store [3 x %struct.cutInfo]* %cuts, [3 x %struct.cutInfo]** %28, align 8, !tbaa !24
  store i32* %d, i32** %29, align 8, !tbaa !24
  store %struct.event*** %events.addr, %struct.event**** %30, align 8, !tbaa !24
  store %struct.range** %B.addr, %struct.range*** %31, align 8, !tbaa !24
  store i32* %n.addr, i32** %32, align 8, !tbaa !24
  invoke fastcc void @__cilk_spawn_helper(%struct.anon.2* nonnull %agg.captured)
          to label %for.inc unwind label %lpad7

for.inc:                                          ; preds = %cilk.spawn.savestate, %cilk.spawn.helpercall
  %53 = load i32, i32* %d, align 4, !tbaa !26
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %d, align 4, !tbaa !26
  %cmp6 = icmp slt i32 %53, 2
  br i1 %cmp6, label %cilk.spawn.savestate, label %for.cond.cleanup

lpad7:                                            ; preds = %cilk.spawn.helpercall
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  store i8* %55, i8** %exn.slot, align 8
  %56 = extractvalue { i8*, i32 } %54, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #2
  br label %ehcleanup227

invoke.cont9:                                     ; preds = %cilk.sync.excepting.i, %for.cond.cleanup, %cilk.sync.runtimecall.i
  %57 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %58 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %57, i64 0, i32 12, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  %cost = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 1, i32 0
  %61 = load float, float* %cost, align 16, !tbaa !79
  %cost17 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 0, i32 0
  %62 = load float, float* %cost17, align 16, !tbaa !79
  %cmp18 = fcmp olt float %61, %62
  %cutDim.1 = zext i1 %cmp18 to i32
  %cost.1 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 2, i32 0
  %63 = load float, float* %cost.1, align 16, !tbaa !79
  %idxprom15.1 = zext i1 %cmp18 to i64
  %cost17.1 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %idxprom15.1, i32 0
  %64 = load float, float* %cost17.1, align 16, !tbaa !79
  %cmp18.1 = fcmp olt float %63, %64
  %cutDim.1.1 = select i1 %cmp18.1, i32 2, i32 %cutDim.1
  %65 = bitcast %struct.range** %cutDimRanges to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #2
  %66 = load %struct.range**, %struct.range*** %boxes.addr, align 8, !tbaa !24
  %67 = zext i32 %cutDim.1.1 to i64
  %arrayidx25 = getelementptr inbounds %struct.range*, %struct.range** %66, i64 %67
  %68 = bitcast %struct.range** %arrayidx25 to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !24
  %70 = bitcast %struct.range** %cutDimRanges to i64*
  store i64 %69, i64* %70, align 8, !tbaa !24
  %71 = bitcast float* %cutOff to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %71) #2
  %cutOff28 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %67, i32 1
  %72 = bitcast float* %cutOff28 to i32*
  %73 = load i32, i32* %72, align 4, !tbaa !81
  %74 = bitcast float* %cutOff to i32*
  store i32 %73, i32* %74, align 4, !tbaa !27
  %75 = load %struct.range*, %struct.range** %B.addr, align 8, !tbaa !24
  %max.i = getelementptr inbounds %struct.range, %struct.range* %75, i64 0, i32 1
  %76 = load float, float* %max.i, align 4, !tbaa !14
  %min.i = getelementptr inbounds %struct.range, %struct.range* %75, i64 0, i32 0
  %77 = load float, float* %min.i, align 4, !tbaa !19
  %sub.i = fsub float %76, %77
  %max3.i = getelementptr inbounds %struct.range, %struct.range* %75, i64 1, i32 1
  %78 = load float, float* %max3.i, align 4, !tbaa !14
  %min5.i = getelementptr inbounds %struct.range, %struct.range* %75, i64 1, i32 0
  %79 = load float, float* %min5.i, align 4, !tbaa !19
  %sub6.i = fsub float %78, %79
  %max8.i = getelementptr inbounds %struct.range, %struct.range* %75, i64 2, i32 1
  %80 = load float, float* %max8.i, align 4, !tbaa !14
  %min10.i = getelementptr inbounds %struct.range, %struct.range* %75, i64 2, i32 0
  %81 = load float, float* %min10.i, align 4, !tbaa !19
  %sub11.i = fsub float %80, %81
  %mul.i = fmul float %sub.i, %sub6.i
  %mul12.i = fmul float %sub6.i, %sub11.i
  %add.i = fadd float %mul.i, %mul12.i
  %mul13.i = fmul float %sub.i, %sub11.i
  %add14.i = fadd float %mul13.i, %add.i
  %mul15.i = fmul float %add14.i, 2.000000e+00
  %82 = load float, float* @CT, align 4, !tbaa !27
  %83 = load float, float* @CL, align 4, !tbaa !27
  %cost34 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %67, i32 0
  %84 = load float, float* %cost34, align 16, !tbaa !79
  %mul = fmul float %83, %84
  %div = fdiv float %mul, %mul15.i
  %add = fadd float %82, %div
  %85 = load i32, i32* %n.addr, align 4, !tbaa !26
  %div35 = sdiv i32 %85, 2
  %conv = sitofp i32 %div35 to float
  %cmp36 = fcmp ult float %add, %conv
  br i1 %cmp36, label %lor.lhs.false37, label %if.then48

lor.lhs.false37:                                  ; preds = %invoke.cont9
  %numLeft = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %67, i32 2
  %86 = load i32, i32* %numLeft, align 8, !tbaa !82
  %numRight = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %67, i32 3
  %87 = load i32, i32* %numRight, align 4, !tbaa !83
  %add42 = add nsw i32 %87, %86
  %conv43 = sitofp i32 %add42 to float
  %88 = load float, float* @maxExpand, align 4, !tbaa !27
  %conv44 = sitofp i32 %85 to float
  %mul45 = fmul float %88, %conv44
  %div46 = fmul float %mul45, 5.000000e-01
  %cmp47 = fcmp olt float %div46, %conv43
  br i1 %cmp47, label %if.then48, label %if.end54

if.then48:                                        ; preds = %invoke.cont9, %lor.lhs.false37
  %call51 = invoke i8* @_Znwm(i64 64) #18
          to label %invoke.cont50 unwind label %lpad49

invoke.cont50:                                    ; preds = %if.then48
  %89 = bitcast i8* %call51 to %struct.treeNode*
  %90 = load %struct.event**, %struct.event*** %events.addr, align 8, !tbaa !24
  invoke void @_ZN8treeNodeC2EPP5eventiP5range(%struct.treeNode* nonnull %89, %struct.event** %90, i32 %85, %struct.range* %75)
          to label %cleanup unwind label %lpad52

lpad49:                                           ; preds = %if.then48
  %91 = landingpad { i8*, i32 }
          cleanup
  %92 = extractvalue { i8*, i32 } %91, 0
  store i8* %92, i8** %exn.slot, align 8
  %93 = extractvalue { i8*, i32 } %91, 1
  br label %ehcleanup215

lpad52:                                           ; preds = %invoke.cont50
  %94 = landingpad { i8*, i32 }
          cleanup
  %95 = extractvalue { i8*, i32 } %94, 0
  store i8* %95, i8** %exn.slot, align 8
  %96 = extractvalue { i8*, i32 } %94, 1
  call void @_ZdlPv(i8* nonnull %call51) #19
  br label %ehcleanup215

if.end54:                                         ; preds = %lor.lhs.false37
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #2
  %97 = bitcast %struct.range* %75 to <2 x i64>*
  %98 = load <2 x i64>, <2 x i64>* %97, align 4
  %99 = bitcast [3 x %struct.range]* %BBL to <2 x i64>*
  store <2 x i64> %98, <2 x i64>* %99, align 16
  %arrayidx69.2 = getelementptr inbounds %struct.range, %struct.range* %75, i64 2
  %arrayidx71.2 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBL, i64 0, i64 2
  %100 = bitcast %struct.range* %arrayidx69.2 to i64*
  %101 = bitcast %struct.range* %arrayidx71.2 to i64*
  %102 = load i64, i64* %100, align 4
  store i64 %102, i64* %101, align 16
  %103 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %103) #2
  %arrayidx76 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBL, i64 0, i64 %67
  %104 = bitcast %struct.range* %arrayidx76 to i32*
  %105 = load i32, i32* %104, align 8, !tbaa !19
  %106 = bitcast i64* %ref.tmp to i32*
  store i32 %105, i32* %106, align 8, !tbaa !19
  %max.i288 = getelementptr inbounds %struct.range, %struct.range* %tmpcast, i64 0, i32 1
  %107 = bitcast float* %max.i288 to i32*
  store i32 %73, i32* %107, align 4, !tbaa !14
  %108 = bitcast %struct.range* %arrayidx76 to i64*
  %109 = load i64, i64* %ref.tmp, align 8
  store i64 %109, i64* %108, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %103) #2
  %110 = bitcast [3 x %struct.event*]* %leftEvents to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %110) #2
  %111 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %111) #2
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #2
  %array.begin81 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBR, i64 0, i64 0
  %112 = load <2 x i64>, <2 x i64>* %97, align 4
  %113 = bitcast [3 x %struct.range]* %BBR to <2 x i64>*
  store <2 x i64> %112, <2 x i64>* %113, align 16
  %arrayidx98.2 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBR, i64 0, i64 2
  %114 = bitcast %struct.range* %arrayidx98.2 to i64*
  %115 = load i64, i64* %100, align 4
  store i64 %115, i64* %114, align 16
  %116 = bitcast i64* %ref.tmp102 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #2
  %arrayidx104 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBR, i64 0, i64 %67
  %max = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBR, i64 0, i64 %67, i32 1
  %117 = bitcast float* %max to i32*
  %118 = load i32, i32* %117, align 4, !tbaa !14
  %119 = bitcast i64* %ref.tmp102 to i32*
  store i32 %73, i32* %119, align 8, !tbaa !19
  %max.i290 = getelementptr inbounds %struct.range, %struct.range* %tmpcast284, i64 0, i32 1
  %120 = bitcast float* %max.i290 to i32*
  store i32 %118, i32* %120, align 4, !tbaa !14
  %121 = bitcast %struct.range* %arrayidx104 to i64*
  %122 = load i64, i64* %ref.tmp102, align 8
  store i64 %122, i64* %121, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #2
  %123 = bitcast [3 x %struct.event*]* %rightEvents to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %123) #2
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %12) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %12, i8 0, i64 96, i32 16, i1 false)
  %124 = bitcast i32* %d118 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %124) #2
  store i32 0, i32* %d118, align 4, !tbaa !26
  %125 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %agg.captured125, i64 0, i32 0
  %126 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %agg.captured125, i64 0, i32 1
  %127 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %agg.captured125, i64 0, i32 2
  %128 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %agg.captured125, i64 0, i32 3
  %129 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %agg.captured125, i64 0, i32 4
  %130 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %agg.captured125, i64 0, i32 5
  br label %cilk.spawn.savestate123

for.cond.cleanup121:                              ; preds = %for.inc129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %124) #2
  %131 = load atomic i32, i32* %5 acquire, align 8
  %132 = and i32 %131, 2
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %if.else.1, label %cilk.sync.savestate.i298

cilk.sync.savestate.i298:                         ; preds = %for.cond.cleanup121
  %134 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i292 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %134, i64 0, i32 12, i32 0
  %135 = bitcast i64* %.elt.i292 to <2 x i64>*
  %136 = load <2 x i64>, <2 x i64>* %135, align 8
  %.repack.i296 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %137 = bitcast i64* %.repack.i296 to <2 x i64>*
  store <2 x i64> %136, <2 x i64>* %137, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %22, i16* nonnull %23) #2
  store volatile i8* %49, i8** %25, align 8
  %138 = call i8* @llvm.stacksave()
  store volatile i8* %138, i8** %26, align 8
  %139 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %27) #20
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %cilk.sync.runtimecall.i299, label %cilk.sync.excepting.i300

cilk.sync.runtimecall.i299:                       ; preds = %cilk.sync.savestate.i298
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %if.else.1 unwind label %lpad113

cilk.sync.excepting.i300:                         ; preds = %cilk.sync.savestate.i298
  %141 = load atomic i32, i32* %5 acquire, align 8
  %142 = and i32 %141, 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %if.else.1, label %cilk.sync.rethrow.i301

cilk.sync.rethrow.i301:                           ; preds = %cilk.sync.excepting.i300
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc303 unwind label %lpad113

.noexc303:                                        ; preds = %cilk.sync.rethrow.i301
  unreachable

lpad113:                                          ; preds = %cilk.sync.rethrow.i301, %cilk.sync.runtimecall.i299
  %144 = landingpad { i8*, i32 }
          cleanup
  %145 = extractvalue { i8*, i32 } %144, 0
  store i8* %145, i8** %exn.slot, align 8
  %146 = extractvalue { i8*, i32 } %144, 1
  br label %ehcleanup208

cilk.spawn.savestate123:                          ; preds = %if.end54, %for.inc129
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %22, i16* nonnull %23) #2
  store volatile i8* %49, i8** %25, align 8
  %147 = call i8* @llvm.stacksave()
  store volatile i8* %147, i8** %26, align 8
  %148 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %27) #20
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %cilk.spawn.helpercall124, label %for.inc129

cilk.spawn.helpercall124:                         ; preds = %cilk.spawn.savestate123
  store [3 x %"struct.std::pair"]* %X, [3 x %"struct.std::pair"]** %125, align 8, !tbaa !24
  store i32* %d118, i32** %126, align 8, !tbaa !24
  store %struct.range** %cutDimRanges, %struct.range*** %127, align 8, !tbaa !24
  store %struct.event*** %events.addr, %struct.event**** %128, align 8, !tbaa !24
  store float* %cutOff, float** %129, align 8, !tbaa !24
  store i32* %n.addr, i32** %130, align 8, !tbaa !24
  invoke fastcc void @__cilk_spawn_helper.6(%struct.anon.3* nonnull %agg.captured125)
          to label %for.inc129 unwind label %lpad126

for.inc129:                                       ; preds = %cilk.spawn.savestate123, %cilk.spawn.helpercall124
  %150 = load i32, i32* %d118, align 4, !tbaa !26
  %inc130 = add nsw i32 %150, 1
  store i32 %inc130, i32* %d118, align 4, !tbaa !26
  %cmp120 = icmp slt i32 %150, 2
  br i1 %cmp120, label %cilk.spawn.savestate123, label %for.cond.cleanup121

lpad126:                                          ; preds = %cilk.spawn.helpercall124
  %151 = landingpad { i8*, i32 }
          cleanup
  %152 = extractvalue { i8*, i32 } %151, 0
  store i8* %152, i8** %exn.slot, align 8
  %153 = extractvalue { i8*, i32 } %151, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %124) #2
  br label %ehcleanup208

if.then172:                                       ; preds = %lor.lhs.false165.2, %if.else.2, %lor.lhs.false165.1, %if.else.1
  %call1.i305 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 43)
          to label %invoke.cont174 unwind label %lpad173

invoke.cont174:                                   ; preds = %if.then172
  %vtable.i = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !84
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %154 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %154, align 8
  %add.ptr.i = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset.i
  %_M_ctype.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 240
  %155 = bitcast i8* %_M_ctype.i to %"class.std::ctype"**
  %156 = load %"class.std::ctype"*, %"class.std::ctype"** %155, align 8, !tbaa !86
  %tobool.i = icmp eq %"class.std::ctype"* %156, null
  br i1 %tobool.i, label %if.then.i, label %call.i.noexc341

if.then.i:                                        ; preds = %invoke.cont174
  invoke void @_ZSt16__throw_bad_castv() #21
          to label %.noexc346 unwind label %lpad173

.noexc346:                                        ; preds = %if.then.i
  unreachable

call.i.noexc341:                                  ; preds = %invoke.cont174
  %_M_widen_ok.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %156, i64 0, i32 8
  %157 = load i8, i8* %_M_widen_ok.i, align 8, !tbaa !88
  %tobool.i347 = icmp eq i8 %157, 0
  br i1 %tobool.i347, label %if.end.i, label %if.then.i348

if.then.i348:                                     ; preds = %call.i.noexc341
  %arrayidx.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %156, i64 0, i32 9, i64 10
  %158 = load i8, i8* %arrayidx.i, align 1, !tbaa !60
  br label %call.i.noexc

if.end.i:                                         ; preds = %call.i.noexc341
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %156)
          to label %.noexc350 unwind label %lpad173

.noexc350:                                        ; preds = %if.end.i
  %159 = bitcast %"class.std::ctype"* %156 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i349 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %159, align 8, !tbaa !84
  %vfn.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i349, i64 6
  %160 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i, align 8
  %call.i352 = invoke signext i8 %160(%"class.std::ctype"* nonnull %156, i8 signext 10)
          to label %call.i.noexc unwind label %lpad173

call.i.noexc:                                     ; preds = %.noexc350, %if.then.i348
  %retval.0.i = phi i8 [ %158, %if.then.i348 ], [ %call.i352, %.noexc350 ]
  %call1.i339 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i8 signext %retval.0.i)
          to label %call1.i.noexc unwind label %lpad173

call1.i.noexc:                                    ; preds = %call.i.noexc
  %call.i345 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i339)
          to label %invoke.cont176 unwind label %lpad173

invoke.cont176:                                   ; preds = %call1.i.noexc
  call void @abort() #22
  unreachable

lpad173:                                          ; preds = %.noexc350, %if.end.i, %if.then.i, %call1.i.noexc, %call.i.noexc, %if.then172
  %161 = landingpad { i8*, i32 }
          cleanup
  %162 = extractvalue { i8*, i32 } %161, 0
  store i8* %162, i8** %exn.slot, align 8
  %163 = extractvalue { i8*, i32 } %161, 1
  br label %ehcleanup208

cilk.spawn.helpercall194:                         ; preds = %for.inc180.2
  %164 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured195, i64 0, i32 0
  store %struct.treeNode** %L, %struct.treeNode*** %164, align 8, !tbaa !24
  %165 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured195, i64 0, i32 1
  store %struct.range*** %boxes.addr, %struct.range**** %165, align 8, !tbaa !24
  %166 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured195, i64 0, i32 2
  store [3 x %struct.event*]* %leftEvents, [3 x %struct.event*]** %166, align 8, !tbaa !24
  %167 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured195, i64 0, i32 3
  store [3 x %struct.range]* %BBL, [3 x %struct.range]** %167, align 8, !tbaa !24
  %168 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured195, i64 0, i32 4
  store i32* %nl, i32** %168, align 8, !tbaa !24
  %169 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured195, i64 0, i32 5
  store i32* %maxDepth.addr, i32** %169, align 8, !tbaa !24
  invoke fastcc void @__cilk_spawn_helper.7(%struct.anon.4* nonnull %agg.captured195)
          to label %cilk.spawn.continuation198 unwind label %ehcleanup

cilk.spawn.continuation198:                       ; preds = %cilk.spawn.helpercall194, %for.inc180.2
  %170 = load %struct.range**, %struct.range*** %boxes.addr, align 8, !tbaa !24
  %171 = load i32, i32* %maxDepth.addr, align 4, !tbaa !26
  %sub = add nsw i32 %171, -1
  %call201 = invoke %struct.treeNode* @_Z12generateNodePP5rangePP5eventS0_ii(%struct.range** %170, %struct.event** nonnull %arrayidx146, %struct.range* nonnull %array.begin81, i32 %conv158, i32 %sub)
          to label %invoke.cont200 unwind label %ehcleanup

invoke.cont200:                                   ; preds = %cilk.spawn.continuation198
  %172 = load atomic i32, i32* %5 acquire, align 8
  %173 = and i32 %172, 2
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %invoke.cont202, label %cilk.sync.savestate.i316

cilk.sync.savestate.i316:                         ; preds = %invoke.cont200
  %175 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i310 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %175, i64 0, i32 12, i32 0
  %176 = bitcast i64* %.elt.i310 to <2 x i64>*
  %177 = load <2 x i64>, <2 x i64>* %176, align 8
  %.repack.i314 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %178 = bitcast i64* %.repack.i314 to <2 x i64>*
  store <2 x i64> %177, <2 x i64>* %178, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %22, i16* nonnull %23) #2
  store volatile i8* %49, i8** %25, align 8
  %179 = call i8* @llvm.stacksave()
  store volatile i8* %179, i8** %26, align 8
  %180 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %27) #20
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %cilk.sync.runtimecall.i317, label %cilk.sync.excepting.i318

cilk.sync.runtimecall.i317:                       ; preds = %cilk.sync.savestate.i316
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont202 unwind label %ehcleanup

cilk.sync.excepting.i318:                         ; preds = %cilk.sync.savestate.i316
  %182 = load atomic i32, i32* %5 acquire, align 8
  %183 = and i32 %182, 16
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %invoke.cont202, label %cilk.sync.rethrow.i319

cilk.sync.rethrow.i319:                           ; preds = %cilk.sync.excepting.i318
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc321 unwind label %ehcleanup

.noexc321:                                        ; preds = %cilk.sync.rethrow.i319
  unreachable

invoke.cont202:                                   ; preds = %cilk.sync.excepting.i318, %invoke.cont200, %cilk.sync.runtimecall.i317
  %185 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %186 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %185, i64 0, i32 12, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %186, align 8
  %call204 = invoke i8* @_Znwm(i64 64) #18
          to label %invoke.cont206 unwind label %ehcleanup

invoke.cont206:                                   ; preds = %invoke.cont202
  %189 = bitcast i8* %call204 to %struct.treeNode*
  %190 = load %struct.treeNode*, %struct.treeNode** %L, align 8, !tbaa !24
  %191 = load i32, i32* %74, align 4, !tbaa !27
  %192 = load %struct.range*, %struct.range** %B.addr, align 8, !tbaa !24
  %left.i = bitcast i8* %call204 to %struct.treeNode**
  store %struct.treeNode* %190, %struct.treeNode** %left.i, align 8, !tbaa !90
  %right.i = getelementptr inbounds i8, i8* %call204, i64 8
  %193 = bitcast i8* %right.i to %struct.treeNode**
  store %struct.treeNode* %call201, %struct.treeNode** %193, align 8, !tbaa !92
  %array.begin.i = getelementptr inbounds i8, i8* %call204, i64 16
  %cutDim.i = getelementptr inbounds i8, i8* %call204, i64 40
  %194 = bitcast i8* %cutDim.i to i32*
  store i32 %cutDim.1.1, i32* %194, align 8, !tbaa !93
  %cutOff.i = getelementptr inbounds i8, i8* %call204, i64 44
  %195 = bitcast i8* %cutOff.i to i32*
  store i32 %191, i32* %195, align 4, !tbaa !94
  %triangleIndices.i = getelementptr inbounds i8, i8* %call204, i64 48
  %196 = bitcast i8* %triangleIndices.i to i32**
  store i32* null, i32** %196, align 8, !tbaa !95
  %197 = bitcast %struct.range* %192 to <2 x i64>*
  %198 = load <2 x i64>, <2 x i64>* %197, align 4
  %199 = bitcast i8* %array.begin.i to <2 x i64>*
  store <2 x i64> %198, <2 x i64>* %199, align 4
  %arrayidx.2.i = getelementptr inbounds %struct.range, %struct.range* %192, i64 2
  %arrayidx4.2.i = getelementptr inbounds i8, i8* %call204, i64 32
  %200 = bitcast %struct.range* %arrayidx.2.i to i64*
  %201 = bitcast i8* %arrayidx4.2.i to i64*
  %202 = load i64, i64* %200, align 4
  store i64 %202, i64* %201, align 4
  %n.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %190, i64 0, i32 6
  %203 = load i32, i32* %n.i, align 8, !tbaa !96
  %n5.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %call201, i64 0, i32 6
  %204 = load i32, i32* %n5.i, align 8, !tbaa !96
  %add.i323 = add nsw i32 %204, %203
  %n6.i = getelementptr inbounds i8, i8* %call204, i64 56
  %205 = bitcast i8* %n6.i to i32*
  store i32 %add.i323, i32* %205, align 8, !tbaa !96
  %leaves.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %190, i64 0, i32 7
  %206 = load i32, i32* %leaves.i, align 4, !tbaa !97
  %leaves7.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %call201, i64 0, i32 7
  %207 = load i32, i32* %leaves7.i, align 4, !tbaa !97
  %add8.i = add nsw i32 %207, %206
  %leaves9.i = getelementptr inbounds i8, i8* %call204, i64 60
  %208 = bitcast i8* %leaves9.i to i32*
  store i32 %add8.i, i32* %208, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %318) #2
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %12) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %123) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %111) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %110) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #2
  br label %cleanup

ehcleanup:                                        ; preds = %cilk.spawn.helpercall194, %cilk.spawn.continuation198, %invoke.cont202, %cilk.sync.runtimecall.i317, %cilk.sync.rethrow.i319
  %209 = landingpad { i8*, i32 }
          cleanup
  %210 = extractvalue { i8*, i32 } %209, 0
  store i8* %210, i8** %exn.slot, align 8
  %211 = extractvalue { i8*, i32 } %209, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %318) #2
  br label %ehcleanup208

ehcleanup208:                                     ; preds = %ehcleanup, %lpad173, %lpad126, %lpad113
  %ehselector.slot.1 = phi i32 [ %153, %lpad126 ], [ %163, %lpad173 ], [ %211, %ehcleanup ], [ %146, %lpad113 ]
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %12) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %123) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %111) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %110) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #2
  br label %ehcleanup215

cleanup:                                          ; preds = %invoke.cont50, %invoke.cont206
  %retval.0 = phi %struct.treeNode* [ %189, %invoke.cont206 ], [ %89, %invoke.cont50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #2
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %20) #2
  br label %cleanup228

ehcleanup215:                                     ; preds = %ehcleanup208, %lpad52, %lpad49
  %ehselector.slot.2 = phi i32 [ %96, %lpad52 ], [ %93, %lpad49 ], [ %ehselector.slot.1, %ehcleanup208 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #2
  br label %ehcleanup227

ehcleanup227:                                     ; preds = %ehcleanup215, %lpad7, %lpad4
  %ehselector.slot.3 = phi i32 [ %56, %lpad7 ], [ %ehselector.slot.2, %ehcleanup215 ], [ %48, %lpad4 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %20) #2
  br label %ehcleanup231

cleanup228:                                       ; preds = %invoke.cont, %cleanup
  %retval.1 = phi %struct.treeNode* [ %retval.0, %cleanup ], [ %13, %invoke.cont ]
  %212 = load atomic i32, i32* %5 acquire, align 8
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %invoke.cont230, label %cilk.sync.savestate.i331

cilk.sync.savestate.i331:                         ; preds = %cleanup228
  %215 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i325 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %215, i64 0, i32 12, i32 0
  %216 = bitcast i64* %.elt.i325 to <2 x i64>*
  %217 = load <2 x i64>, <2 x i64>* %216, align 8
  %.repack.i329 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %218 = bitcast i64* %.repack.i329 to <2 x i64>*
  store <2 x i64> %217, <2 x i64>* %218, align 8
  %219 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %220 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %219, i16* nonnull %220) #2
  %221 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %222 = call i8* @llvm.frameaddress(i32 0)
  %223 = getelementptr inbounds [5 x i8*], [5 x i8*]* %221, i64 0, i64 0
  store volatile i8* %222, i8** %223, align 8
  %224 = call i8* @llvm.stacksave()
  %225 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %224, i8** %225, align 8
  %226 = bitcast [5 x i8*]* %221 to i8*
  %227 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %226) #20
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %cilk.sync.runtimecall.i332, label %cilk.sync.excepting.i333

cilk.sync.runtimecall.i332:                       ; preds = %cilk.sync.savestate.i331
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont230 unwind label %lpad229

cilk.sync.excepting.i333:                         ; preds = %cilk.sync.savestate.i331
  %229 = load atomic i32, i32* %5 acquire, align 8
  %230 = and i32 %229, 16
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %invoke.cont230, label %cilk.sync.rethrow.i334

cilk.sync.rethrow.i334:                           ; preds = %cilk.sync.excepting.i333
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc336 unwind label %lpad229

.noexc336:                                        ; preds = %cilk.sync.rethrow.i334
  unreachable

invoke.cont230:                                   ; preds = %cilk.sync.excepting.i333, %cleanup228, %cilk.sync.runtimecall.i332
  %232 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %233 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %232, i64 0, i32 12, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %233, align 8
  %236 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %237 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %236, i64 0, i32 9
  %240 = bitcast %__cilkrts_stack_frame** %239 to i64*
  store atomic i64 %238, i64* %240 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %241 = load atomic i32, i32* %5 acquire, align 8
  %242 = icmp eq i32 %241, 16777216
  br i1 %242, label %__cilk_parent_epilogue.exit308, label %243

; <label>:243:                                    ; preds = %invoke.cont230
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit308

__cilk_parent_epilogue.exit308:                   ; preds = %invoke.cont230, %243
  ret %struct.treeNode* %retval.1

lpad229:                                          ; preds = %cilk.sync.rethrow.i334, %cilk.sync.runtimecall.i332
  %244 = landingpad { i8*, i32 }
          cleanup
  %245 = extractvalue { i8*, i32 } %244, 0
  store i8* %245, i8** %exn.slot, align 8
  %246 = extractvalue { i8*, i32 } %244, 1
  br label %ehcleanup233

ehcleanup231:                                     ; preds = %ehcleanup227, %lpad2, %lpad
  %ehselector.slot.4 = phi i32 [ %19, %lpad2 ], [ %16, %lpad ], [ %ehselector.slot.3, %ehcleanup227 ]
  %247 = load atomic i32, i32* %5 acquire, align 8
  %248 = and i32 %247, 2
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %__cilk_excepting_sync.exit, label %setjmp.test.i

setjmp.test.i:                                    ; preds = %ehcleanup231
  %250 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %251 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %250, i16* nonnull %251) #2
  %252 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %253 = call i8* @llvm.frameaddress(i32 0) #2
  %254 = getelementptr inbounds [5 x i8*], [5 x i8*]* %252, i64 0, i64 0
  store volatile i8* %253, i8** %254, align 8
  %255 = call i8* @llvm.stacksave() #2
  %256 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %255, i8** %256, align 8
  %257 = bitcast [5 x i8*]* %252 to i8*
  %258 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %257) #23
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %setjmp.if.i, label %setjmp.test.setjmp.cont_crit_edge.i

setjmp.test.setjmp.cont_crit_edge.i:              ; preds = %setjmp.test.i
  %.pre.i307 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %.pre1.i = bitcast i8** %.pre.i307 to i64*
  %.pre3.i = bitcast i8** %exn.slot to i64*
  br label %setjmp.cont.i

setjmp.if.i:                                      ; preds = %setjmp.test.i
  %260 = bitcast i8** %exn.slot to i64*
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %263 = bitcast i8** %262 to i64*
  store i64 %261, i64* %263, align 8
  %264 = load atomic i32, i32* %5 acquire, align 8
  %265 = or i32 %264, 16
  store atomic i32 %265, i32* %5 release, align 8
  call void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %setjmp.cont.i

setjmp.cont.i:                                    ; preds = %setjmp.if.i, %setjmp.test.setjmp.cont_crit_edge.i
  %.pre-phi4.i = phi i64* [ %.pre3.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %260, %setjmp.if.i ]
  %.pre-phi2.i = phi i64* [ %.pre1.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %263, %setjmp.if.i ]
  %266 = load atomic i32, i32* %5 acquire, align 8
  %267 = and i32 %266, -17
  store atomic i32 %267, i32* %5 release, align 8
  %268 = load i64, i64* %.pre-phi2.i, align 8
  store i64 %268, i64* %.pre-phi4.i, align 8
  br label %__cilk_excepting_sync.exit

__cilk_excepting_sync.exit:                       ; preds = %ehcleanup231, %setjmp.cont.i
  %269 = load %__cilkrts_worker*, %__cilkrts_worker** %9, align 8
  %270 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %269, i64 0, i32 12, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %270, align 8
  br label %ehcleanup233

ehcleanup233:                                     ; preds = %__cilk_excepting_sync.exit, %lpad229
  %ehselector.slot.5 = phi i32 [ %ehselector.slot.4, %__cilk_excepting_sync.exit ], [ %246, %lpad229 ]
  %273 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %274 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %273, i64 0, i32 9
  %277 = bitcast %__cilkrts_stack_frame** %276 to i64*
  store atomic i64 %275, i64* %277 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %278 = load atomic i32, i32* %5 acquire, align 8
  %279 = icmp eq i32 %278, 16777216
  br i1 %279, label %__cilk_parent_epilogue.exit, label %280

; <label>:280:                                    ; preds = %ehcleanup233
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %ehcleanup233, %280
  %exn = load i8*, i8** %exn.slot, align 8
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val234 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.5, 1
  resume { i8*, i32 } %lpad.val234

if.else.1:                                        ; preds = %cilk.sync.runtimecall.i299, %for.cond.cleanup121, %cilk.sync.excepting.i300
  %281 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %282 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %281, i64 0, i32 12, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %282, align 8
  %285 = bitcast [3 x %"struct.std::pair"]* %X to i64*
  %286 = load i64, i64* %285, align 16, !tbaa !98
  %287 = bitcast [3 x %struct.event*]* %leftEvents to i64*
  store i64 %286, i64* %287, align 16, !tbaa !24
  %second = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 0, i32 1
  %288 = bitcast %struct._seq* %second to i64*
  %289 = load i64, i64* %288, align 16, !tbaa !102
  %arrayidx146 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %rightEvents, i64 0, i64 0
  %290 = bitcast [3 x %struct.event*]* %rightEvents to i64*
  store i64 %289, i64* %290, align 16, !tbaa !24
  %n152 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 0, i32 0, i32 1
  %291 = load i64, i64* %n152, align 8, !tbaa !103
  %conv153 = trunc i64 %291 to i32
  store i32 %conv153, i32* %nl, align 4, !tbaa !26
  %n157 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 0, i32 1, i32 1
  %292 = load i64, i64* %n157, align 8, !tbaa !104
  %conv158 = trunc i64 %292 to i32
  %arrayidx139.1 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 1
  %293 = bitcast %"struct.std::pair"* %arrayidx139.1 to i64*
  %294 = load i64, i64* %293, align 16, !tbaa !98
  %arrayidx141.1 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %leftEvents, i64 0, i64 1
  %295 = bitcast %struct.event** %arrayidx141.1 to i64*
  store i64 %294, i64* %295, align 8, !tbaa !24
  %second.1 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 1, i32 1
  %296 = bitcast %struct._seq* %second.1 to i64*
  %297 = load i64, i64* %296, align 16, !tbaa !102
  %arrayidx146.1 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %rightEvents, i64 0, i64 1
  %298 = bitcast %struct.event** %arrayidx146.1 to i64*
  store i64 %297, i64* %298, align 8, !tbaa !24
  %n152.1 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 1, i32 0, i32 1
  %299 = load i64, i64* %n152.1, align 8, !tbaa !103
  %sext = shl i64 %291, 32
  %conv163.1 = ashr exact i64 %sext, 32
  %cmp164.1 = icmp eq i64 %299, %conv163.1
  br i1 %cmp164.1, label %lor.lhs.false165.1, label %if.then172

lor.lhs.false165.1:                               ; preds = %if.else.1
  %n169.1 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 1, i32 1, i32 1
  %300 = load i64, i64* %n169.1, align 8, !tbaa !104
  %sext363 = shl i64 %292, 32
  %conv170.1 = ashr exact i64 %sext363, 32
  %cmp171.1 = icmp eq i64 %300, %conv170.1
  br i1 %cmp171.1, label %if.else.2, label %if.then172

if.else.2:                                        ; preds = %lor.lhs.false165.1
  %arrayidx139.2 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 2
  %301 = bitcast %"struct.std::pair"* %arrayidx139.2 to i64*
  %302 = load i64, i64* %301, align 16, !tbaa !98
  %arrayidx141.2 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %leftEvents, i64 0, i64 2
  %303 = bitcast %struct.event** %arrayidx141.2 to i64*
  store i64 %302, i64* %303, align 16, !tbaa !24
  %second.2 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 2, i32 1
  %304 = bitcast %struct._seq* %second.2 to i64*
  %305 = load i64, i64* %304, align 16, !tbaa !102
  %arrayidx146.2 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %rightEvents, i64 0, i64 2
  %306 = bitcast %struct.event** %arrayidx146.2 to i64*
  store i64 %305, i64* %306, align 16, !tbaa !24
  %n152.2 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 2, i32 0, i32 1
  %307 = load i64, i64* %n152.2, align 8, !tbaa !103
  %cmp164.2 = icmp eq i64 %307, %299
  br i1 %cmp164.2, label %lor.lhs.false165.2, label %if.then172

lor.lhs.false165.2:                               ; preds = %if.else.2
  %n169.2 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %X, i64 0, i64 2, i32 1, i32 1
  %308 = load i64, i64* %n169.2, align 8, !tbaa !104
  %cmp171.2 = icmp eq i64 %308, %300
  br i1 %cmp171.2, label %for.inc180.2, label %if.then172

for.inc180.2:                                     ; preds = %lor.lhs.false165.2
  %309 = bitcast %struct.event*** %events.addr to i8***
  %310 = load i8**, i8*** %309, align 8, !tbaa !24
  %311 = load i8*, i8** %310, align 8, !tbaa !24
  call void @free(i8* %311) #2
  %312 = load %struct.event**, %struct.event*** %events.addr, align 8, !tbaa !24
  %arrayidx189.1 = getelementptr inbounds %struct.event*, %struct.event** %312, i64 1
  %313 = bitcast %struct.event** %arrayidx189.1 to i8**
  %314 = load i8*, i8** %313, align 8, !tbaa !24
  call void @free(i8* %314) #2
  %315 = load %struct.event**, %struct.event*** %events.addr, align 8, !tbaa !24
  %arrayidx189.2 = getelementptr inbounds %struct.event*, %struct.event** %315, i64 2
  %316 = bitcast %struct.event** %arrayidx189.2 to i8**
  %317 = load i8*, i8** %316, align 8, !tbaa !24
  call void @free(i8* %317) #2
  %318 = bitcast %struct.treeNode** %L to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %318) #2
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %22, i16* nonnull %23) #2
  store volatile i8* %49, i8** %25, align 8
  %319 = call i8* @llvm.stacksave()
  store volatile i8* %319, i8** %26, align 8
  %320 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %27) #20
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %cilk.spawn.helpercall194, label %cilk.spawn.continuation198
}

declare %__cilkrts_worker* @__cilkrts_get_tls_worker() local_unnamed_addr

declare %__cilkrts_worker* @__cilkrts_bind_thread_1() local_unnamed_addr

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #10

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define linkonce_odr void @_ZN8treeNodeC2EPP5eventiP5range(%struct.treeNode* %this, %struct.event** %E, i32 %_n, %struct.range* %B) unnamed_addr #6 comdat align 2 {
entry:
  %array.begin = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 2, i64 0
  %0 = bitcast %struct.treeNode* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load %struct.event*, %struct.event** %E, align 8, !tbaa !24
  %div = sdiv i32 %_n, 2
  %conv = sext i32 %div to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call noalias i8* @malloc(i64 %mul) #2
  %triangleIndices = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 5
  %2 = bitcast i32** %triangleIndices to i8**
  store i8* %call, i8** %2, align 8, !tbaa !95
  %cmp42 = icmp sgt i32 %_n, 0
  %3 = bitcast i8* %call to i32*
  br i1 %cmp42, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %wide.trip.count = zext i32 %_n to i64
  %4 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.inc.3, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.inc.3 ]
  %k.043.unr = phi i32 [ 0, %for.body.lr.ph ], [ %k.1.3, %for.inc.3 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil.preheader, %for.inc.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.inc.epil ], [ %indvars.iv.unr, %for.body.epil.preheader ]
  %k.043.epil = phi i32 [ %k.1.epil, %for.inc.epil ], [ %k.043.unr, %for.body.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.inc.epil ], [ %xtraiter, %for.body.epil.preheader ]
  %p.epil = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv.epil, i32 1
  %6 = load i32, i32* %p.epil, align 4, !tbaa !20
  %and.epil = and i32 %6, 1
  %tobool.epil = icmp eq i32 %and.epil, 0
  br i1 %tobool.epil, label %if.then.epil, label %for.inc.epil

if.then.epil:                                     ; preds = %for.body.epil
  %shr.epil = ashr i32 %6, 1
  %inc.epil = add nsw i32 %k.043.epil, 1
  %idxprom7.epil = sext i32 %k.043.epil to i64
  %arrayidx8.epil = getelementptr inbounds i32, i32* %3, i64 %idxprom7.epil
  store i32 %shr.epil, i32* %arrayidx8.epil, align 4, !tbaa !26
  br label %for.inc.epil

for.inc.epil:                                     ; preds = %if.then.epil, %for.body.epil
  %k.1.epil = phi i32 [ %k.043.epil, %for.body.epil ], [ %inc.epil, %if.then.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.sub = add nsw i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !105

for.cond.cleanup:                                 ; preds = %for.inc.epil, %for.cond.cleanup.loopexit.unr-lcssa, %entry
  %n = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 6
  store i32 %div, i32* %n, align 8, !tbaa !96
  %leaves = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 7
  store i32 1, i32* %leaves, align 4, !tbaa !97
  %7 = bitcast %struct.range* %B to i64*
  %8 = bitcast %struct.range* %array.begin to i64*
  %9 = load i64, i64* %7, align 4
  store i64 %9, i64* %8, align 4
  %10 = bitcast %struct.event** %E to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !24
  tail call void @free(i8* %11) #2
  %arrayidx17.1 = getelementptr inbounds %struct.range, %struct.range* %B, i64 1
  %arrayidx20.1 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 2, i64 1
  %12 = bitcast %struct.range* %arrayidx17.1 to i64*
  %13 = bitcast %struct.range* %arrayidx20.1 to i64*
  %14 = load i64, i64* %12, align 4
  store i64 %14, i64* %13, align 4
  %arrayidx22.1 = getelementptr inbounds %struct.event*, %struct.event** %E, i64 1
  %15 = bitcast %struct.event** %arrayidx22.1 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !24
  tail call void @free(i8* %16) #2
  %arrayidx17.2 = getelementptr inbounds %struct.range, %struct.range* %B, i64 2
  %arrayidx20.2 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 2, i64 2
  %17 = bitcast %struct.range* %arrayidx17.2 to i64*
  %18 = bitcast %struct.range* %arrayidx20.2 to i64*
  %19 = load i64, i64* %17, align 4
  store i64 %19, i64* %18, align 4
  %arrayidx22.2 = getelementptr inbounds %struct.event*, %struct.event** %E, i64 2
  %20 = bitcast %struct.event** %arrayidx22.2 to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !24
  tail call void @free(i8* %21) #2
  ret void

for.body:                                         ; preds = %for.inc.3, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.inc.3 ]
  %k.043 = phi i32 [ 0, %for.body.lr.ph.new ], [ %k.1.3, %for.inc.3 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.3, %for.inc.3 ]
  %p = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv, i32 1
  %22 = load i32, i32* %p, align 4, !tbaa !20
  %and = and i32 %22, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %shr = ashr i32 %22, 1
  %inc = add nsw i32 %k.043, 1
  %idxprom7 = sext i32 %k.043 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %3, i64 %idxprom7
  store i32 %shr, i32* %arrayidx8, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %k.1 = phi i32 [ %k.043, %for.body ], [ %inc, %if.then ]
  %indvars.iv.next = or i64 %indvars.iv, 1
  %p.1 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv.next, i32 1
  %23 = load i32, i32* %p.1, align 4, !tbaa !20
  %and.1 = and i32 %23, 1
  %tobool.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.1, label %if.then.1, label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %shr.1 = ashr i32 %23, 1
  %inc.1 = add nsw i32 %k.1, 1
  %idxprom7.1 = sext i32 %k.1 to i64
  %arrayidx8.1 = getelementptr inbounds i32, i32* %3, i64 %idxprom7.1
  store i32 %shr.1, i32* %arrayidx8.1, align 4, !tbaa !26
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %k.1.1 = phi i32 [ %k.1, %for.inc ], [ %inc.1, %if.then.1 ]
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %p.2 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv.next.1, i32 1
  %24 = load i32, i32* %p.2, align 4, !tbaa !20
  %and.2 = and i32 %24, 1
  %tobool.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.2, label %if.then.2, label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %shr.2 = ashr i32 %24, 1
  %inc.2 = add nsw i32 %k.1.1, 1
  %idxprom7.2 = sext i32 %k.1.1 to i64
  %arrayidx8.2 = getelementptr inbounds i32, i32* %3, i64 %idxprom7.2
  store i32 %shr.2, i32* %arrayidx8.2, align 4, !tbaa !26
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %k.1.2 = phi i32 [ %k.1.1, %for.inc.1 ], [ %inc.2, %if.then.2 ]
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %p.3 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv.next.2, i32 1
  %25 = load i32, i32* %p.3, align 4, !tbaa !20
  %and.3 = and i32 %25, 1
  %tobool.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.3, label %if.then.3, label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %shr.3 = ashr i32 %25, 1
  %inc.3 = add nsw i32 %k.1.2, 1
  %idxprom7.3 = sext i32 %k.1.2 to i64
  %arrayidx8.3 = getelementptr inbounds i32, i32* %3, i64 %idxprom7.3
  store i32 %shr.3, i32* %arrayidx8.3, align 4, !tbaa !26
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %k.1.3 = phi i32 [ %k.1.2, %for.inc.2 ], [ %inc.3, %if.then.3 ]
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #11

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #12

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #2

; Function Attrs: noinline uwtable
define internal fastcc void @__cilk_spawn_helper(%struct.anon.2* nocapture readonly %__context) unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = tail call %__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %3, %__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %0, %__cilkrts_worker** %5 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %2 release, align 8
  %6 = load %__cilkrts_worker*, %__cilkrts_worker** %5, align 8
  %7 = load %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %4, align 8
  %8 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 0
  %9 = load atomic %__cilkrts_stack_frame**, %__cilkrts_stack_frame*** %8 acquire, align 8
  %.elt.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 0
  %.unpack.i.i = load i64, i64* %.elt.i.i, align 8
  %.elt1.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 1
  %10 = bitcast %__cilkrts_pedigree** %.elt1.i.i to i64*
  %.unpack26.i.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9
  %.repack.i.i = getelementptr inbounds %__cilkrts_pedigree, %__cilkrts_pedigree* %11, i64 0, i32 0
  store i64 %.unpack.i.i, i64* %.repack.i.i, align 8
  %.repack4.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 1
  %12 = bitcast %__cilkrts_pedigree** %.repack4.i.i to i64*
  store i64 %.unpack26.i.i, i64* %12, align 8
  %.repack11.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 0
  store i64 %.unpack.i.i, i64* %.repack11.i.i, align 8
  %.repack13.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 1
  %13 = bitcast %__cilkrts_pedigree** %.repack13.i.i to i64*
  store i64 %.unpack26.i.i, i64* %13, align 8
  store atomic i64 0, i64* %.elt.i.i release, align 8
  store atomic %__cilkrts_pedigree* %11, %__cilkrts_pedigree** %.elt1.i.i release, align 8
  fence release
  store volatile %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %9, align 8
  %14 = getelementptr %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %9, i64 1
  store atomic %__cilkrts_stack_frame** %14, %__cilkrts_stack_frame*** %8 release, align 8
  %15 = load atomic i32, i32* %1 acquire, align 8
  %16 = or i32 %15, 4
  store atomic i32 %16, i32* %1 release, align 8
  %17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %__context, i64 0, i32 2
  %18 = load %struct.event***, %struct.event**** %17, align 8, !tbaa !106
  %19 = load %struct.event**, %struct.event*** %18, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %__context, i64 0, i32 1
  %21 = load i32*, i32** %20, align 8, !tbaa !108
  %22 = load i32, i32* %21, align 4, !tbaa !26
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %struct.event*, %struct.event** %19, i64 %idxprom
  %23 = load %struct.event*, %struct.event** %arrayidx, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %__context, i64 0, i32 3
  %25 = load %struct.range**, %struct.range*** %24, align 8, !tbaa !109
  %26 = load %struct.range*, %struct.range** %25, align 8, !tbaa !24
  %arrayidx2 = getelementptr inbounds %struct.range, %struct.range* %26, i64 %idxprom
  %agg.tmp.sroa.0.0..sroa_cast = bitcast %struct.range* %arrayidx2 to <2 x float>*
  %agg.tmp.sroa.0.0.copyload = load <2 x float>, <2 x float>* %agg.tmp.sroa.0.0..sroa_cast, align 4
  %add = add nsw i32 %22, 1
  %rem = srem i32 %add, 3
  %idxprom4 = sext i32 %rem to i64
  %arrayidx5 = getelementptr inbounds %struct.range, %struct.range* %26, i64 %idxprom4
  %agg.tmp3.sroa.0.0..sroa_cast = bitcast %struct.range* %arrayidx5 to <2 x float>*
  %agg.tmp3.sroa.0.0.copyload = load <2 x float>, <2 x float>* %agg.tmp3.sroa.0.0..sroa_cast, align 4
  %add7 = add nsw i32 %22, 2
  %rem8 = srem i32 %add7, 3
  %idxprom9 = sext i32 %rem8 to i64
  %arrayidx10 = getelementptr inbounds %struct.range, %struct.range* %26, i64 %idxprom9
  %agg.tmp6.sroa.0.0..sroa_cast = bitcast %struct.range* %arrayidx10 to <2 x float>*
  %agg.tmp6.sroa.0.0.copyload = load <2 x float>, <2 x float>* %agg.tmp6.sroa.0.0..sroa_cast, align 4
  %27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %__context, i64 0, i32 4
  %28 = load i32*, i32** %27, align 8, !tbaa !110
  %29 = load i32, i32* %28, align 4, !tbaa !26
  %call = invoke { <2 x float>, i64 } @_Z7bestCutP5event5rangeS1_S1_i(%struct.event* %23, <2 x float> %agg.tmp.sroa.0.0.copyload, <2 x float> %agg.tmp3.sroa.0.0.copyload, <2 x float> %agg.tmp6.sroa.0.0.copyload, i32 %29)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %30 = extractvalue { <2 x float>, i64 } %call, 0
  %31 = extractvalue { <2 x float>, i64 } %call, 1
  %32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %__context, i64 0, i32 0
  %33 = load [3 x %struct.cutInfo]*, [3 x %struct.cutInfo]** %32, align 8, !tbaa !111
  %34 = load i32*, i32** %20, align 8, !tbaa !108
  %35 = load i32, i32* %34, align 4, !tbaa !26
  %idxprom11 = sext i32 %35 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %33, i64 0, i64 %idxprom11
  %ref.tmp.sroa.0.0..sroa_cast15 = bitcast %struct.cutInfo* %arrayidx12 to <2 x float>*
  store <2 x float> %30, <2 x float>* %ref.tmp.sroa.0.0..sroa_cast15, align 4
  %ref.tmp.sroa.5.0..sroa_idx18 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %33, i64 0, i64 %idxprom11, i32 2
  %ref.tmp.sroa.5.0..sroa_cast19 = bitcast i32* %ref.tmp.sroa.5.0..sroa_idx18 to i64*
  store i64 %31, i64* %ref.tmp.sroa.5.0..sroa_cast19, align 4
  %36 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %37 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %36, i64 0, i32 9
  %40 = bitcast %__cilkrts_stack_frame** %39 to i64*
  store atomic i64 %38, i64* %40 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %41 = load atomic i32, i32* %1 acquire, align 8
  %42 = icmp eq i32 %41, 16777216
  br i1 %42, label %__cilk_parent_epilogue.exit, label %43

; <label>:43:                                     ; preds = %invoke.cont
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont, %43
  ret void

lpad:                                             ; preds = %entry
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = extractvalue { i8*, i32 } %44, 0
  %46 = load atomic i32, i32* %1 acquire, align 8
  %47 = or i32 %46, 16
  store atomic i32 %47, i32* %1 release, align 8
  %48 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %45, i8** %48 release, align 8
  %49 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %50 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %49, i64 0, i32 9
  %53 = bitcast %__cilkrts_stack_frame** %52 to i64*
  store atomic i64 %51, i64* %53 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %54 = load atomic i32, i32* %1 acquire, align 8
  %55 = icmp eq i32 %54, 16777216
  br i1 %55, label %__cilk_parent_epilogue.exit22, label %56

; <label>:56:                                     ; preds = %lpad
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit22

__cilk_parent_epilogue.exit22:                    ; preds = %lpad, %56
  resume { i8*, i32 } %44
}

declare %__cilkrts_worker* @__cilkrts_get_tls_worker_fast() local_unnamed_addr

declare void @__cilkrts_leave_frame(%__cilkrts_stack_frame*) local_unnamed_addr

declare void @__cilkrts_sync(%__cilkrts_stack_frame*) local_unnamed_addr

declare void @__cilkrts_rethrow(%__cilkrts_stack_frame*) local_unnamed_addr

; Function Attrs: noinline uwtable
define internal fastcc void @__cilk_spawn_helper.6(%struct.anon.3* nocapture readonly %__context) unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %ref.tmp = alloca %"struct.std::pair", align 8
  %0 = tail call %__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %3, %__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %0, %__cilkrts_worker** %5 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %2 release, align 8
  %6 = load %__cilkrts_worker*, %__cilkrts_worker** %5, align 8
  %7 = load %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %4, align 8
  %8 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 0
  %9 = load atomic %__cilkrts_stack_frame**, %__cilkrts_stack_frame*** %8 acquire, align 8
  %.elt.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 0
  %.unpack.i.i = load i64, i64* %.elt.i.i, align 8
  %.elt1.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 1
  %10 = bitcast %__cilkrts_pedigree** %.elt1.i.i to i64*
  %.unpack26.i.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9
  %.repack.i.i = getelementptr inbounds %__cilkrts_pedigree, %__cilkrts_pedigree* %11, i64 0, i32 0
  store i64 %.unpack.i.i, i64* %.repack.i.i, align 8
  %.repack4.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 1
  %12 = bitcast %__cilkrts_pedigree** %.repack4.i.i to i64*
  store i64 %.unpack26.i.i, i64* %12, align 8
  %.repack11.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 0
  store i64 %.unpack.i.i, i64* %.repack11.i.i, align 8
  %.repack13.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 1
  %13 = bitcast %__cilkrts_pedigree** %.repack13.i.i to i64*
  store i64 %.unpack26.i.i, i64* %13, align 8
  store atomic i64 0, i64* %.elt.i.i release, align 8
  store atomic %__cilkrts_pedigree* %11, %__cilkrts_pedigree** %.elt1.i.i release, align 8
  fence release
  store volatile %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %9, align 8
  %14 = getelementptr %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %9, i64 1
  store atomic %__cilkrts_stack_frame** %14, %__cilkrts_stack_frame*** %8 release, align 8
  %15 = load atomic i32, i32* %1 acquire, align 8
  %16 = or i32 %15, 4
  store atomic i32 %16, i32* %1 release, align 8
  %17 = bitcast %"struct.std::pair"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #2
  %18 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %__context, i64 0, i32 2
  %19 = load %struct.range**, %struct.range*** %18, align 8, !tbaa !112
  %20 = load %struct.range*, %struct.range** %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %__context, i64 0, i32 3
  %22 = load %struct.event***, %struct.event**** %21, align 8, !tbaa !114
  %23 = load %struct.event**, %struct.event*** %22, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %__context, i64 0, i32 1
  %25 = load i32*, i32** %24, align 8, !tbaa !115
  %26 = load i32, i32* %25, align 4, !tbaa !26
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds %struct.event*, %struct.event** %23, i64 %idxprom
  %27 = load %struct.event*, %struct.event** %arrayidx, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %__context, i64 0, i32 4
  %29 = load float*, float** %28, align 8, !tbaa !116
  %30 = load float, float* %29, align 4, !tbaa !27
  %31 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %__context, i64 0, i32 5
  %32 = load i32*, i32** %31, align 8, !tbaa !117
  %33 = load i32, i32* %32, align 4, !tbaa !26
  invoke void @_Z11splitEventsP5rangeP5eventfi(%"struct.std::pair"* nonnull sret %ref.tmp, %struct.range* %20, %struct.event* %27, float %30, i32 %33)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %34 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %__context, i64 0, i32 0
  %35 = load [3 x %"struct.std::pair"]*, [3 x %"struct.std::pair"]** %34, align 8, !tbaa !118
  %36 = load i32*, i32** %24, align 8, !tbaa !115
  %37 = load i32, i32* %36, align 4, !tbaa !26
  %idxprom1 = sext i32 %37 to i64
  %arrayidx2 = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %35, i64 0, i64 %idxprom1
  %38 = bitcast %"struct.std::pair"* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* nonnull %17, i64 16, i32 8, i1 false) #2, !tbaa.struct !119
  %second.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %ref.tmp, i64 0, i32 1
  %second4.i = getelementptr inbounds [3 x %"struct.std::pair"], [3 x %"struct.std::pair"]* %35, i64 0, i64 %idxprom1, i32 1
  %39 = bitcast %struct._seq* %second4.i to i8*
  %40 = bitcast %struct._seq* %second.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %39, i8* nonnull %40, i64 16, i32 8, i1 false) #2, !tbaa.struct !119
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #2
  %41 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %42 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %41, i64 0, i32 9
  %45 = bitcast %__cilkrts_stack_frame** %44 to i64*
  store atomic i64 %43, i64* %45 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %46 = load atomic i32, i32* %1 acquire, align 8
  %47 = icmp eq i32 %46, 16777216
  br i1 %47, label %__cilk_parent_epilogue.exit5, label %48

; <label>:48:                                     ; preds = %invoke.cont
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit5

__cilk_parent_epilogue.exit5:                     ; preds = %invoke.cont, %48
  ret void

lpad:                                             ; preds = %entry
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #2
  %51 = load atomic i32, i32* %1 acquire, align 8
  %52 = or i32 %51, 16
  store atomic i32 %52, i32* %1 release, align 8
  %53 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %50, i8** %53 release, align 8
  %54 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %55 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %54, i64 0, i32 9
  %58 = bitcast %__cilkrts_stack_frame** %57 to i64*
  store atomic i64 %56, i64* %58 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %59 = load atomic i32, i32* %1 acquire, align 8
  %60 = icmp eq i32 %59, 16777216
  br i1 %60, label %__cilk_parent_epilogue.exit, label %61

; <label>:61:                                     ; preds = %lpad
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %lpad, %61
  resume { i8*, i32 } %49
}

; Function Attrs: inlinehint uwtable
declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) local_unnamed_addr #14

; Function Attrs: inlinehint uwtable
declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: noinline uwtable
define internal fastcc void @__cilk_spawn_helper.7(%struct.anon.4* nocapture readonly %__context) unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = tail call %__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %3, %__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %0, %__cilkrts_worker** %5 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %2 release, align 8
  %6 = load %__cilkrts_worker*, %__cilkrts_worker** %5, align 8
  %7 = load %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %4, align 8
  %8 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 0
  %9 = load atomic %__cilkrts_stack_frame**, %__cilkrts_stack_frame*** %8 acquire, align 8
  %.elt.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 0
  %.unpack.i.i = load i64, i64* %.elt.i.i, align 8
  %.elt1.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 1
  %10 = bitcast %__cilkrts_pedigree** %.elt1.i.i to i64*
  %.unpack26.i.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9
  %.repack.i.i = getelementptr inbounds %__cilkrts_pedigree, %__cilkrts_pedigree* %11, i64 0, i32 0
  store i64 %.unpack.i.i, i64* %.repack.i.i, align 8
  %.repack4.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 1
  %12 = bitcast %__cilkrts_pedigree** %.repack4.i.i to i64*
  store i64 %.unpack26.i.i, i64* %12, align 8
  %.repack11.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 0
  store i64 %.unpack.i.i, i64* %.repack11.i.i, align 8
  %.repack13.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 1
  %13 = bitcast %__cilkrts_pedigree** %.repack13.i.i to i64*
  store i64 %.unpack26.i.i, i64* %13, align 8
  store atomic i64 0, i64* %.elt.i.i release, align 8
  store atomic %__cilkrts_pedigree* %11, %__cilkrts_pedigree** %.elt1.i.i release, align 8
  fence release
  store volatile %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %9, align 8
  %14 = getelementptr %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %9, i64 1
  store atomic %__cilkrts_stack_frame** %14, %__cilkrts_stack_frame*** %8 release, align 8
  %15 = load atomic i32, i32* %1 acquire, align 8
  %16 = or i32 %15, 4
  store atomic i32 %16, i32* %1 release, align 8
  %17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %__context, i64 0, i32 0
  %18 = load %struct.treeNode**, %struct.treeNode*** %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %__context, i64 0, i32 1
  %20 = load %struct.range***, %struct.range**** %19, align 8, !tbaa !123
  %21 = load %struct.range**, %struct.range*** %20, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %__context, i64 0, i32 2
  %23 = load [3 x %struct.event*]*, [3 x %struct.event*]** %22, align 8, !tbaa !124
  %arraydecay = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %23, i64 0, i64 0
  %24 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %__context, i64 0, i32 3
  %25 = load [3 x %struct.range]*, [3 x %struct.range]** %24, align 8, !tbaa !125
  %arraydecay1 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %25, i64 0, i64 0
  %26 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %__context, i64 0, i32 4
  %27 = load i32*, i32** %26, align 8, !tbaa !126
  %28 = load i32, i32* %27, align 4, !tbaa !26
  %29 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %__context, i64 0, i32 5
  %30 = load i32*, i32** %29, align 8, !tbaa !127
  %31 = load i32, i32* %30, align 4, !tbaa !26
  %sub = add nsw i32 %31, -1
  %call = invoke %struct.treeNode* @_Z12generateNodePP5rangePP5eventS0_ii(%struct.range** %21, %struct.event** %arraydecay, %struct.range* %arraydecay1, i32 %28, i32 %sub)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %struct.treeNode* %call, %struct.treeNode** %18, align 8, !tbaa !24
  %32 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %33 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %32, i64 0, i32 9
  %36 = bitcast %__cilkrts_stack_frame** %35 to i64*
  store atomic i64 %34, i64* %36 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %37 = load atomic i32, i32* %1 acquire, align 8
  %38 = icmp eq i32 %37, 16777216
  br i1 %38, label %__cilk_parent_epilogue.exit, label %39

; <label>:39:                                     ; preds = %invoke.cont
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont, %39
  ret void

lpad:                                             ; preds = %entry
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  %42 = load atomic i32, i32* %1 acquire, align 8
  %43 = or i32 %42, 16
  store atomic i32 %43, i32* %1 release, align 8
  %44 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %41, i8** %44 release, align 8
  %45 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %46 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %45, i64 0, i32 9
  %49 = bitcast %__cilkrts_stack_frame** %48 to i64*
  store atomic i64 %47, i64* %49 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %50 = load atomic i32, i32* %1 acquire, align 8
  %51 = icmp eq i32 %50, 16777216
  br i1 %51, label %__cilk_parent_epilogue.exit4, label %52

; <label>:52:                                     ; preds = %lpad
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit4

__cilk_parent_epilogue.exit4:                     ; preds = %lpad, %52
  resume { i8*, i32 } %40
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z7findRay3rayI8_point3dIdEEPii9trianglesIS1_EP5range(%struct.ray* byval nocapture readonly align 8 %r, i32* nocapture readonly %I, i32 %n, %struct.triangles* byval nocapture readonly align 8 %Tri, %struct.range* nocapture readonly %B) local_unnamed_addr #7 {
entry:
  %0 = load i32, i32* @STATS, align 4, !tbaa !26
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @tcount, align 4, !tbaa !26
  %add = add nsw i32 %1, %n
  store i32 %add, i32* @tcount, align 4, !tbaa !26
  %2 = load i32, i32* @ccount, align 4, !tbaa !26
  %add1 = add nsw i32 %2, 1
  store i32 %add1, i32* @ccount, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %P2 = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 2
  %3 = load %class._point3d*, %class._point3d** %P2, align 8, !tbaa !128
  %cmp106 = icmp sgt i32 %n, 0
  br i1 %cmp106, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %T = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 3
  %4 = load %struct.triangle*, %struct.triangle** %T, align 8, !tbaa !130
  %agg.tmp.sroa.4.0..sroa_idx93 = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 1, i32 0
  %agg.tmp.sroa.4.0.copyload = load double, double* %agg.tmp.sroa.4.0..sroa_idx93, align 8
  %agg.tmp.sroa.5.0..sroa_idx94 = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 1, i32 1
  %agg.tmp.sroa.5.0.copyload = load double, double* %agg.tmp.sroa.5.0..sroa_idx94, align 8
  %agg.tmp.sroa.6.0..sroa_idx95 = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 1, i32 2
  %agg.tmp.sroa.6.0.copyload = load double, double* %agg.tmp.sroa.6.0..sroa_idx95, align 8
  %agg.tmp.sroa.3.0..sroa_idx92 = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 0, i32 2
  %agg.tmp.sroa.3.0.copyload = load double, double* %agg.tmp.sroa.3.0..sroa_idx92, align 8
  %5 = bitcast %struct.ray* %r to <2 x double>*
  %6 = load <2 x double>, <2 x double>* %5, align 8
  %min.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 0, i32 0
  %7 = load float, float* @epsilon, align 4
  %max.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 0, i32 1
  %min7.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 1, i32 0
  %max14.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 1, i32 1
  %min20.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 2, i32 0
  %max26.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 2, i32 1
  %wide.trip.count = zext i32 %n to i64
  %8 = insertelement <2 x double> undef, double %agg.tmp.sroa.6.0.copyload, i32 0
  %9 = insertelement <2 x double> %8, double %agg.tmp.sroa.4.0.copyload, i32 1
  %10 = insertelement <2 x double> undef, double %agg.tmp.sroa.4.0.copyload, i32 0
  %11 = insertelement <2 x double> %10, double %agg.tmp.sroa.6.0.copyload, i32 1
  %12 = insertelement <2 x double> undef, double %agg.tmp.sroa.5.0.copyload, i32 0
  %13 = insertelement <2 x double> %12, double %agg.tmp.sroa.4.0.copyload, i32 1
  %14 = extractelement <2 x double> %6, i32 0
  %15 = extractelement <2 x double> %6, i32 1
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end22, %if.end
  %k.0.lcssa = phi i32 [ -1, %if.end ], [ %k.1, %if.end22 ]
  ret i32 %k.0.lcssa

for.body:                                         ; preds = %if.end22, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end22 ]
  %tMin.0109 = phi double [ 0x47EFFFFFE0000000, %for.body.lr.ph ], [ %tMin.1, %if.end22 ]
  %k.0108 = phi i32 [ -1, %for.body.lr.ph ], [ %k.1, %if.end22 ]
  %arrayidx = getelementptr inbounds i32, i32* %I, i64 %indvars.iv
  %16 = load i32, i32* %arrayidx, align 4, !tbaa !26
  %idx.ext = sext i32 %16 to i64
  %arrayidx3 = getelementptr inbounds %struct.triangle, %struct.triangle* %4, i64 %idx.ext, i32 0, i64 0
  %17 = load i32, i32* %arrayidx3, align 4, !tbaa !26
  %idxprom4 = sext i32 %17 to i64
  %m.sroa.0.0..sroa_idx = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom4, i32 0
  %m.sroa.0.0.copyload = load double, double* %m.sroa.0.0..sroa_idx, align 8
  %m.sroa.4.0..sroa_idx67 = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom4, i32 1
  %m.sroa.4.0.copyload = load double, double* %m.sroa.4.0..sroa_idx67, align 8
  %m.sroa.5.0..sroa_idx69 = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom4, i32 2
  %m.sroa.5.0.copyload = load double, double* %m.sroa.5.0..sroa_idx69, align 8
  %arrayidx7 = getelementptr inbounds %struct.triangle, %struct.triangle* %4, i64 %idx.ext, i32 0, i64 1
  %18 = load i32, i32* %arrayidx7, align 4, !tbaa !26
  %idxprom8 = sext i32 %18 to i64
  %m.sroa.6.24..sroa_idx = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom8, i32 0
  %m.sroa.6.24.copyload = load double, double* %m.sroa.6.24..sroa_idx, align 8
  %m.sroa.8.24..sroa_idx72 = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom8, i32 1
  %19 = bitcast double* %m.sroa.8.24..sroa_idx72 to <2 x double>*
  %20 = load <2 x double>, <2 x double>* %19, align 8
  %arrayidx12 = getelementptr inbounds %struct.triangle, %struct.triangle* %4, i64 %idx.ext, i32 0, i64 2
  %21 = load i32, i32* %arrayidx12, align 4, !tbaa !26
  %idxprom13 = sext i32 %21 to i64
  %m.sroa.10.48..sroa_idx = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom13, i32 0
  %m.sroa.10.48.copyload = load double, double* %m.sroa.10.48..sroa_idx, align 8
  %m.sroa.12.48..sroa_idx77 = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom13, i32 1
  %m.sroa.12.48.copyload = load double, double* %m.sroa.12.48..sroa_idx77, align 8
  %m.sroa.13.48..sroa_idx79 = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom13, i32 2
  %m.sroa.13.48.copyload = load double, double* %m.sroa.13.48..sroa_idx79, align 8
  %sub.i.i = fsub double %m.sroa.6.24.copyload, %m.sroa.0.0.copyload
  %22 = insertelement <2 x double> undef, double %m.sroa.4.0.copyload, i32 0
  %23 = insertelement <2 x double> %22, double %m.sroa.5.0.copyload, i32 1
  %24 = fsub <2 x double> %20, %23
  %sub4.i152.i = fsub double %m.sroa.12.48.copyload, %m.sroa.4.0.copyload
  %25 = insertelement <2 x double> undef, double %m.sroa.13.48.copyload, i32 0
  %26 = insertelement <2 x double> %25, double %m.sroa.10.48.copyload, i32 1
  %27 = insertelement <2 x double> undef, double %m.sroa.5.0.copyload, i32 0
  %28 = insertelement <2 x double> %27, double %m.sroa.0.0.copyload, i32 1
  %29 = fsub <2 x double> %26, %28
  %30 = extractelement <2 x double> %29, i32 0
  %mul.i130.i = fmul double %agg.tmp.sroa.5.0.copyload, %30
  %mul4.i133.i = fmul double %agg.tmp.sroa.6.0.copyload, %sub4.i152.i
  %sub.i134.i = fsub double %mul.i130.i, %mul4.i133.i
  %31 = insertelement <2 x double> undef, double %sub4.i152.i, i32 0
  %32 = shufflevector <2 x double> %31, <2 x double> %29, <2 x i32> <i32 0, i32 3>
  %33 = fmul <2 x double> %11, %32
  %34 = shufflevector <2 x double> %29, <2 x double> undef, <2 x i32> <i32 1, i32 0>
  %35 = fmul <2 x double> %13, %34
  %36 = fsub <2 x double> %33, %35
  %mul.i118.i = fmul double %sub.i.i, %sub.i134.i
  %37 = extractelement <2 x double> %24, i32 1
  %38 = shufflevector <2 x double> %24, <2 x double> undef, <2 x i32> <i32 1, i32 0>
  %39 = fmul <2 x double> %38, %36
  %40 = extractelement <2 x double> %39, i32 1
  %add.i122.i = fadd double %mul.i118.i, %40
  %41 = extractelement <2 x double> %39, i32 0
  %add7.i126.i = fadd double %41, %add.i122.i
  %cmp.i = fcmp ogt double %add7.i126.i, -1.000000e-08
  %cmp9.i = fcmp olt double %add7.i126.i, 1.000000e-08
  %or.cond.i = and i1 %cmp.i, %cmp9.i
  br i1 %or.cond.i, label %if.end22, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %div.i = fdiv double 1.000000e+00, %add7.i126.i
  %42 = insertelement <2 x double> undef, double %m.sroa.0.0.copyload, i32 0
  %43 = insertelement <2 x double> %42, double %m.sroa.4.0.copyload, i32 1
  %44 = fsub <2 x double> %6, %43
  %sub6.i111.i = fsub double %agg.tmp.sroa.3.0.copyload, %m.sroa.5.0.copyload
  %45 = extractelement <2 x double> %44, i32 0
  %mul.i93.i = fmul double %45, %sub.i134.i
  %46 = insertelement <2 x double> undef, double %sub6.i111.i, i32 0
  %47 = shufflevector <2 x double> %46, <2 x double> %44, <2 x i32> <i32 0, i32 3>
  %48 = fmul <2 x double> %47, %36
  %49 = extractelement <2 x double> %48, i32 1
  %add.i97.i = fadd double %mul.i93.i, %49
  %50 = extractelement <2 x double> %48, i32 0
  %add7.i101.i = fadd double %50, %add.i97.i
  %mul.i = fmul double %add7.i101.i, %div.i
  %cmp14.i = fcmp olt double %mul.i, 0.000000e+00
  %cmp15.i = fcmp ogt double %mul.i, 1.000000e+00
  %or.cond40.i = or i1 %cmp14.i, %cmp15.i
  br i1 %or.cond40.i, label %if.end22, label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i
  %51 = extractelement <2 x double> %44, i32 1
  %mul6.i86.i = fmul double %sub6.i111.i, %sub.i.i
  %mul9.i.i = fmul double %45, %37
  %sub10.i.i = fsub double %mul6.i86.i, %mul9.i.i
  %52 = fmul <2 x double> %44, %24
  %53 = insertelement <2 x double> undef, double %sub.i.i, i32 0
  %54 = shufflevector <2 x double> %53, <2 x double> %24, <2 x i32> <i32 0, i32 2>
  %55 = insertelement <2 x double> undef, double %51, i32 0
  %56 = insertelement <2 x double> %55, double %sub6.i111.i, i32 1
  %57 = fmul <2 x double> %56, %54
  %58 = fsub <2 x double> %52, %57
  %mul4.i72.i = fmul double %agg.tmp.sroa.5.0.copyload, %sub10.i.i
  %59 = fmul <2 x double> %9, %58
  %60 = extractelement <2 x double> %59, i32 1
  %add.i73.i = fadd double %mul4.i72.i, %60
  %61 = extractelement <2 x double> %59, i32 0
  %add7.i77.i = fadd double %61, %add.i73.i
  %mul21.i = fmul double %add7.i77.i, %div.i
  %cmp22.i = fcmp olt double %mul21.i, 0.000000e+00
  %add.i = fadd double %mul.i, %mul21.i
  %cmp24.i = fcmp ogt double %add.i, 1.000000e+00
  %or.cond57.i = or i1 %cmp22.i, %cmp24.i
  br i1 %or.cond57.i, label %if.end22, label %_Z20rayTriangleIntersectIdET_3rayI8_point3dIS0_EEPS3_.exit

_Z20rayTriangleIntersectIdET_3rayI8_point3dIS0_EEPS3_.exit: ; preds = %if.end17.i
  %mul4.i.i = fmul double %sub4.i152.i, %sub10.i.i
  %62 = fmul <2 x double> %58, %29
  %63 = extractelement <2 x double> %62, i32 1
  %add.i.i = fadd double %mul4.i.i, %63
  %64 = extractelement <2 x double> %62, i32 0
  %add7.i.i = fadd double %64, %add.i.i
  %mul29.i = fmul double %add7.i.i, %div.i
  %cmp15 = fcmp ogt double %mul29.i, 0.000000e+00
  %cmp16 = fcmp olt double %mul29.i, %tMin.0109
  %or.cond = and i1 %cmp15, %cmp16
  br i1 %or.cond, label %land.rhs, label %if.end22

land.rhs:                                         ; preds = %_Z20rayTriangleIntersectIdET_3rayI8_point3dIS0_EEPS3_.exit
  %mul.i55 = fmul double %agg.tmp.sroa.4.0.copyload, %mul29.i
  %mul2.i = fmul double %agg.tmp.sroa.5.0.copyload, %mul29.i
  %mul3.i = fmul double %agg.tmp.sroa.6.0.copyload, %mul29.i
  %add.i48 = fadd double %14, %mul.i55
  %add4.i = fadd double %15, %mul2.i
  %add6.i = fadd double %agg.tmp.sroa.3.0.copyload, %mul3.i
  %65 = load float, float* %min.i, align 4, !tbaa !19
  %sub.i = fsub float %65, %7
  %conv.i = fpext float %sub.i to double
  %cmp.i44 = fcmp ult double %add.i48, %conv.i
  br i1 %cmp.i44, label %if.end22, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.rhs
  %66 = load float, float* %max.i, align 4, !tbaa !14
  %add.i45 = fadd float %7, %66
  %conv3.i = fpext float %add.i45 to double
  %cmp4.i = fcmp ugt double %add.i48, %conv3.i
  br i1 %cmp4.i, label %if.end22, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %67 = load float, float* %min7.i, align 4, !tbaa !19
  %sub8.i = fsub float %67, %7
  %conv9.i = fpext float %sub8.i to double
  %cmp10.i = fcmp ult double %add4.i, %conv9.i
  br i1 %cmp10.i, label %if.end22, label %land.lhs.true11.i

land.lhs.true11.i:                                ; preds = %land.lhs.true5.i
  %68 = load float, float* %max14.i, align 4, !tbaa !14
  %add15.i = fadd float %7, %68
  %conv16.i = fpext float %add15.i to double
  %cmp17.i = fcmp ugt double %add4.i, %conv16.i
  br i1 %cmp17.i, label %if.end22, label %land.lhs.true18.i

land.lhs.true18.i:                                ; preds = %land.lhs.true11.i
  %69 = load float, float* %min20.i, align 4, !tbaa !19
  %sub21.i = fsub float %69, %7
  %conv22.i = fpext float %sub21.i to double
  %cmp23.i = fcmp ult double %add6.i, %conv22.i
  br i1 %cmp23.i, label %if.end22, label %_Z5inBox8_point3dIdEP5range.exit

_Z5inBox8_point3dIdEP5range.exit:                 ; preds = %land.lhs.true18.i
  %70 = load float, float* %max26.i, align 4, !tbaa !14
  %add27.i = fadd float %7, %70
  %conv28.i = fpext float %add27.i to double
  %cmp29.i = fcmp ugt double %add6.i, %conv28.i
  br i1 %cmp29.i, label %if.end22, label %if.then21

if.then21:                                        ; preds = %_Z5inBox8_point3dIdEP5range.exit
  br label %if.end22

if.end22:                                         ; preds = %_Z5inBox8_point3dIdEP5range.exit, %land.rhs, %land.lhs.true.i, %land.lhs.true5.i, %land.lhs.true11.i, %land.lhs.true18.i, %if.end17.i, %if.end.i, %for.body, %_Z20rayTriangleIntersectIdET_3rayI8_point3dIS0_EEPS3_.exit, %if.then21
  %k.1 = phi i32 [ %16, %if.then21 ], [ %k.0108, %_Z5inBox8_point3dIdEP5range.exit ], [ %k.0108, %_Z20rayTriangleIntersectIdET_3rayI8_point3dIS0_EEPS3_.exit ], [ %k.0108, %for.body ], [ %k.0108, %if.end.i ], [ %k.0108, %if.end17.i ], [ %k.0108, %land.lhs.true18.i ], [ %k.0108, %land.lhs.true11.i ], [ %k.0108, %land.lhs.true5.i ], [ %k.0108, %land.lhs.true.i ], [ %k.0108, %land.rhs ]
  %tMin.1 = phi double [ %mul29.i, %if.then21 ], [ %tMin.0109, %_Z5inBox8_point3dIdEP5range.exit ], [ %tMin.0109, %_Z20rayTriangleIntersectIdET_3rayI8_point3dIS0_EEPS3_.exit ], [ %tMin.0109, %for.body ], [ %tMin.0109, %if.end.i ], [ %tMin.0109, %if.end17.i ], [ %tMin.0109, %land.lhs.true18.i ], [ %tMin.0109, %land.lhs.true11.i ], [ %tMin.0109, %land.lhs.true5.i ], [ %tMin.0109, %land.lhs.true.i ], [ %tMin.0109, %land.rhs ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind uwtable
define i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nocapture readonly align 8 %r, %struct.treeNode* nocapture readonly %TN, %struct.triangles* byval nocapture readonly align 8 %Tri) local_unnamed_addr #8 {
entry:
  %oo = alloca [3 x double], align 16
  %dd = alloca [3 x double], align 16
  %triangleIndices.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 5
  %0 = load i32*, i32** %triangleIndices.i, align 8, !tbaa !95
  %cmp.i = icmp eq i32* %0, null
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %n = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 6
  %1 = load i32, i32* %n, align 8, !tbaa !96
  %arraydecay = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 0
  %call2 = call i32 @_Z7findRay3rayI8_point3dIdEEPii9trianglesIS1_EP5range(%struct.ray* byval nonnull align 8 %r, i32* nonnull %0, i32 %1, %struct.triangles* byval nonnull align 8 %Tri, %struct.range* nonnull %arraydecay)
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.ray* %r to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %o.sroa.5.0..sroa_idx180 = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 0, i32 2
  %4 = bitcast double* %o.sroa.5.0..sroa_idx180 to i64*
  %o.sroa.5.0.copyload197 = load i64, i64* %4, align 8
  %d.sroa.0.0..sroa_idx = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 1, i32 0
  %5 = bitcast double* %d.sroa.0.0..sroa_idx to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %d.sroa.5.0..sroa_idx175 = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 1, i32 2
  %7 = bitcast double* %d.sroa.5.0..sroa_idx175 to i64*
  %d.sroa.5.0.copyload200 = load i64, i64* %7, align 8
  %8 = bitcast [3 x double]* %oo to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #2
  %9 = bitcast [3 x double]* %oo to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %9, align 16, !tbaa !131
  %arrayinit.element5 = getelementptr inbounds [3 x double], [3 x double]* %oo, i64 0, i64 2
  %10 = bitcast double* %arrayinit.element5 to i64*
  store i64 %o.sroa.5.0.copyload197, i64* %10, align 16, !tbaa !131
  %11 = bitcast [3 x double]* %dd to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #2
  %12 = bitcast [3 x double]* %dd to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %12, align 16, !tbaa !131
  %arrayinit.element10 = getelementptr inbounds [3 x double], [3 x double]* %dd, i64 0, i64 2
  %13 = bitcast double* %arrayinit.element10 to i64*
  store i64 %d.sroa.5.0.copyload200, i64* %13, align 16, !tbaa !131
  %cutDim = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 3
  %14 = load i32, i32* %cutDim, align 8, !tbaa !93
  %cmp = icmp eq i32 %14, 2
  %add = add nsw i32 %14, 1
  %cmp12 = icmp eq i32 %14, 0
  %sub = add nsw i32 %14, -1
  %15 = sext i32 %add to i64
  %idxprom = select i1 %cmp, i64 0, i64 %15
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %oo, i64 0, i64 %idxprom
  %16 = load double, double* %arrayidx, align 8, !tbaa !131
  %17 = sext i32 %sub to i64
  %idxprom17 = select i1 %cmp12, i64 2, i64 %17
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %oo, i64 0, i64 %idxprom17
  %18 = load double, double* %arrayidx18, align 8, !tbaa !131
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %dd, i64 0, i64 %idxprom
  %19 = load double, double* %arrayidx20, align 8, !tbaa !131
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %dd, i64 0, i64 %idxprom17
  %20 = load double, double* %arrayidx22, align 8, !tbaa !131
  %cutOff = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 4
  %21 = load float, float* %cutOff, align 4, !tbaa !94
  %conv = fpext float %21 to double
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %oo, i64 0, i64 %idxprom23
  %22 = load double, double* %arrayidx24, align 8, !tbaa !131
  %sub25 = fsub double %conv, %22
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %dd, i64 0, i64 %idxprom23
  %23 = load double, double* %arrayidx27, align 8, !tbaa !131
  %div = fdiv double %sub25, %23
  %mul.i = fmul double %19, %div
  %mul2.i = fmul double %20, %div
  %add.i = fadd double %16, %mul.i
  %add4.i = fadd double %18, %mul2.i
  %rx.sroa.0.0..sroa_idx = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 %idxprom, i32 0
  %rx.sroa.0.0.copyload = load float, float* %rx.sroa.0.0..sroa_idx, align 4
  %ry.sroa.0.0..sroa_idx = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 %idxprom17, i32 0
  %ry.sroa.0.0.copyload = load float, float* %ry.sroa.0.0..sroa_idx, align 4
  %ry.sroa.4.0..sroa_idx149 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 %idxprom17, i32 1
  %ry.sroa.4.0.copyload = load float, float* %ry.sroa.4.0..sroa_idx149, align 4
  %conv40 = fpext float %rx.sroa.0.0.copyload to double
  %cmp41 = fcmp olt double %add.i, %conv40
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end
  %mul = fmul double %19, %23
  %cmp44 = fcmp ogt double %mul, 0.000000e+00
  br i1 %cmp44, label %if.then84, label %if.then90

if.else:                                          ; preds = %if.end
  %rx.sroa.4.0..sroa_idx152 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 %idxprom, i32 1
  %rx.sroa.4.0.copyload = load float, float* %rx.sroa.4.0..sroa_idx152, align 4
  %conv48 = fpext float %rx.sroa.4.0.copyload to double
  %cmp49 = fcmp ogt double %add.i, %conv48
  br i1 %cmp49, label %if.then50, label %if.else56

if.then50:                                        ; preds = %if.else
  %mul52 = fmul double %19, %23
  %cmp53 = fcmp olt double %mul52, 0.000000e+00
  br i1 %cmp53, label %if.then84, label %if.then90

if.else56:                                        ; preds = %if.else
  %conv59 = fpext float %ry.sroa.0.0.copyload to double
  %cmp60 = fcmp olt double %add4.i, %conv59
  br i1 %cmp60, label %if.then61, label %if.else67

if.then61:                                        ; preds = %if.else56
  %mul63 = fmul double %20, %23
  %cmp64 = fcmp ogt double %mul63, 0.000000e+00
  br i1 %cmp64, label %if.then84, label %if.then90

if.else67:                                        ; preds = %if.else56
  %conv70 = fpext float %ry.sroa.4.0.copyload to double
  %cmp71 = fcmp ogt double %add4.i, %conv70
  br i1 %cmp71, label %if.then72, label %if.else94

if.then72:                                        ; preds = %if.else67
  %mul74 = fmul double %20, %23
  %cmp75 = fcmp olt double %mul74, 0.000000e+00
  br i1 %cmp75, label %if.then84, label %if.then90

if.then84:                                        ; preds = %if.then72, %if.then61, %if.then50, %if.then42
  %right = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 1
  %24 = load %struct.treeNode*, %struct.treeNode** %right, align 8, !tbaa !92
  %call87 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %24, %struct.triangles* byval nonnull align 8 %Tri)
  br label %cleanup122

if.then90:                                        ; preds = %if.then42, %if.then50, %if.then61, %if.then72
  %left = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 0
  %25 = load %struct.treeNode*, %struct.treeNode** %left, align 8, !tbaa !90
  %call93 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %25, %struct.triangles* byval nonnull align 8 %Tri)
  br label %cleanup122

if.else94:                                        ; preds = %if.else67
  %cmp95 = fcmp ogt double %23, 0.000000e+00
  br i1 %cmp95, label %if.then96, label %if.else108

if.then96:                                        ; preds = %if.else94
  %left98 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 0
  %26 = load %struct.treeNode*, %struct.treeNode** %left98, align 8, !tbaa !90
  %call100 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %26, %struct.triangles* byval nonnull align 8 %Tri)
  %cmp101 = icmp sgt i32 %call100, -1
  br i1 %cmp101, label %cleanup122, label %if.else103

if.else103:                                       ; preds = %if.then96
  %right105 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 1
  %27 = load %struct.treeNode*, %struct.treeNode** %right105, align 8, !tbaa !92
  %call107 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %27, %struct.triangles* byval nonnull align 8 %Tri)
  br label %cleanup122

if.else108:                                       ; preds = %if.else94
  %right111 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 1
  %28 = load %struct.treeNode*, %struct.treeNode** %right111, align 8, !tbaa !92
  %call113 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %28, %struct.triangles* byval nonnull align 8 %Tri)
  %cmp114 = icmp sgt i32 %call113, -1
  br i1 %cmp114, label %cleanup122, label %if.else116

if.else116:                                       ; preds = %if.else108
  %left118 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 0
  %29 = load %struct.treeNode*, %struct.treeNode** %left118, align 8, !tbaa !90
  %call120 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %29, %struct.triangles* byval nonnull align 8 %Tri)
  br label %cleanup122

cleanup122:                                       ; preds = %if.else116, %if.else108, %if.else103, %if.then96, %if.then90, %if.then84
  %retval.2 = phi i32 [ %call87, %if.then84 ], [ %call93, %if.then90 ], [ %call107, %if.else103 ], [ %call100, %if.then96 ], [ %call120, %if.else116 ], [ %call113, %if.else108 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #2
  br label %return

return:                                           ; preds = %cleanup122, %if.then
  %retval.3 = phi i32 [ %call2, %if.then ], [ %retval.2, %cleanup122 ]
  ret i32 %retval.3
}

; Function Attrs: uwtable
define void @_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi(%struct.triangles* byval align 8 %Tri, %struct.ray* %rays, i32 %numRays, %struct.treeNode* %R, i32* %results) local_unnamed_addr #6 {
entry:
  %rays.addr = alloca %struct.ray*, align 8
  %R.addr = alloca %struct.treeNode*, align 8
  %results.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon.5, align 8
  store %struct.ray* %rays, %struct.ray** %rays.addr, align 8, !tbaa !24
  store %struct.treeNode* %R, %struct.treeNode** %R.addr, align 8, !tbaa !24
  store i32* %results, i32** %results.addr, align 8, !tbaa !24
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  %cmp = icmp sgt i32 %numRays, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured, i64 0, i32 0
  store i32* %i, i32** %1, align 8, !tbaa !24
  %2 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured, i64 0, i32 1
  store i32** %results.addr, i32*** %2, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured, i64 0, i32 2
  store %struct.ray** %rays.addr, %struct.ray*** %3, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured, i64 0, i32 3
  store %struct.treeNode** %R.addr, %struct.treeNode*** %4, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured, i64 0, i32 4
  store %struct.triangles* %Tri, %struct.triangles** %5, align 8, !tbaa !24
  %6 = bitcast %struct.anon.5* %agg.captured to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.5*, i32, i32)* @__cilk_for_helper.8 to void (i8*, i32, i32)*), i8* nonnull %6, i32 %numRays, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cilk_for_helper.8(%struct.anon.5* nocapture readonly %__context, i32 %__low, i32 %__high) #8 {
entry:
  %agg.tmp = alloca %struct.ray, align 8
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !133
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %__context, i64 0, i32 2
  %5 = bitcast %struct.ray* %agg.tmp to i8*
  %6 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %__context, i64 0, i32 3
  %7 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %__context, i64 0, i32 4
  %8 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %__context, i64 0, i32 1
  %9 = sext i32 %add to i64
  br label %loop.body

loop.cond.cleanup:                                ; preds = %loop.body, %entry
  ret void

loop.body:                                        ; preds = %loop.body, %loop.body.lr.ph
  %indvars.iv = phi i64 [ %9, %loop.body.lr.ph ], [ %indvars.iv.next, %loop.body ]
  %__index.addr.011 = phi i32 [ %__low, %loop.body.lr.ph ], [ %18, %loop.body ]
  %10 = load %struct.ray**, %struct.ray*** %4, align 8, !tbaa !135
  %11 = load %struct.ray*, %struct.ray** %10, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds %struct.ray, %struct.ray* %11, i64 %indvars.iv
  %12 = bitcast %struct.ray* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* %12, i64 48, i32 8, i1 false), !tbaa.struct !136
  %13 = load %struct.treeNode**, %struct.treeNode*** %6, align 8, !tbaa !137
  %14 = load %struct.treeNode*, %struct.treeNode** %13, align 8, !tbaa !24
  %15 = load %struct.triangles*, %struct.triangles** %7, align 8, !tbaa !138
  %call = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %agg.tmp, %struct.treeNode* %14, %struct.triangles* byval nonnull align 8 %15)
  %16 = load i32**, i32*** %8, align 8, !tbaa !139
  %17 = load i32*, i32** %16, align 8, !tbaa !24
  %arrayidx3 = getelementptr inbounds i32, i32* %17, i64 %indvars.iv
  store i32 %call, i32* %arrayidx3, align 4, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %18 = add nuw i32 %__index.addr.011, 1
  %exitcond = icmp eq i32 %18, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: uwtable
define i32* @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei(%struct.triangles* byval align 8 %Tri, %struct.ray* %rays, i32 %numRays) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %now.i.i.i.i351 = alloca %struct.timeval, align 8
  %now.i.i.i.i308 = alloca %struct.timeval, align 8
  %rays.addr.i = alloca %struct.ray*, align 8
  %R.addr.i = alloca %struct.treeNode*, align 8
  %results.addr.i = alloca i32*, align 8
  %i.i = alloca i32, align 4
  %agg.captured.i = alloca %struct.anon.5, align 8
  %agg.tmp85289 = alloca %struct.triangles, align 8
  %now.i.i.i.i229 = alloca %struct.timeval, align 8
  %now.i.i.i.i = alloca %struct.timeval, align 8
  %__dnew.i.i.i.i = alloca i64, align 8
  %now.i.i = alloca %struct.timeval, align 8
  %boxes = alloca [3 x %struct.range*], align 16
  %P = alloca %class._point3d*, align 8
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon.6, align 8
  %events = alloca [3 x %struct.event*], align 16
  %boundingBox = alloca [3 x %struct.range], align 16
  %d4 = alloca i32, align 4
  %i15 = alloca i32, align 4
  %agg.captured22 = alloca %struct.anon.7, align 8
  %agg.tmp42 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp55 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp86 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp95 = alloca %"class.std::__cxx11::basic_string", align 8
  %indx = alloca i32*, align 8
  %i109 = alloca i32, align 4
  %agg.captured116 = alloca %struct.anon.8, align 8
  store i8 1, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !140
  %0 = bitcast %struct.timeval* %now.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #2
  %call.i.i = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i, i64 0, i32 0
  %1 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !143
  %conv.i.i = sitofp i64 %1 to double
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i, i64 0, i32 1
  %2 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !145
  %conv2.i.i = sitofp i64 %2 to double
  %div.i.i = fdiv double %conv2.i.i, 1.000000e+06
  %add.i.i = fadd double %div.i.i, %conv.i.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #2
  store double %add.i.i, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  %3 = bitcast [3 x %struct.range*]* %boxes to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #2
  %numTriangles = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 1
  %4 = load i32, i32* %numTriangles, align 4, !tbaa !147
  %conv = sext i32 %4 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #2
  %arrayidx = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %boxes, i64 0, i64 0
  %5 = bitcast [3 x %struct.range*]* %boxes to i8**
  store i8* %call, i8** %5, align 16, !tbaa !24
  %call.1 = tail call noalias i8* @malloc(i64 %mul) #2
  %arrayidx.1 = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %boxes, i64 0, i64 1
  %6 = bitcast %struct.range** %arrayidx.1 to i8**
  store i8* %call.1, i8** %6, align 8, !tbaa !24
  %call.2 = tail call noalias i8* @malloc(i64 %mul) #2
  %arrayidx.2 = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %boxes, i64 0, i64 2
  %7 = bitcast %struct.range** %arrayidx.2 to i8**
  store i8* %call.2, i8** %7, align 16, !tbaa !24
  %8 = bitcast %class._point3d** %P to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #2
  %P1 = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 2
  %9 = bitcast %class._point3d** %P1 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !128
  %11 = bitcast %class._point3d** %P to i64*
  store i64 %10, i64* %11, align 8, !tbaa !24
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured, i64 0, i32 0
  store i32* %i, i32** %13, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured, i64 0, i32 1
  store %class._point3d** %P, %class._point3d*** %14, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured, i64 0, i32 2
  store %struct.triangles* %Tri, %struct.triangles** %15, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured, i64 0, i32 3
  store [3 x %struct.range*]* %boxes, [3 x %struct.range*]** %16, align 8, !tbaa !24
  %17 = bitcast %struct.anon.6* %agg.captured to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.6*, i32, i32)* @__cilk_for_helper.9 to void (i8*, i32, i32)*), i8* nonnull %17, i32 %4, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #2
  %18 = bitcast [3 x %struct.event*]* %events to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #2
  %19 = bitcast [3 x %struct.range]* %boundingBox to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #2
  %20 = bitcast i32* %d4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #2
  store i32 0, i32* %d4, align 4, !tbaa !26
  %mul9 = shl nsw i32 %4, 1
  %conv10 = sext i32 %mul9 to i64
  %mul11 = shl nsw i64 %conv10, 3
  %21 = bitcast i32* %i15 to i8*
  %22 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %agg.captured22, i64 0, i32 0
  %23 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %agg.captured22, i64 0, i32 1
  %24 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %agg.captured22, i64 0, i32 2
  %25 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %agg.captured22, i64 0, i32 3
  %26 = bitcast %struct.anon.7* %agg.captured22 to i8*
  %sub33 = add nsw i32 %mul9, -1
  %idxprom34 = sext i32 %sub33 to i64
  br label %for.body8

for.cond.cleanup7:                                ; preds = %if.end23
  %array.begin = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #2
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp42, i64 0, i32 2
  %28 = bitcast %"class.std::__cxx11::basic_string"* %agg.tmp42 to %union.anon**
  store %union.anon* %27, %union.anon** %28, align 8, !tbaa !148
  %29 = bitcast %union.anon* %27 to i8*
  %30 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #2
  store i64 24, i64* %__dnew.i.i.i.i, align 8, !tbaa !120
  %call5.i.i.i9.i204 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %agg.tmp42, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %lpad

call5.i.i.i9.i.noexc:                             ; preds = %for.cond.cleanup7
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp42, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i204, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !150
  %31 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !120
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp42, i64 0, i32 2, i32 0
  store i64 %31, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !60
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call5.i.i.i9.i204, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 24, i32 1, i1 false) #2
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp42, i64 0, i32 1
  store i64 %31, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !152
  %32 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !150
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %32, i64 %31
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #2
  %33 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !150
  %34 = load i64, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !152
  %call2.i.i208 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* %33, i64 %34)
          to label %call2.i.i.noexc unwind label %lpad44

for.body8:                                        ; preds = %if.end, %if.end23
  %storemerge420 = phi i32 [ 0, %if.end ], [ %inc40, %if.end23 ]
  %call12 = call noalias i8* @malloc(i64 %mul11) #2
  %idxprom13 = sext i32 %storemerge420 to i64
  %arrayidx14 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %events, i64 0, i64 %idxprom13
  %35 = bitcast %struct.event** %arrayidx14 to i8**
  store i8* %call12, i8** %35, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #2
  store i32 0, i32* %i15, align 4, !tbaa !26
  %36 = bitcast i8* %call12 to %struct.event*
  br i1 %cmp2, label %if.then17, label %if.end23

if.then17:                                        ; preds = %for.body8
  store i32* %i15, i32** %22, align 8, !tbaa !24
  store [3 x %struct.event*]* %events, [3 x %struct.event*]** %23, align 8, !tbaa !24
  store i32* %d4, i32** %24, align 8, !tbaa !24
  store [3 x %struct.range*]* %boxes, [3 x %struct.range*]** %25, align 8, !tbaa !24
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.7*, i32, i32)* @__cilk_for_helper.10 to void (i8*, i32, i32)*), i8* nonnull %26, i32 %4, i32 0)
  %.pre = load i32, i32* %d4, align 4, !tbaa !26
  %idxprom24.phi.trans.insert = sext i32 %.pre to i64
  %arrayidx25.phi.trans.insert = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %events, i64 0, i64 %idxprom24.phi.trans.insert
  %.pre426 = load %struct.event*, %struct.event** %arrayidx25.phi.trans.insert, align 8, !tbaa !24
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %for.body8
  %37 = phi %struct.event* [ %.pre426, %if.then17 ], [ %36, %for.body8 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #2
  call void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %37, i32 %mul9)
  %38 = load i32, i32* %d4, align 4, !tbaa !26
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %events, i64 0, i64 %idxprom27
  %39 = load %struct.event*, %struct.event** %arrayidx28, align 8, !tbaa !24
  %40 = bitcast %struct.event* %39 to i32*
  %41 = load i32, i32* %40, align 4, !tbaa !23
  %v36 = getelementptr inbounds %struct.event, %struct.event* %39, i64 %idxprom34, i32 0
  %42 = bitcast float* %v36 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !23
  %arrayidx38 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 %idxprom27
  %.sroa_cast = bitcast %struct.range* %arrayidx38 to i32*
  store i32 %41, i32* %.sroa_cast, align 8
  %.sroa_idx = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 %idxprom27, i32 1
  %.sroa_cast415 = bitcast float* %.sroa_idx to i32*
  store i32 %43, i32* %.sroa_cast415, align 4
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, i32* %d4, align 4, !tbaa !26
  %cmp6 = icmp slt i32 %38, 2
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

call2.i.i.noexc:                                  ; preds = %call5.i.i.i9.i.noexc
  %call1.i.i209 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call2.i.i208, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 3)
          to label %call1.i.i.noexc unwind label %lpad44

call1.i.i.noexc:                                  ; preds = %call2.i.i.noexc
  %44 = load i8, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !140, !range !153
  %tobool.i.i.i205 = icmp eq i8 %44, 0
  br i1 %tobool.i.i.i205, label %_ZN5timer10reportNextEv.exit.i, label %if.end.i.i.i206

if.end.i.i.i206:                                  ; preds = %call1.i.i.noexc
  %45 = bitcast %struct.timeval* %now.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #2
  %call.i.i.i.i = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i.i.i, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i, i64 0, i32 0
  %46 = load i64, i64* %tv_sec.i.i.i.i, align 8, !tbaa !143
  %conv.i.i.i.i = sitofp i64 %46 to double
  %tv_usec.i.i.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i, i64 0, i32 1
  %47 = load i64, i64* %tv_usec.i.i.i.i, align 8, !tbaa !145
  %conv2.i.i.i.i = sitofp i64 %47 to double
  %div.i.i.i.i = fdiv double %conv2.i.i.i.i, 1.000000e+06
  %add.i.i.i.i = fadd double %div.i.i.i.i, %conv.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #2
  %48 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  %sub.i.i.i = fsub double %add.i.i.i.i, %48
  %49 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  %add.i.i.i = fadd double %49, %sub.i.i.i
  store double %add.i.i.i, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  store double %add.i.i.i.i, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  br label %_ZN5timer10reportNextEv.exit.i

_ZN5timer10reportNextEv.exit.i:                   ; preds = %if.end.i.i.i206, %call1.i.i.noexc
  %retval.0.i.i.i207 = phi double [ %sub.i.i.i, %if.end.i.i.i206 ], [ 0.000000e+00, %call1.i.i.noexc ]
  invoke void @_ZN5timer7reportTEd(%struct.timer* nonnull @_ZL3_tm, double %retval.0.i.i.i207)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %_ZN5timer10reportNextEv.exit.i
  %50 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !150
  %cmp.i.i.i = icmp eq i8* %50, %29
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont45
  call void @_ZdlPv(i8* %50) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %invoke.cont45, %if.then.i.i
  %cmp6.i = icmp sgt i32 %4, 1
  br i1 %cmp6.i, label %while.body.lr.ph.i, label %_ZN5utilsL6log2UpIiEEiT_.exit

while.body.lr.ph.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %sub.i = add nsw i32 %4, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %b.08.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %shr5.i, %while.body.i ]
  %a.07.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %while.body.i ]
  %shr5.i = lshr i32 %b.08.i, 1
  %inc.i = add nuw nsw i32 %a.07.i, 1
  %cmp.i = icmp eq i32 %shr5.i, 0
  br i1 %cmp.i, label %_ZN5utilsL6log2UpIiEEiT_.exit, label %while.body.i

_ZN5utilsL6log2UpIiEEiT_.exit:                    ; preds = %while.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %a.0.lcssa.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %inc.i, %while.body.i ]
  %sub49 = add nsw i32 %a.0.lcssa.i, -1
  %51 = load i32, i32* @maxRecursionDepth, align 4, !tbaa !26
  %cmp.i211 = icmp slt i32 %sub49, %51
  %.sroa.speculated = select i1 %cmp.i211, i32 %sub49, i32 %51
  %arraydecay51 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %events, i64 0, i64 0
  %call54 = call %struct.treeNode* @_Z12generateNodePP5rangePP5eventS0_ii(%struct.range** nonnull %arrayidx, %struct.event** nonnull %arraydecay51, %struct.range* nonnull %array.begin, i32 %mul9, i32 %.sroa.speculated)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp55, i64 0, i32 2
  %53 = bitcast %"class.std::__cxx11::basic_string"* %agg.tmp55 to %union.anon**
  store %union.anon* %52, %union.anon** %53, align 8, !tbaa !148
  %54 = bitcast %union.anon* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %54, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 10, i32 1, i1 false) #2
  %_M_string_length.i.i.i.i.i.i224 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp55, i64 0, i32 1
  store i64 10, i64* %_M_string_length.i.i.i.i.i.i224, align 8, !tbaa !152
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp55, i64 0, i32 2, i32 1, i64 2
  store i8 0, i8* %55, align 2, !tbaa !60
  %_M_p.i.i.i.i230 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp55, i64 0, i32 0, i32 0
  %call2.i.i246 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull %54, i64 10)
          to label %call2.i.i.noexc245 unwind label %lpad59

call2.i.i.noexc245:                               ; preds = %_ZN5utilsL6log2UpIiEEiT_.exit
  %call1.i.i248 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call2.i.i246, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 3)
          to label %call1.i.i.noexc247 unwind label %lpad59

call1.i.i.noexc247:                               ; preds = %call2.i.i.noexc245
  %56 = load i8, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !140, !range !153
  %tobool.i.i.i232 = icmp eq i8 %56, 0
  br i1 %tobool.i.i.i232, label %_ZN5timer10reportNextEv.exit.i244, label %if.end.i.i.i242

if.end.i.i.i242:                                  ; preds = %call1.i.i.noexc247
  %57 = bitcast %struct.timeval* %now.i.i.i.i229 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %57) #2
  %call.i.i.i.i233 = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i.i.i229, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i.i.i234 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i229, i64 0, i32 0
  %58 = load i64, i64* %tv_sec.i.i.i.i234, align 8, !tbaa !143
  %conv.i.i.i.i235 = sitofp i64 %58 to double
  %tv_usec.i.i.i.i236 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i229, i64 0, i32 1
  %59 = load i64, i64* %tv_usec.i.i.i.i236, align 8, !tbaa !145
  %conv2.i.i.i.i237 = sitofp i64 %59 to double
  %div.i.i.i.i238 = fdiv double %conv2.i.i.i.i237, 1.000000e+06
  %add.i.i.i.i239 = fadd double %div.i.i.i.i238, %conv.i.i.i.i235
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %57) #2
  %60 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  %sub.i.i.i240 = fsub double %add.i.i.i.i239, %60
  %61 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  %add.i.i.i241 = fadd double %61, %sub.i.i.i240
  store double %add.i.i.i241, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  store double %add.i.i.i.i239, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  br label %_ZN5timer10reportNextEv.exit.i244

_ZN5timer10reportNextEv.exit.i244:                ; preds = %if.end.i.i.i242, %call1.i.i.noexc247
  %retval.0.i.i.i243 = phi double [ %sub.i.i.i240, %if.end.i.i.i242 ], [ 0.000000e+00, %call1.i.i.noexc247 ]
  invoke void @_ZN5timer7reportTEd(%struct.timer* nonnull @_ZL3_tm, double %retval.0.i.i.i243)
          to label %invoke.cont60 unwind label %lpad59

invoke.cont60:                                    ; preds = %_ZN5timer10reportNextEv.exit.i244
  %62 = load i8*, i8** %_M_p.i.i.i.i230, align 8, !tbaa !150
  %cmp.i.i.i252 = icmp eq i8* %62, %54
  br i1 %cmp.i.i.i252, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %if.then.i.i253

if.then.i.i253:                                   ; preds = %invoke.cont60
  call void @_ZdlPv(i8* %62) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %invoke.cont60, %if.then.i.i253
  %63 = load i32, i32* @STATS, align 4, !tbaa !26
  %tobool = icmp eq i32 %63, 0
  br i1 %tobool, label %if.end71, label %if.then64

if.then64:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %call1.i256 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i64 30)
  %n66 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %call54, i64 0, i32 6
  %64 = load i32, i32* %n66, align 8, !tbaa !96
  %call67 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i32 %64)
  %call1.i258 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call67, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 10)
  %leaves = getelementptr inbounds %struct.treeNode, %struct.treeNode* %call54, i64 0, i32 7
  %65 = load i32, i32* %leaves, align 4, !tbaa !97
  %call69 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull %call67, i32 %65)
  %66 = bitcast %"class.std::basic_ostream"* %call69 to i8**
  %vtable.i259 = load i8*, i8** %66, align 8, !tbaa !84
  %vbase.offset.ptr.i260 = getelementptr i8, i8* %vtable.i259, i64 -24
  %67 = bitcast i8* %vbase.offset.ptr.i260 to i64*
  %vbase.offset.i261 = load i64, i64* %67, align 8
  %68 = bitcast %"class.std::basic_ostream"* %call69 to i8*
  %add.ptr.i262 = getelementptr inbounds i8, i8* %68, i64 %vbase.offset.i261
  %_M_ctype.i.i263 = getelementptr inbounds i8, i8* %add.ptr.i262, i64 240
  %69 = bitcast i8* %_M_ctype.i.i263 to %"class.std::ctype"**
  %70 = load %"class.std::ctype"*, %"class.std::ctype"** %69, align 8, !tbaa !86
  %tobool.i.i.i264 = icmp eq %"class.std::ctype"* %70, null
  br i1 %tobool.i.i.i264, label %if.then.i.i.i265, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i268

if.then.i.i.i265:                                 ; preds = %if.then64
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i268: ; preds = %if.then64
  %_M_widen_ok.i.i.i266 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %70, i64 0, i32 8
  %71 = load i8, i8* %_M_widen_ok.i.i.i266, align 8, !tbaa !88
  %tobool.i3.i.i267 = icmp eq i8 %71, 0
  br i1 %tobool.i3.i.i267, label %if.end.i.i.i274, label %if.then.i4.i.i270

if.then.i4.i.i270:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i268
  %arrayidx.i.i.i269 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %70, i64 0, i32 9, i64 10
  %72 = load i8, i8* %arrayidx.i.i.i269, align 1, !tbaa !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit278

if.end.i.i.i274:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i268
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %70)
  %73 = bitcast %"class.std::ctype"* %70 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i271 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %73, align 8, !tbaa !84
  %vfn.i.i.i272 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i271, i64 6
  %74 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i272, align 8
  %call.i.i.i273 = call signext i8 %74(%"class.std::ctype"* nonnull %70, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit278

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit278: ; preds = %if.then.i4.i.i270, %if.end.i.i.i274
  %retval.0.i.i.i275 = phi i8 [ %72, %if.then.i4.i.i270 ], [ %call.i.i.i273, %if.end.i.i.i274 ]
  %call1.i276 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call69, i8 signext %retval.0.i.i.i275)
  %call.i.i277 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i276)
  br label %if.end71

lpad:                                             ; preds = %for.cond.cleanup7
  %75 = landingpad { i8*, i32 }
          cleanup
  %76 = extractvalue { i8*, i32 } %75, 0
  %77 = extractvalue { i8*, i32 } %75, 1
  br label %ehcleanup155

lpad44:                                           ; preds = %_ZN5timer10reportNextEv.exit.i, %call2.i.i.noexc, %call5.i.i.i9.i.noexc
  %78 = landingpad { i8*, i32 }
          cleanup
  %79 = extractvalue { i8*, i32 } %78, 0
  %80 = extractvalue { i8*, i32 } %78, 1
  %81 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !150
  %cmp.i.i.i281 = icmp eq i8* %81, %29
  br i1 %cmp.i.i.i281, label %ehcleanup155, label %if.then.i.i282

if.then.i.i282:                                   ; preds = %lpad44
  call void @_ZdlPv(i8* %81) #2
  br label %ehcleanup155

lpad59:                                           ; preds = %_ZN5timer10reportNextEv.exit.i244, %call2.i.i.noexc245, %_ZN5utilsL6log2UpIiEEiT_.exit
  %82 = landingpad { i8*, i32 }
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  %84 = extractvalue { i8*, i32 } %82, 1
  %85 = load i8*, i8** %_M_p.i.i.i.i230, align 8, !tbaa !150
  %cmp.i.i.i286 = icmp eq i8* %85, %54
  br i1 %cmp.i.i.i286, label %ehcleanup155, label %if.then.i.i287

if.then.i.i287:                                   ; preds = %lpad59
  call void @_ZdlPv(i8* %85) #2
  br label %ehcleanup155

if.end71:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit278
  %86 = load i8*, i8** %5, align 16, !tbaa !24
  call void @free(i8* %86) #2
  %87 = load i8*, i8** %6, align 8, !tbaa !24
  call void @free(i8* %87) #2
  %88 = load i8*, i8** %7, align 16, !tbaa !24
  call void @free(i8* %88) #2
  %conv82 = sext i32 %numRays to i64
  %mul83 = shl nsw i64 %conv82, 2
  %call84 = call noalias i8* @malloc(i64 %mul83) #2
  %89 = bitcast i8* %call84 to i32*
  %90 = bitcast %struct.triangles* %Tri to i8*
  %91 = bitcast %struct.triangles* %agg.tmp85289 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %91)
  %92 = bitcast %struct.ray** %rays.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92)
  %93 = bitcast %struct.treeNode** %R.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %93)
  %94 = bitcast i32** %results.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94)
  %95 = bitcast %struct.anon.5* %agg.captured.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %95)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %91, i8* nonnull %90, i64 24, i32 8, i1 false)
  store %struct.ray* %rays, %struct.ray** %rays.addr.i, align 8, !tbaa !24
  store %struct.treeNode* %call54, %struct.treeNode** %R.addr.i, align 8, !tbaa !24
  %96 = bitcast i32** %results.addr.i to i8**
  store i8* %call84, i8** %96, align 8, !tbaa !24
  %97 = bitcast i32* %i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97) #2
  store i32 0, i32* %i.i, align 4, !tbaa !26
  %cmp.i290 = icmp sgt i32 %numRays, 0
  br i1 %cmp.i290, label %if.then.i, label %_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit

if.then.i:                                        ; preds = %if.end71
  %98 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured.i, i64 0, i32 0
  store i32* %i.i, i32** %98, align 8, !tbaa !24
  %99 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured.i, i64 0, i32 1
  store i32** %results.addr.i, i32*** %99, align 8, !tbaa !24
  %100 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured.i, i64 0, i32 2
  store %struct.ray** %rays.addr.i, %struct.ray*** %100, align 8, !tbaa !24
  %101 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured.i, i64 0, i32 3
  store %struct.treeNode** %R.addr.i, %struct.treeNode*** %101, align 8, !tbaa !24
  %102 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %agg.captured.i, i64 0, i32 4
  store %struct.triangles* %agg.tmp85289, %struct.triangles** %102, align 8, !tbaa !24
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.5*, i32, i32)* @__cilk_for_helper.8 to void (i8*, i32, i32)*), i8* nonnull %95, i32 %numRays, i32 0)
  br label %_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit

_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit: ; preds = %if.end71, %if.then.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %91)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %93)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %95)
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp86, i64 0, i32 2
  %104 = bitcast %"class.std::__cxx11::basic_string"* %agg.tmp86 to %union.anon**
  store %union.anon* %103, %union.anon** %104, align 8, !tbaa !148
  %105 = bitcast %union.anon* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %105, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i64 14, i32 1, i1 false) #2
  %_M_string_length.i.i.i.i.i.i303 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp86, i64 0, i32 1
  store i64 14, i64* %_M_string_length.i.i.i.i.i.i303, align 8, !tbaa !152
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp86, i64 0, i32 2, i32 1, i64 6
  store i8 0, i8* %106, align 2, !tbaa !60
  %_M_p.i.i.i.i309 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp86, i64 0, i32 0, i32 0
  %call2.i.i325 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull %105, i64 14)
          to label %call2.i.i.noexc324 unwind label %lpad90

call2.i.i.noexc324:                               ; preds = %_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit
  %call1.i.i327 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call2.i.i325, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 3)
          to label %call1.i.i.noexc326 unwind label %lpad90

call1.i.i.noexc326:                               ; preds = %call2.i.i.noexc324
  %107 = load i8, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !140, !range !153
  %tobool.i.i.i311 = icmp eq i8 %107, 0
  br i1 %tobool.i.i.i311, label %_ZN5timer10reportNextEv.exit.i323, label %if.end.i.i.i321

if.end.i.i.i321:                                  ; preds = %call1.i.i.noexc326
  %108 = bitcast %struct.timeval* %now.i.i.i.i308 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %108) #2
  %call.i.i.i.i312 = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i.i.i308, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i.i.i313 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i308, i64 0, i32 0
  %109 = load i64, i64* %tv_sec.i.i.i.i313, align 8, !tbaa !143
  %conv.i.i.i.i314 = sitofp i64 %109 to double
  %tv_usec.i.i.i.i315 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i308, i64 0, i32 1
  %110 = load i64, i64* %tv_usec.i.i.i.i315, align 8, !tbaa !145
  %conv2.i.i.i.i316 = sitofp i64 %110 to double
  %div.i.i.i.i317 = fdiv double %conv2.i.i.i.i316, 1.000000e+06
  %add.i.i.i.i318 = fadd double %div.i.i.i.i317, %conv.i.i.i.i314
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %108) #2
  %111 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  %sub.i.i.i319 = fsub double %add.i.i.i.i318, %111
  %112 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  %add.i.i.i320 = fadd double %112, %sub.i.i.i319
  store double %add.i.i.i320, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  store double %add.i.i.i.i318, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  br label %_ZN5timer10reportNextEv.exit.i323

_ZN5timer10reportNextEv.exit.i323:                ; preds = %if.end.i.i.i321, %call1.i.i.noexc326
  %retval.0.i.i.i322 = phi double [ %sub.i.i.i319, %if.end.i.i.i321 ], [ 0.000000e+00, %call1.i.i.noexc326 ]
  invoke void @_ZN5timer7reportTEd(%struct.timer* nonnull @_ZL3_tm, double %retval.0.i.i.i322)
          to label %invoke.cont91 unwind label %lpad90

invoke.cont91:                                    ; preds = %_ZN5timer10reportNextEv.exit.i323
  %113 = load i8*, i8** %_M_p.i.i.i.i309, align 8, !tbaa !150
  %cmp.i.i.i331 = icmp eq i8* %113, %105
  br i1 %cmp.i.i.i331, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %if.then.i.i332

if.then.i.i332:                                   ; preds = %invoke.cont91
  call void @_ZdlPv(i8* %113) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %invoke.cont91, %if.then.i.i332
  call void @_ZN8treeNode3delEPS_(%struct.treeNode* nonnull %call54)
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp95, i64 0, i32 2
  %115 = bitcast %"class.std::__cxx11::basic_string"* %agg.tmp95 to %union.anon**
  store %union.anon* %114, %union.anon** %115, align 8, !tbaa !148
  %116 = bitcast %union.anon* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %116, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i64 11, i32 1, i1 false) #2
  %_M_string_length.i.i.i.i.i.i346 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp95, i64 0, i32 1
  store i64 11, i64* %_M_string_length.i.i.i.i.i.i346, align 8, !tbaa !152
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp95, i64 0, i32 2, i32 1, i64 3
  store i8 0, i8* %117, align 1, !tbaa !60
  %_M_p.i.i.i.i352 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp95, i64 0, i32 0, i32 0
  %call2.i.i368 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull %116, i64 11)
          to label %call2.i.i.noexc367 unwind label %lpad99

call2.i.i.noexc367:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %call1.i.i370 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call2.i.i368, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 3)
          to label %call1.i.i.noexc369 unwind label %lpad99

call1.i.i.noexc369:                               ; preds = %call2.i.i.noexc367
  %118 = load i8, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !140, !range !153
  %tobool.i.i.i354 = icmp eq i8 %118, 0
  br i1 %tobool.i.i.i354, label %_ZN5timer10reportNextEv.exit.i366, label %if.end.i.i.i364

if.end.i.i.i364:                                  ; preds = %call1.i.i.noexc369
  %119 = bitcast %struct.timeval* %now.i.i.i.i351 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %119) #2
  %call.i.i.i.i355 = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i.i.i351, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i.i.i356 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i351, i64 0, i32 0
  %120 = load i64, i64* %tv_sec.i.i.i.i356, align 8, !tbaa !143
  %conv.i.i.i.i357 = sitofp i64 %120 to double
  %tv_usec.i.i.i.i358 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i351, i64 0, i32 1
  %121 = load i64, i64* %tv_usec.i.i.i.i358, align 8, !tbaa !145
  %conv2.i.i.i.i359 = sitofp i64 %121 to double
  %div.i.i.i.i360 = fdiv double %conv2.i.i.i.i359, 1.000000e+06
  %add.i.i.i.i361 = fadd double %div.i.i.i.i360, %conv.i.i.i.i357
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %119) #2
  %122 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  %sub.i.i.i362 = fsub double %add.i.i.i.i361, %122
  %123 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  %add.i.i.i363 = fadd double %123, %sub.i.i.i362
  store double %add.i.i.i363, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  store double %add.i.i.i.i361, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !146
  br label %_ZN5timer10reportNextEv.exit.i366

_ZN5timer10reportNextEv.exit.i366:                ; preds = %if.end.i.i.i364, %call1.i.i.noexc369
  %retval.0.i.i.i365 = phi double [ %sub.i.i.i362, %if.end.i.i.i364 ], [ 0.000000e+00, %call1.i.i.noexc369 ]
  invoke void @_ZN5timer7reportTEd(%struct.timer* nonnull @_ZL3_tm, double %retval.0.i.i.i365)
          to label %invoke.cont100 unwind label %lpad99

invoke.cont100:                                   ; preds = %_ZN5timer10reportNextEv.exit.i366
  %124 = load i8*, i8** %_M_p.i.i.i.i352, align 8, !tbaa !150
  %cmp.i.i.i374 = icmp eq i8* %124, %116
  br i1 %cmp.i.i.i374, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %if.then.i.i375

if.then.i.i375:                                   ; preds = %invoke.cont100
  call void @_ZdlPv(i8* %124) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %invoke.cont100, %if.then.i.i375
  %125 = load i32, i32* @CHECK, align 4, !tbaa !26
  %tobool104 = icmp eq i32 %125, 0
  br i1 %tobool104, label %if.end143, label %if.then105

if.then105:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %126 = bitcast i32** %indx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %126) #2
  %mul107 = shl nsw i64 %conv, 2
  %call108 = call noalias i8* @malloc(i64 %mul107) #2
  %127 = bitcast i32** %indx to i8**
  store i8* %call108, i8** %127, align 8, !tbaa !24
  %128 = bitcast i32* %i109 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %128) #2
  store i32 0, i32* %i109, align 4, !tbaa !26
  br i1 %cmp2, label %if.then111, label %if.end117

if.then111:                                       ; preds = %if.then105
  %129 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %agg.captured116, i64 0, i32 0
  store i32* %i109, i32** %129, align 8, !tbaa !24
  %130 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %agg.captured116, i64 0, i32 1
  store i32** %indx, i32*** %130, align 8, !tbaa !24
  %131 = bitcast %struct.anon.8* %agg.captured116 to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.8*, i32, i32)* @__cilk_for_helper.17 to void (i8*, i32, i32)*), i8* nonnull %131, i32 %4, i32 0)
  br label %if.end117

lpad90:                                           ; preds = %_ZN5timer10reportNextEv.exit.i323, %call2.i.i.noexc324, %_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit
  %132 = landingpad { i8*, i32 }
          cleanup
  %133 = extractvalue { i8*, i32 } %132, 0
  %134 = extractvalue { i8*, i32 } %132, 1
  %135 = load i8*, i8** %_M_p.i.i.i.i309, align 8, !tbaa !150
  %cmp.i.i.i379 = icmp eq i8* %135, %105
  br i1 %cmp.i.i.i379, label %ehcleanup155, label %if.then.i.i380

if.then.i.i380:                                   ; preds = %lpad90
  call void @_ZdlPv(i8* %135) #2
  br label %ehcleanup155

lpad99:                                           ; preds = %_ZN5timer10reportNextEv.exit.i366, %call2.i.i.noexc367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %136 = landingpad { i8*, i32 }
          cleanup
  %137 = extractvalue { i8*, i32 } %136, 0
  %138 = extractvalue { i8*, i32 } %136, 1
  %139 = load i8*, i8** %_M_p.i.i.i.i352, align 8, !tbaa !150
  %cmp.i.i.i384 = icmp eq i8* %139, %116
  br i1 %cmp.i.i.i384, label %ehcleanup155, label %if.then.i.i385

if.then.i.i385:                                   ; preds = %lpad99
  call void @_ZdlPv(i8* %139) #2
  br label %ehcleanup155

if.end117:                                        ; preds = %if.then111, %if.then105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %128) #2
  br label %for.body122

for.cond119:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit406
  %cmp120 = icmp ult i64 %indvars.iv.next, 10
  br i1 %cmp120, label %for.body122, label %for.cond.cleanup121

for.cond.cleanup121:                              ; preds = %for.cond119
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %126) #2
  br label %if.end143

for.body122:                                      ; preds = %if.end117, %for.cond119
  %indvars.iv = phi i64 [ 0, %if.end117 ], [ %indvars.iv.next, %for.cond119 ]
  %arrayidx124 = getelementptr inbounds i32, i32* %89, i64 %indvars.iv
  %140 = load i32, i32* %arrayidx124, align 4, !tbaa !26
  %call125 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i32 %140)
  %141 = bitcast %"class.std::basic_ostream"* %call125 to i8**
  %vtable.i387 = load i8*, i8** %141, align 8, !tbaa !84
  %vbase.offset.ptr.i388 = getelementptr i8, i8* %vtable.i387, i64 -24
  %142 = bitcast i8* %vbase.offset.ptr.i388 to i64*
  %vbase.offset.i389 = load i64, i64* %142, align 8
  %143 = bitcast %"class.std::basic_ostream"* %call125 to i8*
  %add.ptr.i390 = getelementptr inbounds i8, i8* %143, i64 %vbase.offset.i389
  %_M_ctype.i.i391 = getelementptr inbounds i8, i8* %add.ptr.i390, i64 240
  %144 = bitcast i8* %_M_ctype.i.i391 to %"class.std::ctype"**
  %145 = load %"class.std::ctype"*, %"class.std::ctype"** %144, align 8, !tbaa !86
  %tobool.i.i.i392 = icmp eq %"class.std::ctype"* %145, null
  br i1 %tobool.i.i.i392, label %if.then.i.i.i393, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i396

if.then.i.i.i393:                                 ; preds = %for.body122
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i396: ; preds = %for.body122
  %_M_widen_ok.i.i.i394 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %145, i64 0, i32 8
  %146 = load i8, i8* %_M_widen_ok.i.i.i394, align 8, !tbaa !88
  %tobool.i3.i.i395 = icmp eq i8 %146, 0
  br i1 %tobool.i3.i.i395, label %if.end.i.i.i402, label %if.then.i4.i.i398

if.then.i4.i.i398:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i396
  %arrayidx.i.i.i397 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %145, i64 0, i32 9, i64 10
  %147 = load i8, i8* %arrayidx.i.i.i397, align 1, !tbaa !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit406

if.end.i.i.i402:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i396
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %145)
  %148 = bitcast %"class.std::ctype"* %145 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i399 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %148, align 8, !tbaa !84
  %vfn.i.i.i400 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i399, i64 6
  %149 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i400, align 8
  %call.i.i.i401 = call signext i8 %149(%"class.std::ctype"* nonnull %145, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit406

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit406: ; preds = %if.then.i4.i.i398, %if.end.i.i.i402
  %retval.0.i.i.i403 = phi i8 [ %147, %if.then.i4.i.i398 ], [ %call.i.i.i401, %if.end.i.i.i402 ]
  %call1.i404 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call125, i8 signext %retval.0.i.i.i403)
  %call.i.i405 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i404)
  %arrayidx129 = getelementptr inbounds %struct.ray, %struct.ray* %rays, i64 %indvars.iv
  %150 = load i32*, i32** %indx, align 8, !tbaa !24
  %call132 = call i32 @_Z7findRay3rayI8_point3dIdEEPii9trianglesIS1_EP5range(%struct.ray* byval nonnull align 8 %arrayidx129, i32* %150, i32 %4, %struct.triangles* byval nonnull align 8 %Tri, %struct.range* nonnull %array.begin)
  %151 = load i32, i32* %arrayidx124, align 4, !tbaa !26
  %cmp135 = icmp eq i32 %call132, %151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp135, label %for.cond119, label %if.then136

if.then136:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit406
  %call137 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %call.i = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call137)
  call void @abort() #22
  unreachable

if.end143:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, %for.cond.cleanup121
  %152 = load i32, i32* @STATS, align 4, !tbaa !26
  %tobool144 = icmp eq i32 %152, 0
  br i1 %tobool144, label %if.end151, label %if.then145

if.then145:                                       ; preds = %if.end143
  %call1.i408 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i64 7)
  %153 = load i32, i32* @tcount, align 4, !tbaa !26
  %call147 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i32 %153)
  %call1.i410 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call147, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i64 8)
  %154 = load i32, i32* @ccount, align 4, !tbaa !26
  %call149 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull %call147, i32 %154)
  %155 = bitcast %"class.std::basic_ostream"* %call149 to i8**
  %vtable.i = load i8*, i8** %155, align 8, !tbaa !84
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %156 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %156, align 8
  %157 = bitcast %"class.std::basic_ostream"* %call149 to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %157, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 240
  %158 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %159 = load %"class.std::ctype"*, %"class.std::ctype"** %158, align 8, !tbaa !86
  %tobool.i.i.i = icmp eq %"class.std::ctype"* %159, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then145
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then145
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %159, i64 0, i32 8
  %160 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !88
  %tobool.i3.i.i = icmp eq i8 %160, 0
  br i1 %tobool.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %159, i64 0, i32 9, i64 10
  %161 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %159)
  %162 = bitcast %"class.std::ctype"* %159 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %162, align 8, !tbaa !84
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6
  %163 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i.i.i = call signext i8 %163(%"class.std::ctype"* nonnull %159, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i4.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %161, %if.then.i4.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call149, i8 signext %retval.0.i.i.i)
  %call.i.i202 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i)
  br label %if.end151

if.end151:                                        ; preds = %if.end143, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #2
  ret i32* %89

ehcleanup155:                                     ; preds = %lpad99, %if.then.i.i385, %lpad90, %if.then.i.i380, %lpad59, %if.then.i.i287, %lpad, %lpad44, %if.then.i.i282
  %ehselector.slot.6 = phi i32 [ %77, %lpad ], [ %80, %lpad44 ], [ %80, %if.then.i.i282 ], [ %84, %lpad59 ], [ %84, %if.then.i.i287 ], [ %134, %lpad90 ], [ %134, %if.then.i.i380 ], [ %138, %lpad99 ], [ %138, %if.then.i.i385 ]
  %exn.slot.6 = phi i8* [ %76, %lpad ], [ %79, %lpad44 ], [ %79, %if.then.i.i282 ], [ %83, %lpad59 ], [ %83, %if.then.i.i287 ], [ %133, %lpad90 ], [ %133, %if.then.i.i380 ], [ %137, %lpad99 ], [ %137, %if.then.i.i385 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #2
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.6, 0
  %lpad.val160 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.6, 1
  resume { i8*, i32 } %lpad.val160
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.9(%struct.anon.6* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !155
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %__context, i64 0, i32 2
  %6 = load float, float* @epsilon, align 4
  %7 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %__context, i64 0, i32 3
  %8 = sext i32 %add to i64
  br label %loop.body

loop.cond.cleanup:                                ; preds = %loop.body, %entry
  ret void

loop.body:                                        ; preds = %loop.body, %loop.body.lr.ph
  %indvars.iv = phi i64 [ %8, %loop.body.lr.ph ], [ %indvars.iv.next, %loop.body ]
  %__index.addr.0187 = phi i32 [ %__low, %loop.body.lr.ph ], [ %28, %loop.body ]
  %9 = load %class._point3d**, %class._point3d*** %4, align 8, !tbaa !157
  %10 = load %class._point3d*, %class._point3d** %9, align 8, !tbaa !24
  %11 = load %struct.triangles*, %struct.triangles** %5, align 8, !tbaa !158
  %T = getelementptr inbounds %struct.triangles, %struct.triangles* %11, i64 0, i32 3
  %12 = load %struct.triangle*, %struct.triangle** %T, align 8, !tbaa !130
  %arrayidx1 = getelementptr inbounds %struct.triangle, %struct.triangle* %12, i64 %indvars.iv, i32 0, i64 0
  %13 = load i32, i32* %arrayidx1, align 4, !tbaa !26
  %idxprom2 = sext i32 %13 to i64
  %p0.sroa.0.0..sroa_idx = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom2, i32 0
  %p0.sroa.0.0.copyload = load double, double* %p0.sroa.0.0..sroa_idx, align 8
  %p0.sroa.7.0..sroa_idx153 = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom2, i32 1
  %p0.sroa.7.0.copyload = load double, double* %p0.sroa.7.0..sroa_idx153, align 8
  %p0.sroa.11.0..sroa_idx156 = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom2, i32 2
  %p0.sroa.11.0.copyload = load double, double* %p0.sroa.11.0..sroa_idx156, align 8
  %arrayidx8 = getelementptr inbounds %struct.triangle, %struct.triangle* %12, i64 %indvars.iv, i32 0, i64 1
  %14 = load i32, i32* %arrayidx8, align 4, !tbaa !26
  %idxprom9 = sext i32 %14 to i64
  %p1.sroa.0.0..sroa_idx = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom9, i32 0
  %p1.sroa.0.0.copyload = load double, double* %p1.sroa.0.0..sroa_idx, align 8
  %p1.sroa.7.0..sroa_idx139 = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom9, i32 1
  %p1.sroa.7.0.copyload = load double, double* %p1.sroa.7.0..sroa_idx139, align 8
  %p1.sroa.11.0..sroa_idx142 = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom9, i32 2
  %p1.sroa.11.0.copyload = load double, double* %p1.sroa.11.0..sroa_idx142, align 8
  %arrayidx15 = getelementptr inbounds %struct.triangle, %struct.triangle* %12, i64 %indvars.iv, i32 0, i64 2
  %15 = load i32, i32* %arrayidx15, align 4, !tbaa !26
  %idxprom16 = sext i32 %15 to i64
  %p2.sroa.0.0..sroa_idx = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom16, i32 0
  %p2.sroa.0.0.copyload = load double, double* %p2.sroa.0.0..sroa_idx, align 8
  %p2.sroa.7.0..sroa_idx125 = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom16, i32 1
  %p2.sroa.7.0.copyload = load double, double* %p2.sroa.7.0..sroa_idx125, align 8
  %p2.sroa.11.0..sroa_idx128 = getelementptr inbounds %class._point3d, %class._point3d* %10, i64 %idxprom16, i32 2
  %p2.sroa.11.0.copyload = load double, double* %p2.sroa.11.0..sroa_idx128, align 8
  %cmp.i = fcmp olt double %p2.sroa.0.0.copyload, %p1.sroa.0.0.copyload
  %16 = select i1 %cmp.i, double %p2.sroa.0.0.copyload, double %p1.sroa.0.0.copyload
  %cmp.i121 = fcmp olt double %16, %p0.sroa.0.0.copyload
  %.sroa.speculated170 = select i1 %cmp.i121, double %16, double %p0.sroa.0.0.copyload
  %conv = fptrunc double %.sroa.speculated170 to float
  %cmp.i119 = fcmp olt double %p1.sroa.0.0.copyload, %p2.sroa.0.0.copyload
  %17 = select i1 %cmp.i119, double %p2.sroa.0.0.copyload, double %p1.sroa.0.0.copyload
  %cmp.i117 = fcmp olt double %p0.sroa.0.0.copyload, %17
  %.sroa.speculated173 = select i1 %cmp.i117, double %17, double %p0.sroa.0.0.copyload
  %conv26 = fptrunc double %.sroa.speculated173 to float
  %cmp.i107 = fcmp oeq float %conv, %conv26
  %add.i108 = fadd float %6, %conv
  %add.i108.sink = select i1 %cmp.i107, float %add.i108, float %conv26
  %retval.0.vec.insert.i109 = insertelement <2 x float> undef, float %conv, i32 0
  %retval.4.vec.insert.i110 = insertelement <2 x float> %retval.0.vec.insert.i109, float %add.i108.sink, i32 1
  %18 = load [3 x %struct.range*]*, [3 x %struct.range*]** %7, align 8, !tbaa !159
  %arrayidx28 = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %18, i64 0, i64 0
  %19 = load %struct.range*, %struct.range** %arrayidx28, align 16, !tbaa !24
  %arrayidx30 = getelementptr inbounds %struct.range, %struct.range* %19, i64 %indvars.iv
  %ref.tmp.sroa.0.0..sroa_cast67 = bitcast %struct.range* %arrayidx30 to <2 x float>*
  store <2 x float> %retval.4.vec.insert.i110, <2 x float>* %ref.tmp.sroa.0.0..sroa_cast67, align 4
  %cmp.i105 = fcmp olt double %p2.sroa.7.0.copyload, %p1.sroa.7.0.copyload
  %20 = select i1 %cmp.i105, double %p2.sroa.7.0.copyload, double %p1.sroa.7.0.copyload
  %cmp.i103 = fcmp olt double %20, %p0.sroa.7.0.copyload
  %.sroa.speculated164 = select i1 %cmp.i103, double %20, double %p0.sroa.7.0.copyload
  %conv36 = fptrunc double %.sroa.speculated164 to float
  %cmp.i101 = fcmp olt double %p1.sroa.7.0.copyload, %p2.sroa.7.0.copyload
  %21 = select i1 %cmp.i101, double %p2.sroa.7.0.copyload, double %p1.sroa.7.0.copyload
  %cmp.i99 = fcmp olt double %p0.sroa.7.0.copyload, %21
  %.sroa.speculated167 = select i1 %cmp.i99, double %21, double %p0.sroa.7.0.copyload
  %conv42 = fptrunc double %.sroa.speculated167 to float
  %cmp.i89 = fcmp oeq float %conv36, %conv42
  %add.i90 = fadd float %6, %conv36
  %add.i90.sink = select i1 %cmp.i89, float %add.i90, float %conv42
  %retval.0.vec.insert.i91 = insertelement <2 x float> undef, float %conv36, i32 0
  %retval.4.vec.insert.i92 = insertelement <2 x float> %retval.0.vec.insert.i91, float %add.i90.sink, i32 1
  %22 = load [3 x %struct.range*]*, [3 x %struct.range*]** %7, align 8, !tbaa !159
  %arrayidx44 = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %22, i64 0, i64 1
  %23 = load %struct.range*, %struct.range** %arrayidx44, align 8, !tbaa !24
  %arrayidx46 = getelementptr inbounds %struct.range, %struct.range* %23, i64 %indvars.iv
  %ref.tmp31.sroa.0.0..sroa_cast65 = bitcast %struct.range* %arrayidx46 to <2 x float>*
  store <2 x float> %retval.4.vec.insert.i92, <2 x float>* %ref.tmp31.sroa.0.0..sroa_cast65, align 4
  %cmp.i87 = fcmp olt double %p2.sroa.11.0.copyload, %p1.sroa.11.0.copyload
  %24 = select i1 %cmp.i87, double %p2.sroa.11.0.copyload, double %p1.sroa.11.0.copyload
  %cmp.i85 = fcmp olt double %24, %p0.sroa.11.0.copyload
  %.sroa.speculated = select i1 %cmp.i85, double %24, double %p0.sroa.11.0.copyload
  %conv52 = fptrunc double %.sroa.speculated to float
  %cmp.i83 = fcmp olt double %p1.sroa.11.0.copyload, %p2.sroa.11.0.copyload
  %25 = select i1 %cmp.i83, double %p2.sroa.11.0.copyload, double %p1.sroa.11.0.copyload
  %cmp.i81 = fcmp olt double %p0.sroa.11.0.copyload, %25
  %.sroa.speculated161 = select i1 %cmp.i81, double %25, double %p0.sroa.11.0.copyload
  %conv58 = fptrunc double %.sroa.speculated161 to float
  %cmp.i80 = fcmp oeq float %conv52, %conv58
  %add.i = fadd float %6, %conv52
  %add.i.sink = select i1 %cmp.i80, float %add.i, float %conv58
  %retval.0.vec.insert.i = insertelement <2 x float> undef, float %conv52, i32 0
  %retval.4.vec.insert.i = insertelement <2 x float> %retval.0.vec.insert.i, float %add.i.sink, i32 1
  %26 = load [3 x %struct.range*]*, [3 x %struct.range*]** %7, align 8, !tbaa !159
  %arrayidx60 = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %26, i64 0, i64 2
  %27 = load %struct.range*, %struct.range** %arrayidx60, align 16, !tbaa !24
  %arrayidx62 = getelementptr inbounds %struct.range, %struct.range* %27, i64 %indvars.iv
  %ref.tmp47.sroa.0.0..sroa_cast63 = bitcast %struct.range* %arrayidx62 to <2 x float>*
  store <2 x float> %retval.4.vec.insert.i, <2 x float>* %ref.tmp47.sroa.0.0..sroa_cast63, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %28 = add nuw i32 %__index.addr.0187, 1
  %exitcond = icmp eq i32 %28, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.10(%struct.anon.7* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !160
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %__context, i64 0, i32 3
  %5 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %__context, i64 0, i32 1
  %7 = sext i32 %add to i64
  br label %loop.body

loop.cond.cleanup:                                ; preds = %loop.body, %entry
  ret void

loop.body:                                        ; preds = %loop.body, %loop.body.lr.ph
  %indvars.iv = phi i64 [ %7, %loop.body.lr.ph ], [ %indvars.iv.next, %loop.body ]
  %__index.addr.042 = phi i32 [ %__low, %loop.body.lr.ph ], [ %25, %loop.body ]
  %8 = load [3 x %struct.range*]*, [3 x %struct.range*]** %4, align 8, !tbaa !162
  %9 = load i32*, i32** %5, align 8, !tbaa !163
  %10 = load i32, i32* %9, align 4, !tbaa !26
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %8, i64 0, i64 %idxprom
  %11 = load %struct.range*, %struct.range** %arrayidx, align 8, !tbaa !24
  %min = getelementptr inbounds %struct.range, %struct.range* %11, i64 %indvars.iv, i32 0
  %12 = bitcast float* %min to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !19
  %14 = trunc i64 %indvars.iv to i32
  %shl.i = shl i32 %14, 1
  %15 = load [3 x %struct.event*]*, [3 x %struct.event*]** %6, align 8, !tbaa !164
  %arrayidx4 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %15, i64 0, i64 %idxprom
  %16 = load %struct.event*, %struct.event** %arrayidx4, align 8, !tbaa !24
  %idxprom6 = sext i32 %shl.i to i64
  %arrayidx7 = getelementptr inbounds %struct.event, %struct.event* %16, i64 %idxprom6
  %.sroa_cast38 = bitcast %struct.event* %arrayidx7 to i32*
  store i32 %13, i32* %.sroa_cast38, align 4
  %.sroa_idx39 = getelementptr inbounds %struct.event, %struct.event* %16, i64 %idxprom6, i32 1
  store i32 %shl.i, i32* %.sroa_idx39, align 4
  %17 = load [3 x %struct.range*]*, [3 x %struct.range*]** %4, align 8, !tbaa !162
  %18 = load i32*, i32** %5, align 8, !tbaa !163
  %19 = load i32, i32* %18, align 4, !tbaa !26
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %17, i64 0, i64 %idxprom9
  %20 = load %struct.range*, %struct.range** %arrayidx10, align 8, !tbaa !24
  %max = getelementptr inbounds %struct.range, %struct.range* %20, i64 %indvars.iv, i32 1
  %21 = bitcast float* %max to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !14
  %add.i = or i32 %shl.i, 1
  %23 = load [3 x %struct.event*]*, [3 x %struct.event*]** %6, align 8, !tbaa !164
  %arrayidx14 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %23, i64 0, i64 %idxprom9
  %24 = load %struct.event*, %struct.event** %arrayidx14, align 8, !tbaa !24
  %idxprom17 = sext i32 %add.i to i64
  %arrayidx18 = getelementptr inbounds %struct.event, %struct.event* %24, i64 %idxprom17
  %.sroa_cast = bitcast %struct.event* %arrayidx18 to i32*
  store i32 %22, i32* %.sroa_cast, align 4
  %.sroa_idx = getelementptr inbounds %struct.event, %struct.event* %24, i64 %idxprom17, i32 1
  store i32 %add.i, i32* %.sroa_idx, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %25 = add nuw i32 %__index.addr.042, 1
  %exitcond = icmp eq i32 %25, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: uwtable
define linkonce_odr void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %A, i32 %n) local_unnamed_addr #6 comdat {
entry:
  %f = alloca %struct.cmpVal, align 1
  %A.addr = alloca %struct.event*, align 8
  %n.addr = alloca i32, align 4
  %numBlocks = alloca i64, align 8
  %blockSize = alloca i64, align 8
  %numBuckets = alloca i32, align 4
  %sampleSet = alloca %struct.event*, align 8
  %j = alloca i64, align 8
  %agg.captured = alloca %struct.anon.17, align 8
  %pivots = alloca %struct.event*, align 8
  %k = alloca i64, align 8
  %agg.captured31 = alloca %struct.anon.18, align 8
  %counts = alloca i32*, align 8
  %i = alloca i64, align 8
  %agg.captured43 = alloca %struct.anon.19, align 8
  %B = alloca %struct.event*, align 8
  %destOffsets = alloca i32*, align 8
  %ref.tmp = alloca %struct.transpose, align 8
  %ref.tmp65 = alloca %struct.blockTrans, align 8
  %i67 = alloca i64, align 8
  %agg.captured76 = alloca %struct.anon.21, align 8
  store %struct.event* %A, %struct.event** %A.addr, align 8, !tbaa !24
  store i32 %n, i32* %n.addr, align 4, !tbaa !26
  %cmp = icmp slt i32 %n, 1000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @_Z9quickSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %A, i32 %n)
  br label %if.end78

if.else:                                          ; preds = %entry
  %conv.i = sitofp i32 %n to double
  %sqrt = tail call double @sqrt(double %conv.i) #1
  %0 = tail call double @llvm.fabs.f64(double %sqrt)
  %1 = tail call double @llvm.ceil.f64(double %0)
  %conv = fptosi double %1 to i64
  %2 = bitcast i64* %numBlocks to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #2
  %div = sdiv i64 %conv, 2
  %add = add nsw i64 %div, 1
  store i64 %add, i64* %numBlocks, align 8, !tbaa !120
  %3 = bitcast i64* %blockSize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #2
  %sub = add nsw i32 %n, -1
  %conv1 = sext i32 %sub to i64
  %div2 = sdiv i64 %conv1, %add
  %add3 = add nsw i64 %div2, 1
  store i64 %add3, i64* %blockSize, align 8, !tbaa !120
  %4 = bitcast i32* %numBuckets to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #2
  %conv6 = trunc i64 %add to i32
  store i32 %conv6, i32* %numBuckets, align 4, !tbaa !26
  %sext = mul i64 %add, 42949672960
  %conv7 = ashr exact i64 %sext, 32
  %5 = bitcast %struct.event** %sampleSet to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #2
  %mul8 = ashr exact i64 %sext, 29
  %call9 = tail call noalias i8* @malloc(i64 %mul8) #2
  %6 = bitcast %struct.event** %sampleSet to i8**
  store i8* %call9, i8** %6, align 8, !tbaa !24
  %7 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #2
  store i64 0, i64* %j, align 8, !tbaa !120
  %cmp10 = icmp sgt i64 %sext, 0
  %8 = bitcast i8* %call9 to %struct.event*
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  %9 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %agg.captured, i64 0, i32 0
  store i64* %j, i64** %9, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %agg.captured, i64 0, i32 1
  store %struct.event** %sampleSet, %struct.event*** %10, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %agg.captured, i64 0, i32 2
  store %struct.event** %A.addr, %struct.event*** %11, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %agg.captured, i64 0, i32 3
  store i32* %n.addr, i32** %12, align 8, !tbaa !24
  %13 = bitcast %struct.anon.17* %agg.captured to i8*
  call void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void (%struct.anon.17*, i64, i64)* @__cilk_for_helper.29 to void (i8*, i64, i64)*), i8* nonnull %13, i64 %conv7, i32 0)
  %.pre = load %struct.event*, %struct.event** %sampleSet, align 8, !tbaa !24
  %.pre92 = load i32, i32* %numBuckets, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else
  %14 = phi i32 [ %.pre92, %if.then11 ], [ %conv6, %if.else ]
  %15 = phi %struct.event* [ %.pre, %if.then11 ], [ %8, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #2
  call void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %15, i64 %conv7)
  %16 = bitcast %struct.event** %pivots to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #2
  %sub17 = add nsw i32 %14, -1
  %conv18 = sext i32 %sub17 to i64
  %mul19 = shl nsw i64 %conv18, 3
  %call20 = call noalias i8* @malloc(i64 %mul19) #2
  %17 = bitcast %struct.event** %pivots to i8**
  store i8* %call20, i8** %17, align 8, !tbaa !24
  %18 = bitcast i64* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #2
  store i64 0, i64* %k, align 8, !tbaa !120
  %cmp23 = icmp sgt i32 %14, 1
  br i1 %cmp23, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end
  %19 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %agg.captured31, i64 0, i32 0
  store i64* %k, i64** %19, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %agg.captured31, i64 0, i32 1
  store %struct.event** %pivots, %struct.event*** %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %agg.captured31, i64 0, i32 2
  store %struct.event** %sampleSet, %struct.event*** %21, align 8, !tbaa !24
  %22 = bitcast %struct.anon.18* %agg.captured31 to i8*
  call void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void (%struct.anon.18*, i64, i64)* @__cilk_for_helper.30 to void (i8*, i64, i64)*), i8* nonnull %22, i64 %conv18, i32 0)
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #2
  %23 = load i8*, i8** %6, align 8, !tbaa !24
  call void @free(i8* %23) #2
  %24 = bitcast i32** %counts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #2
  %25 = load i64, i64* %numBlocks, align 8, !tbaa !120
  %26 = load i32, i32* %numBuckets, align 4, !tbaa !26
  %conv33 = sext i32 %26 to i64
  %mul34 = shl i64 %25, 2
  %mul35 = mul i64 %mul34, %conv33
  %call36 = call noalias i8* @malloc(i64 %mul35) #2
  %27 = bitcast i32** %counts to i8**
  store i8* %call36, i8** %27, align 8, !tbaa !24
  %28 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #2
  store i64 0, i64* %i, align 8, !tbaa !120
  %cmp37 = icmp sgt i64 %25, 0
  %29 = bitcast i8* %call36 to i32*
  br i1 %cmp37, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end32
  %30 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 0
  store i64* %i, i64** %30, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 1
  store i64* %blockSize, i64** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 2
  store i64* %numBlocks, i64** %32, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 3
  store i32* %n.addr, i32** %33, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 4
  store %struct.event** %A.addr, %struct.event*** %34, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 5
  store %struct.cmpVal* %f, %struct.cmpVal** %35, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 6
  store %struct.event** %pivots, %struct.event*** %36, align 8, !tbaa !24
  %37 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 7
  store i32** %counts, i32*** %37, align 8, !tbaa !24
  %38 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %agg.captured43, i64 0, i32 8
  store i32* %numBuckets, i32** %38, align 8, !tbaa !24
  %39 = bitcast %struct.anon.19* %agg.captured43 to i8*
  call void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void (%struct.anon.19*, i64, i64)* @__cilk_for_helper.31 to void (i8*, i64, i64)*), i8* nonnull %39, i64 %25, i32 0)
  %.pre93 = load i64, i64* %numBlocks, align 8, !tbaa !120
  %.pre94 = load i32, i32* %numBuckets, align 4, !tbaa !26
  %.pre95 = load i32*, i32** %counts, align 8, !tbaa !24
  %.pre96 = sext i32 %.pre94 to i64
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end32
  %conv48.pre-phi = phi i64 [ %.pre96, %if.then38 ], [ %conv33, %if.end32 ]
  %40 = phi i32* [ %.pre95, %if.then38 ], [ %29, %if.end32 ]
  %41 = phi i64 [ %.pre93, %if.then38 ], [ %25, %if.end32 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #2
  %42 = bitcast %struct.event** %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #2
  %43 = load i64, i64* %blockSize, align 8, !tbaa !120
  %mul45 = shl i64 %41, 3
  %mul46 = mul i64 %mul45, %43
  %call47 = call noalias i8* @malloc(i64 %mul46) #2
  %44 = bitcast %struct.event** %B to i8**
  store i8* %call47, i8** %44, align 8, !tbaa !24
  %mul49 = mul nsw i64 %41, %conv48.pre-phi
  %mul50 = shl i64 %mul49, 2
  %call51 = call noalias i8* @malloc(i64 %mul50) #2
  %45 = bitcast i8* %call51 to i32*
  %46 = bitcast i32** %destOffsets to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #2
  %call55 = call noalias i8* @malloc(i64 %mul50) #2
  %47 = bitcast i32** %destOffsets to i8**
  store i8* %call55, i8** %47, align 8, !tbaa !24
  %call.i88 = call i32 @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb(i32* %45, i64 0, i64 %mul49, i32* %40, i32 0, i1 zeroext false, i1 zeroext false)
  %48 = bitcast %struct.transpose* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #2
  %49 = bitcast i32** %counts to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !24
  %51 = ptrtoint i8* %call55 to i64
  %52 = bitcast %struct.transpose* %ref.tmp to i64*
  store i64 %50, i64* %52, align 8, !tbaa !165
  %B.i = getelementptr inbounds %struct.transpose, %struct.transpose* %ref.tmp, i64 0, i32 1
  %53 = bitcast i32** %B.i to i64*
  store i64 %51, i64* %53, align 8, !tbaa !167
  %54 = load i64, i64* %numBlocks, align 8, !tbaa !120
  %conv60 = trunc i64 %54 to i32
  %55 = load i32, i32* %numBuckets, align 4, !tbaa !26
  call void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* nonnull %ref.tmp, i32 0, i32 %conv60, i32 %55, i32 0, i32 %55, i32 %conv60)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #2
  %56 = bitcast i8* %call55 to i32*
  %57 = load i64, i64* %numBlocks, align 8, !tbaa !120
  %58 = load i32, i32* %numBuckets, align 4, !tbaa !26
  %conv61 = sext i32 %58 to i64
  %mul62 = mul nsw i64 %57, %conv61
  %call.i89 = call i32 @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb(i32* %56, i64 0, i64 %mul62, i32* %56, i32 0, i1 zeroext false, i1 zeroext false)
  %59 = bitcast %struct.blockTrans* %ref.tmp65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %59) #2
  %60 = bitcast %struct.event** %A.addr to i64*
  %61 = load i64, i64* %60, align 8, !tbaa !24
  %62 = ptrtoint i8* %call47 to i64
  %63 = load i64, i64* %49, align 8, !tbaa !24
  %64 = bitcast %struct.blockTrans* %ref.tmp65 to i64*
  store i64 %61, i64* %64, align 8, !tbaa !168
  %B.i91 = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp65, i64 0, i32 1
  %65 = bitcast %struct.event** %B.i91 to i64*
  store i64 %62, i64* %65, align 8, !tbaa !170
  %OA.i = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp65, i64 0, i32 2
  %66 = bitcast i32** %OA.i to i8**
  store i8* %call51, i8** %66, align 8, !tbaa !171
  %OB.i = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp65, i64 0, i32 3
  %67 = bitcast i32** %OB.i to i64*
  store i64 %51, i64* %67, align 8, !tbaa !172
  %L.i = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp65, i64 0, i32 4
  %68 = bitcast i32** %L.i to i64*
  store i64 %63, i64* %68, align 8, !tbaa !173
  %69 = load i64, i64* %numBlocks, align 8, !tbaa !120
  %conv66 = trunc i64 %69 to i32
  %70 = load i32, i32* %numBuckets, align 4, !tbaa !26
  call void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* nonnull %ref.tmp65, i32 0, i32 %conv66, i32 %70, i32 0, i32 %70, i32 %conv66)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %59) #2
  call void @free(i8* %call51) #2
  %71 = load i8*, i8** %27, align 8, !tbaa !24
  call void @free(i8* %71) #2
  %72 = bitcast i64* %i67 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #2
  store i64 0, i64* %i67, align 8, !tbaa !120
  %73 = load i32, i32* %numBuckets, align 4, !tbaa !26
  %cmp69 = icmp sgt i32 %73, 0
  br i1 %cmp69, label %if.then70, label %if.end77

if.then70:                                        ; preds = %if.end44
  %conv68 = sext i32 %73 to i64
  %74 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 0
  store i64* %i67, i64** %74, align 8, !tbaa !24
  %75 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 1
  store i32** %destOffsets, i32*** %75, align 8, !tbaa !24
  %76 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 2
  store i64* %numBlocks, i64** %76, align 8, !tbaa !24
  %77 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 3
  store i32* %numBuckets, i32** %77, align 8, !tbaa !24
  %78 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 4
  store i32* %n.addr, i32** %78, align 8, !tbaa !24
  %79 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 5
  store %struct.cmpVal* %f, %struct.cmpVal** %79, align 8, !tbaa !24
  %80 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 6
  store %struct.event** %pivots, %struct.event*** %80, align 8, !tbaa !24
  %81 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 7
  store %struct.event** %B, %struct.event*** %81, align 8, !tbaa !24
  %82 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %agg.captured76, i64 0, i32 8
  store %struct.event** %A.addr, %struct.event*** %82, align 8, !tbaa !24
  %83 = bitcast %struct.anon.21* %agg.captured76 to i8*
  call void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void (%struct.anon.21*, i64, i64)* @__cilk_for_helper.32 to void (i8*, i64, i64)*), i8* nonnull %83, i64 %conv68, i32 0)
  br label %if.end77

if.end77:                                         ; preds = %if.then70, %if.end44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #2
  %84 = load i8*, i8** %17, align 8, !tbaa !24
  call void @free(i8* %84) #2
  %85 = load i8*, i8** %47, align 8, !tbaa !24
  call void @free(i8* %85) #2
  %86 = load i8*, i8** %44, align 8, !tbaa !24
  call void @free(i8* %86) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #2
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) local_unnamed_addr #0

; Function Attrs: stealable uwtable
define linkonce_odr void @_ZN8treeNode3delEPS_(%struct.treeNode* %T) local_unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = call %__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %__cilkrts_worker* %0, null
  br i1 %1, label %2, label %__cilk_parent_prologue.exit

; <label>:2:                                      ; preds = %entry
  %3 = call %__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilk_parent_prologue.exit

__cilk_parent_prologue.exit:                      ; preds = %entry, %2
  %.sink = phi i32 [ 16777344, %2 ], [ 16777216, %entry ]
  %4 = phi %__cilkrts_worker* [ %3, %2 ], [ %0, %entry ]
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %5 release, align 8
  %6 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %4, i64 0, i32 9
  %7 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %6 acquire, align 8
  %8 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %8 release, align 8
  %9 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %4, %__cilkrts_worker** %9 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %6 release, align 8
  %T.addr = alloca %struct.treeNode*, align 8
  %exn.slot = alloca i8*, align 8
  %agg.captured = alloca %struct.anon.9, align 8
  store %struct.treeNode* %T, %struct.treeNode** %T.addr, align 8, !tbaa !24
  %triangleIndices.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %T, i64 0, i32 5
  %10 = load i32*, i32** %triangleIndices.i, align 8, !tbaa !95
  %cmp.i = icmp eq i32* %10, null
  br i1 %cmp.i, label %cilk.spawn.savestate, label %if.then

if.then:                                          ; preds = %__cilk_parent_prologue.exit
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #2
  br label %if.end

lpad:                                             ; preds = %cilk.sync.rethrow.i20, %cilk.sync.runtimecall.i18, %cilk.spawn.continuation, %cilk.spawn.helpercall
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  %15 = load atomic i32, i32* %5 acquire, align 8
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %__cilk_excepting_sync.exit, label %setjmp.test.i

setjmp.test.i:                                    ; preds = %lpad
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %34, i16* nonnull %35) #2
  store volatile i8* %37, i8** %38, align 8
  %18 = call i8* @llvm.stacksave() #2
  store volatile i8* %18, i8** %40, align 8
  %19 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %41) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %setjmp.if.i, label %setjmp.test.setjmp.cont_crit_edge.i

setjmp.test.setjmp.cont_crit_edge.i:              ; preds = %setjmp.test.i
  %.pre.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %.pre1.i = bitcast i8** %.pre.i to i64*
  %.pre3.i = bitcast i8** %exn.slot to i64*
  br label %setjmp.cont.i

setjmp.if.i:                                      ; preds = %setjmp.test.i
  %21 = bitcast i8** %exn.slot to i64*
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %24 = bitcast i8** %23 to i64*
  store i64 %22, i64* %24, align 8
  %25 = load atomic i32, i32* %5 acquire, align 8
  %26 = or i32 %25, 16
  store atomic i32 %26, i32* %5 release, align 8
  call void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %setjmp.cont.i

setjmp.cont.i:                                    ; preds = %setjmp.if.i, %setjmp.test.setjmp.cont_crit_edge.i
  %.pre-phi4.i = phi i64* [ %.pre3.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %21, %setjmp.if.i ]
  %.pre-phi2.i = phi i64* [ %.pre1.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %24, %setjmp.if.i ]
  %27 = load atomic i32, i32* %5 acquire, align 8
  %28 = and i32 %27, -17
  store atomic i32 %28, i32* %5 release, align 8
  %29 = load i64, i64* %.pre-phi2.i, align 8
  store i64 %29, i64* %.pre-phi4.i, align 8
  br label %__cilk_excepting_sync.exit

__cilk_excepting_sync.exit:                       ; preds = %lpad, %setjmp.cont.i
  %30 = load %__cilkrts_worker*, %__cilkrts_worker** %9, align 8
  %31 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %30, i64 0, i32 12, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %ehcleanup

cilk.spawn.savestate:                             ; preds = %__cilk_parent_prologue.exit
  %34 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %35 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %34, i16* nonnull %35) #2
  %36 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %37 = call i8* @llvm.frameaddress(i32 0)
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i64 0, i64 0
  store volatile i8* %37, i8** %38, align 8
  %39 = call i8* @llvm.stacksave()
  %40 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %39, i8** %40, align 8
  %41 = bitcast [5 x i8*]* %36 to i8*
  %42 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %41) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %cilk.spawn.helpercall, label %cilk.spawn.continuation

cilk.spawn.helpercall:                            ; preds = %cilk.spawn.savestate
  %44 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %agg.captured, i64 0, i32 0
  store %struct.treeNode** %T.addr, %struct.treeNode*** %44, align 8, !tbaa !24
  invoke fastcc void @__cilk_spawn_helper.23(%struct.anon.9* nonnull %agg.captured)
          to label %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge unwind label %lpad

cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge: ; preds = %cilk.spawn.helpercall
  %.pre = load %struct.treeNode*, %struct.treeNode** %T.addr, align 8, !tbaa !24
  br label %cilk.spawn.continuation

cilk.spawn.continuation:                          ; preds = %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge, %cilk.spawn.savestate
  %45 = phi %struct.treeNode* [ %.pre, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %T, %cilk.spawn.savestate ]
  %right = getelementptr inbounds %struct.treeNode, %struct.treeNode* %45, i64 0, i32 1
  %46 = load %struct.treeNode*, %struct.treeNode** %right, align 8, !tbaa !92
  invoke void @_ZN8treeNode3delEPS_(%struct.treeNode* %46)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %cilk.spawn.continuation
  %47 = load atomic i32, i32* %5 acquire, align 8
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %__cilk_sync.exit23, label %cilk.sync.savestate.i17

cilk.sync.savestate.i17:                          ; preds = %invoke.cont2
  %50 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i11 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %50, i64 0, i32 12, i32 0
  %51 = bitcast i64* %.elt.i11 to <2 x i64>*
  %52 = load <2 x i64>, <2 x i64>* %51, align 8
  %.repack.i15 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %53 = bitcast i64* %.repack.i15 to <2 x i64>*
  store <2 x i64> %52, <2 x i64>* %53, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %34, i16* nonnull %35) #2
  store volatile i8* %37, i8** %38, align 8
  %54 = call i8* @llvm.stacksave()
  store volatile i8* %54, i8** %40, align 8
  %55 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %41) #20
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %cilk.sync.runtimecall.i18, label %cilk.sync.excepting.i19

cilk.sync.runtimecall.i18:                        ; preds = %cilk.sync.savestate.i17
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %__cilk_sync.exit23 unwind label %lpad

cilk.sync.excepting.i19:                          ; preds = %cilk.sync.savestate.i17
  %57 = load atomic i32, i32* %5 acquire, align 8
  %58 = and i32 %57, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %__cilk_sync.exit23, label %cilk.sync.rethrow.i20

cilk.sync.rethrow.i20:                            ; preds = %cilk.sync.excepting.i19
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc22 unwind label %lpad

.noexc22:                                         ; preds = %cilk.sync.rethrow.i20
  unreachable

__cilk_sync.exit23:                               ; preds = %cilk.sync.runtimecall.i18, %invoke.cont2, %cilk.sync.excepting.i19
  %60 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %61 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %60, i64 0, i32 12, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %if.end

if.end:                                           ; preds = %__cilk_sync.exit23, %if.then
  %64 = bitcast %struct.treeNode** %T.addr to i8**
  %65 = load i8*, i8** %64, align 8, !tbaa !24
  call void @free(i8* %65) #2
  %66 = load atomic i32, i32* %5 acquire, align 8
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %invoke.cont5, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %if.end
  %69 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %69, i64 0, i32 12, i32 0
  %70 = bitcast i64* %.elt.i to <2 x i64>*
  %71 = load <2 x i64>, <2 x i64>* %70, align 8
  %.repack.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %72 = bitcast i64* %.repack.i to <2 x i64>*
  store <2 x i64> %71, <2 x i64>* %72, align 8
  %73 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %74 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %73, i16* nonnull %74) #2
  %75 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %76 = call i8* @llvm.frameaddress(i32 0)
  %77 = getelementptr inbounds [5 x i8*], [5 x i8*]* %75, i64 0, i64 0
  store volatile i8* %76, i8** %77, align 8
  %78 = call i8* @llvm.stacksave()
  %79 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %78, i8** %79, align 8
  %80 = bitcast [5 x i8*]* %75 to i8*
  %81 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %80) #20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont5 unwind label %lpad4

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %83 = load atomic i32, i32* %5 acquire, align 8
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %invoke.cont5, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc9 unwind label %lpad4

.noexc9:                                          ; preds = %cilk.sync.rethrow.i
  unreachable

invoke.cont5:                                     ; preds = %cilk.sync.excepting.i, %if.end, %cilk.sync.runtimecall.i
  %86 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %87 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %86, i64 0, i32 12, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %91 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %90, i64 0, i32 9
  %94 = bitcast %__cilkrts_stack_frame** %93 to i64*
  store atomic i64 %92, i64* %94 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %95 = load atomic i32, i32* %5 acquire, align 8
  %96 = icmp eq i32 %95, 16777216
  br i1 %96, label %__cilk_parent_epilogue.exit7, label %97

; <label>:97:                                     ; preds = %invoke.cont5
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit7

__cilk_parent_epilogue.exit7:                     ; preds = %invoke.cont5, %97
  ret void

lpad4:                                            ; preds = %cilk.sync.rethrow.i, %cilk.sync.runtimecall.i
  %98 = landingpad { i8*, i32 }
          cleanup
  %99 = extractvalue { i8*, i32 } %98, 0
  store i8* %99, i8** %exn.slot, align 8
  %100 = extractvalue { i8*, i32 } %98, 1
  br label %ehcleanup

ehcleanup:                                        ; preds = %__cilk_excepting_sync.exit, %lpad4
  %ehselector.slot.0 = phi i32 [ %14, %__cilk_excepting_sync.exit ], [ %100, %lpad4 ]
  %101 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %102 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %101, i64 0, i32 9
  %105 = bitcast %__cilkrts_stack_frame** %104 to i64*
  store atomic i64 %103, i64* %105 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %106 = load atomic i32, i32* %5 acquire, align 8
  %107 = icmp eq i32 %106, 16777216
  br i1 %107, label %__cilk_parent_epilogue.exit, label %108

; <label>:108:                                    ; preds = %ehcleanup
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %ehcleanup, %108
  %exn = load i8*, i8** %exn.slot, align 8
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1
  resume { i8*, i32 } %lpad.val6
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.17(%struct.anon.8* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !174
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %__context, i64 0, i32 1
  %5 = load i32**, i32*** %4, align 8, !tbaa !176
  %6 = load i32*, i32** %5, align 8, !tbaa !24
  %7 = sext i32 %add to i64
  %8 = xor i32 %__low, -1
  %9 = add i32 %8, %__high
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 1
  %min.iters.check = icmp ult i64 %11, 32
  br i1 %min.iters.check, label %loop.body.preheader, label %vector.ph

loop.body.preheader:                              ; preds = %middle.block, %loop.body.lr.ph
  %indvars.iv.ph = phi i64 [ %ind.end, %middle.block ], [ %7, %loop.body.lr.ph ]
  %__index.addr.08.ph = phi i32 [ %ind.end11, %middle.block ], [ %__low, %loop.body.lr.ph ]
  br label %loop.body

vector.ph:                                        ; preds = %loop.body.lr.ph
  %12 = add i32 %9, 1
  %13 = and i32 %12, 31
  %n.mod.vf = zext i32 %13 to i64
  %n.vec = sub nsw i64 %11, %n.mod.vf
  %.splatinsert20 = insertelement <8 x i32> undef, i32 %add, i32 0
  %.splat21 = shufflevector <8 x i32> %.splatinsert20, <8 x i32> undef, <8 x i32> zeroinitializer
  %induction22 = add <8 x i32> %.splat21, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind23 = phi <8 x i32> [ %induction22, %vector.ph ], [ %vec.ind.next28, %vector.body ]
  %14 = add i64 %index, %7
  %15 = getelementptr inbounds i32, i32* %6, i64 %14
  %step.add24 = add <8 x i32> %vec.ind23, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %step.add25 = add <8 x i32> %vec.ind23, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %step.add26 = add <8 x i32> %vec.ind23, <i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24>
  %16 = bitcast i32* %15 to <8 x i32>*
  store <8 x i32> %vec.ind23, <8 x i32>* %16, align 4, !tbaa !26
  %17 = getelementptr i32, i32* %15, i64 8
  %18 = bitcast i32* %17 to <8 x i32>*
  store <8 x i32> %step.add24, <8 x i32>* %18, align 4, !tbaa !26
  %19 = getelementptr i32, i32* %15, i64 16
  %20 = bitcast i32* %19 to <8 x i32>*
  store <8 x i32> %step.add25, <8 x i32>* %20, align 4, !tbaa !26
  %21 = getelementptr i32, i32* %15, i64 24
  %22 = bitcast i32* %21 to <8 x i32>*
  store <8 x i32> %step.add26, <8 x i32>* %22, align 4, !tbaa !26
  %index.next = add i64 %index, 32
  %vec.ind.next28 = add <8 x i32> %vec.ind23, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = add nsw i64 %n.vec, %7
  %ind.end11 = add i32 %cast.crd, %__low
  %cmp.n = icmp eq i32 %13, 0
  br i1 %cmp.n, label %loop.cond.cleanup, label %loop.body.preheader

loop.cond.cleanup:                                ; preds = %loop.body, %middle.block, %entry
  ret void

loop.body:                                        ; preds = %loop.body.preheader, %loop.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %loop.body ], [ %indvars.iv.ph, %loop.body.preheader ]
  %__index.addr.08 = phi i32 [ %25, %loop.body ], [ %__index.addr.08.ph, %loop.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %indvars.iv
  %24 = trunc i64 %indvars.iv to i32
  store i32 %24, i32* %arrayidx, align 4, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %25 = add nuw i32 %__index.addr.08, 1
  %exitcond = icmp eq i32 %25, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body, !llvm.loop !178
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) local_unnamed_addr #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr void @_ZN5timer7reportTEd(%struct.timer* %this, double %time) local_unnamed_addr #6 comdat align 2 {
entry:
  %call1.i = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i64 11)
  %vtable.i = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !84
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %0 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %0, align 8
  %add.ptr.i = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset.i
  %_M_precision.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 8
  %1 = bitcast i8* %_M_precision.i.i to i64*
  store i64 3, i64* %1, align 8, !tbaa !180
  %call.i = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %time)
  %2 = bitcast %"class.std::basic_ostream"* %call.i to i8**
  %vtable.i7 = load i8*, i8** %2, align 8, !tbaa !84
  %vbase.offset.ptr.i8 = getelementptr i8, i8* %vtable.i7, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i8 to i64*
  %vbase.offset.i9 = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::basic_ostream"* %call.i to i8*
  %add.ptr.i10 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i9
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %add.ptr.i10, i64 240
  %5 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %6 = load %"class.std::ctype"*, %"class.std::ctype"** %5, align 8, !tbaa !86
  %tobool.i.i.i = icmp eq %"class.std::ctype"* %6, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %6, i64 0, i32 8
  %7 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !88
  %tobool.i3.i.i = icmp eq i8 %7, 0
  br i1 %tobool.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %6, i64 0, i32 9, i64 10
  %8 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %6)
  %9 = bitcast %"class.std::ctype"* %6 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %9, align 8, !tbaa !84
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6
  %10 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i.i.i = tail call signext i8 %10(%"class.std::ctype"* nonnull %6, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i4.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %8, %if.then.i4.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i11 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i, i8 signext %retval.0.i.i.i)
  %call.i.i12 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i11)
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) local_unnamed_addr #0

; Function Attrs: noinline uwtable
define internal fastcc void @__cilk_spawn_helper.23(%struct.anon.9* nocapture readonly %__context) unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = tail call %__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %3, %__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %0, %__cilkrts_worker** %5 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %2 release, align 8
  %6 = load %__cilkrts_worker*, %__cilkrts_worker** %5, align 8
  %7 = load %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %4, align 8
  %8 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 0
  %9 = load atomic %__cilkrts_stack_frame**, %__cilkrts_stack_frame*** %8 acquire, align 8
  %.elt.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 0
  %.unpack.i.i = load i64, i64* %.elt.i.i, align 8
  %.elt1.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 1
  %10 = bitcast %__cilkrts_pedigree** %.elt1.i.i to i64*
  %.unpack26.i.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9
  %.repack.i.i = getelementptr inbounds %__cilkrts_pedigree, %__cilkrts_pedigree* %11, i64 0, i32 0
  store i64 %.unpack.i.i, i64* %.repack.i.i, align 8
  %.repack4.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 1
  %12 = bitcast %__cilkrts_pedigree** %.repack4.i.i to i64*
  store i64 %.unpack26.i.i, i64* %12, align 8
  %.repack11.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 0
  store i64 %.unpack.i.i, i64* %.repack11.i.i, align 8
  %.repack13.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 1
  %13 = bitcast %__cilkrts_pedigree** %.repack13.i.i to i64*
  store i64 %.unpack26.i.i, i64* %13, align 8
  store atomic i64 0, i64* %.elt.i.i release, align 8
  store atomic %__cilkrts_pedigree* %11, %__cilkrts_pedigree** %.elt1.i.i release, align 8
  fence release
  store volatile %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %9, align 8
  %14 = getelementptr %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %9, i64 1
  store atomic %__cilkrts_stack_frame** %14, %__cilkrts_stack_frame*** %8 release, align 8
  %15 = load atomic i32, i32* %1 acquire, align 8
  %16 = or i32 %15, 4
  store atomic i32 %16, i32* %1 release, align 8
  %17 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %__context, i64 0, i32 0
  %18 = load %struct.treeNode**, %struct.treeNode*** %17, align 8, !tbaa !186
  %19 = load %struct.treeNode*, %struct.treeNode** %18, align 8, !tbaa !24
  %left = getelementptr inbounds %struct.treeNode, %struct.treeNode* %19, i64 0, i32 0
  %20 = load %struct.treeNode*, %struct.treeNode** %left, align 8, !tbaa !90
  invoke void @_ZN8treeNode3delEPS_(%struct.treeNode* %20)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %21 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %22 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %21, i64 0, i32 9
  %25 = bitcast %__cilkrts_stack_frame** %24 to i64*
  store atomic i64 %23, i64* %25 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %26 = load atomic i32, i32* %1 acquire, align 8
  %27 = icmp eq i32 %26, 16777216
  br i1 %27, label %__cilk_parent_epilogue.exit, label %28

; <label>:28:                                     ; preds = %invoke.cont
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont, %28
  ret void

lpad:                                             ; preds = %entry
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  %31 = load atomic i32, i32* %1 acquire, align 8
  %32 = or i32 %31, 16
  store atomic i32 %32, i32* %1 release, align 8
  %33 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %30, i8** %33 release, align 8
  %34 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %35 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %34, i64 0, i32 9
  %38 = bitcast %__cilkrts_stack_frame** %37 to i64*
  store atomic i64 %36, i64* %38 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %39 = load atomic i32, i32* %1 acquire, align 8
  %40 = icmp eq i32 %39, 16777216
  br i1 %40, label %__cilk_parent_epilogue.exit3, label %41

; <label>:41:                                     ; preds = %lpad
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit3

__cilk_parent_epilogue.exit3:                     ; preds = %lpad, %41
  resume { i8*, i32 } %29
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) local_unnamed_addr #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb(i32* %Out, i32 %s, i32 %e, i32* %g.coerce, i32 %zero, i1 zeroext %inclusive, i1 zeroext %back) local_unnamed_addr #6 comdat {
entry:
  %f = alloca %"struct.utils::addF", align 1
  %g = alloca %"struct.sequence::getA", align 8
  %Out.addr = alloca i32*, align 8
  %inclusive.addr = alloca i8, align 1
  %back.addr = alloca i8, align 1
  %Sums = alloca i32*, align 8
  %_ss = alloca i32, align 4
  %_ee = alloca i32, align 4
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon.10, align 8
  %_ss26 = alloca i32, align 4
  %_ee27 = alloca i32, align 4
  %i34 = alloca i32, align 4
  %agg.captured41 = alloca %struct.anon.11, align 8
  %coerce.dive = getelementptr inbounds %"struct.sequence::getA", %"struct.sequence::getA"* %g, i64 0, i32 0
  store i32* %g.coerce, i32** %coerce.dive, align 8
  store i32* %Out, i32** %Out.addr, align 8, !tbaa !24
  %frombool = zext i1 %inclusive to i8
  store i8 %frombool, i8* %inclusive.addr, align 1, !tbaa !77
  %frombool1 = zext i1 %back to i8
  store i8 %frombool1, i8* %back.addr, align 1, !tbaa !77
  %sub = sub nsw i32 %e, %s
  %sub2 = add nsw i32 %sub, -1
  %div = sdiv i32 %sub2, 1024
  %add = add nsw i32 %div, 1
  %cmp = icmp slt i32 %sub, 2049
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  br i1 %inclusive, label %if.then.i, label %if.else18.i

if.then.i:                                        ; preds = %if.then
  br i1 %back, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %conv4.i = sext i32 %s to i64
  %cmp107.i = icmp sgt i32 %e, %s
  br i1 %cmp107.i, label %for.body.lr.ph.i, label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then3.i
  %sub.i = add nsw i32 %e, -1
  %conv.i = sext i32 %sub.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %i.0109.i = phi i64 [ %conv.i, %for.body.lr.ph.i ], [ %dec.i, %for.body.i ]
  %r.0108.i = phi i32 [ %zero, %for.body.lr.ph.i ], [ %add.i88.i, %for.body.i ]
  %sext103.i = shl i64 %i.0109.i, 32
  %idxprom.i.i = ashr exact i64 %sext103.i, 32
  %arrayidx.i.i = getelementptr inbounds i32, i32* %g.coerce, i64 %idxprom.i.i
  %0 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !26
  %add.i88.i = add nsw i32 %0, %r.0108.i
  %arrayidx.i = getelementptr inbounds i32, i32* %Out, i64 %i.0109.i
  store i32 %add.i88.i, i32* %arrayidx.i, align 4, !tbaa !26
  %dec.i = add nsw i64 %i.0109.i, -1
  %cmp.i = icmp sgt i64 %i.0109.i, %conv4.i
  br i1 %cmp.i, label %for.body.i, label %cleanup

if.else.i:                                        ; preds = %if.then.i
  %cmp9110.i = icmp sgt i32 %e, %s
  br i1 %cmp9110.i, label %for.body11.lr.ph.i, label %cleanup

for.body11.lr.ph.i:                               ; preds = %if.else.i
  %1 = sext i32 %s to i64
  %wide.trip.count.i = sext i32 %e to i64
  %2 = sub nsw i64 %wide.trip.count.i, %1
  %3 = xor i64 %1, -1
  %4 = add nsw i64 %3, %wide.trip.count.i
  %xtraiter = and i64 %2, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body11.i.prol.loopexit, label %for.body11.i.prol.preheader

for.body11.i.prol.preheader:                      ; preds = %for.body11.lr.ph.i
  br label %for.body11.i.prol

for.body11.i.prol:                                ; preds = %for.body11.i.prol.preheader, %for.body11.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body11.i.prol ], [ %1, %for.body11.i.prol.preheader ]
  %r.1111.i.prol = phi i32 [ %add.i84.i.prol, %for.body11.i.prol ], [ %zero, %for.body11.i.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body11.i.prol ], [ %xtraiter, %for.body11.i.prol.preheader ]
  %arrayidx.i87.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.i.prol
  %5 = load i32, i32* %arrayidx.i87.i.prol, align 4, !tbaa !26
  %add.i84.i.prol = add nsw i32 %5, %r.1111.i.prol
  %arrayidx15.i.prol = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.i.prol
  store i32 %add.i84.i.prol, i32* %arrayidx15.i.prol, align 4, !tbaa !26
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.sub = add nsw i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body11.i.prol.loopexit.loopexit, label %for.body11.i.prol, !llvm.loop !188

for.body11.i.prol.loopexit.loopexit:              ; preds = %for.body11.i.prol
  %6 = add nsw i64 %xtraiter, %1
  br label %for.body11.i.prol.loopexit

for.body11.i.prol.loopexit:                       ; preds = %for.body11.i.prol.loopexit.loopexit, %for.body11.lr.ph.i
  %add.i84.i.lcssa.unr = phi i32 [ undef, %for.body11.lr.ph.i ], [ %add.i84.i.prol, %for.body11.i.prol.loopexit.loopexit ]
  %indvars.iv.i.unr = phi i64 [ %1, %for.body11.lr.ph.i ], [ %6, %for.body11.i.prol.loopexit.loopexit ]
  %r.1111.i.unr = phi i32 [ %zero, %for.body11.lr.ph.i ], [ %add.i84.i.prol, %for.body11.i.prol.loopexit.loopexit ]
  %7 = icmp ult i64 %4, 7
  br i1 %7, label %cleanup, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.body11.i.prol.loopexit
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %for.body11.i ], [ %indvars.iv.i.unr, %for.body11.i.preheader ]
  %r.1111.i = phi i32 [ %add.i84.i.7, %for.body11.i ], [ %r.1111.i.unr, %for.body11.i.preheader ]
  %arrayidx.i87.i = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.i
  %8 = load i32, i32* %arrayidx.i87.i, align 4, !tbaa !26
  %add.i84.i = add nsw i32 %8, %r.1111.i
  %arrayidx15.i = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.i
  store i32 %add.i84.i, i32* %arrayidx15.i, align 4, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %arrayidx.i87.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i
  %9 = load i32, i32* %arrayidx.i87.i.1, align 4, !tbaa !26
  %add.i84.i.1 = add nsw i32 %9, %add.i84.i
  %arrayidx15.i.1 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i
  store i32 %add.i84.i.1, i32* %arrayidx15.i.1, align 4, !tbaa !26
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %arrayidx.i87.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.1
  %10 = load i32, i32* %arrayidx.i87.i.2, align 4, !tbaa !26
  %add.i84.i.2 = add nsw i32 %10, %add.i84.i.1
  %arrayidx15.i.2 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.1
  store i32 %add.i84.i.2, i32* %arrayidx15.i.2, align 4, !tbaa !26
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %arrayidx.i87.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.2
  %11 = load i32, i32* %arrayidx.i87.i.3, align 4, !tbaa !26
  %add.i84.i.3 = add nsw i32 %11, %add.i84.i.2
  %arrayidx15.i.3 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.2
  store i32 %add.i84.i.3, i32* %arrayidx15.i.3, align 4, !tbaa !26
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %arrayidx.i87.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.3
  %12 = load i32, i32* %arrayidx.i87.i.4, align 4, !tbaa !26
  %add.i84.i.4 = add nsw i32 %12, %add.i84.i.3
  %arrayidx15.i.4 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.3
  store i32 %add.i84.i.4, i32* %arrayidx15.i.4, align 4, !tbaa !26
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5
  %arrayidx.i87.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.4
  %13 = load i32, i32* %arrayidx.i87.i.5, align 4, !tbaa !26
  %add.i84.i.5 = add nsw i32 %13, %add.i84.i.4
  %arrayidx15.i.5 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.4
  store i32 %add.i84.i.5, i32* %arrayidx15.i.5, align 4, !tbaa !26
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6
  %arrayidx.i87.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.5
  %14 = load i32, i32* %arrayidx.i87.i.6, align 4, !tbaa !26
  %add.i84.i.6 = add nsw i32 %14, %add.i84.i.5
  %arrayidx15.i.6 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.5
  store i32 %add.i84.i.6, i32* %arrayidx15.i.6, align 4, !tbaa !26
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7
  %arrayidx.i87.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.6
  %15 = load i32, i32* %arrayidx.i87.i.7, align 4, !tbaa !26
  %add.i84.i.7 = add nsw i32 %15, %add.i84.i.6
  %arrayidx15.i.7 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.6
  store i32 %add.i84.i.7, i32* %arrayidx15.i.7, align 4, !tbaa !26
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8
  %exitcond.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.i.7, label %cleanup, label %for.body11.i

if.else18.i:                                      ; preds = %if.then
  br i1 %back, label %if.then20.i, label %if.else36.i

if.then20.i:                                      ; preds = %if.else18.i
  %conv25.i = sext i32 %s to i64
  %cmp26114.i = icmp sgt i32 %e, %s
  br i1 %cmp26114.i, label %for.body28.lr.ph.i, label %cleanup

for.body28.lr.ph.i:                               ; preds = %if.then20.i
  %sub22.i = add nsw i32 %e, -1
  %conv23.i = sext i32 %sub22.i to i64
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i, %for.body28.lr.ph.i
  %i21.0116.i = phi i64 [ %conv23.i, %for.body28.lr.ph.i ], [ %dec34.i, %for.body28.i ]
  %r.2115.i = phi i32 [ %zero, %for.body28.lr.ph.i ], [ %add.i80.i, %for.body28.i ]
  %sext.i = shl i64 %i21.0116.i, 32
  %idxprom.i82.i = ashr exact i64 %sext.i, 32
  %arrayidx.i83.i = getelementptr inbounds i32, i32* %g.coerce, i64 %idxprom.i82.i
  %16 = load i32, i32* %arrayidx.i83.i, align 4, !tbaa !26
  %arrayidx31.i = getelementptr inbounds i32, i32* %Out, i64 %i21.0116.i
  store i32 %r.2115.i, i32* %arrayidx31.i, align 4, !tbaa !26
  %add.i80.i = add nsw i32 %16, %r.2115.i
  %dec34.i = add nsw i64 %i21.0116.i, -1
  %cmp26.i = icmp sgt i64 %i21.0116.i, %conv25.i
  br i1 %cmp26.i, label %for.body28.i, label %cleanup

if.else36.i:                                      ; preds = %if.else18.i
  %cmp39118.i = icmp sgt i32 %e, %s
  br i1 %cmp39118.i, label %for.body41.lr.ph.i, label %cleanup

for.body41.lr.ph.i:                               ; preds = %if.else36.i
  %17 = sext i32 %s to i64
  %wide.trip.count127.i = sext i32 %e to i64
  %18 = sub nsw i64 %wide.trip.count127.i, %17
  %19 = xor i64 %17, -1
  %20 = add nsw i64 %19, %wide.trip.count127.i
  %xtraiter77 = and i64 %18, 7
  %lcmp.mod78 = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78, label %for.body41.i.prol.loopexit, label %for.body41.i.prol.preheader

for.body41.i.prol.preheader:                      ; preds = %for.body41.lr.ph.i
  br label %for.body41.i.prol

for.body41.i.prol:                                ; preds = %for.body41.i.prol.preheader, %for.body41.i.prol
  %indvars.iv125.i.prol = phi i64 [ %indvars.iv.next126.i.prol, %for.body41.i.prol ], [ %17, %for.body41.i.prol.preheader ]
  %r.3119.i.prol = phi i32 [ %add.i.i.prol, %for.body41.i.prol ], [ %zero, %for.body41.i.prol.preheader ]
  %prol.iter79 = phi i64 [ %prol.iter79.sub, %for.body41.i.prol ], [ %xtraiter77, %for.body41.i.prol.preheader ]
  %arrayidx.i79.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv125.i.prol
  %21 = load i32, i32* %arrayidx.i79.i.prol, align 4, !tbaa !26
  %arrayidx45.i.prol = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv125.i.prol
  store i32 %r.3119.i.prol, i32* %arrayidx45.i.prol, align 4, !tbaa !26
  %add.i.i.prol = add nsw i32 %21, %r.3119.i.prol
  %indvars.iv.next126.i.prol = add nsw i64 %indvars.iv125.i.prol, 1
  %prol.iter79.sub = add nsw i64 %prol.iter79, -1
  %prol.iter79.cmp = icmp eq i64 %prol.iter79.sub, 0
  br i1 %prol.iter79.cmp, label %for.body41.i.prol.loopexit.loopexit, label %for.body41.i.prol, !llvm.loop !189

for.body41.i.prol.loopexit.loopexit:              ; preds = %for.body41.i.prol
  %22 = add nsw i64 %xtraiter77, %17
  br label %for.body41.i.prol.loopexit

for.body41.i.prol.loopexit:                       ; preds = %for.body41.i.prol.loopexit.loopexit, %for.body41.lr.ph.i
  %add.i.i.lcssa.unr = phi i32 [ undef, %for.body41.lr.ph.i ], [ %add.i.i.prol, %for.body41.i.prol.loopexit.loopexit ]
  %indvars.iv125.i.unr = phi i64 [ %17, %for.body41.lr.ph.i ], [ %22, %for.body41.i.prol.loopexit.loopexit ]
  %r.3119.i.unr = phi i32 [ %zero, %for.body41.lr.ph.i ], [ %add.i.i.prol, %for.body41.i.prol.loopexit.loopexit ]
  %23 = icmp ult i64 %20, 7
  br i1 %23, label %cleanup, label %for.body41.i.preheader

for.body41.i.preheader:                           ; preds = %for.body41.i.prol.loopexit
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.preheader, %for.body41.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i.7, %for.body41.i ], [ %indvars.iv125.i.unr, %for.body41.i.preheader ]
  %r.3119.i = phi i32 [ %add.i.i.7, %for.body41.i ], [ %r.3119.i.unr, %for.body41.i.preheader ]
  %arrayidx.i79.i = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv125.i
  %24 = load i32, i32* %arrayidx.i79.i, align 4, !tbaa !26
  %arrayidx45.i = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv125.i
  store i32 %r.3119.i, i32* %arrayidx45.i, align 4, !tbaa !26
  %add.i.i = add nsw i32 %24, %r.3119.i
  %indvars.iv.next126.i = add nsw i64 %indvars.iv125.i, 1
  %arrayidx.i79.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i
  %25 = load i32, i32* %arrayidx.i79.i.1, align 4, !tbaa !26
  %arrayidx45.i.1 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i
  store i32 %add.i.i, i32* %arrayidx45.i.1, align 4, !tbaa !26
  %add.i.i.1 = add nsw i32 %25, %add.i.i
  %indvars.iv.next126.i.1 = add nsw i64 %indvars.iv125.i, 2
  %arrayidx.i79.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.1
  %26 = load i32, i32* %arrayidx.i79.i.2, align 4, !tbaa !26
  %arrayidx45.i.2 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.1
  store i32 %add.i.i.1, i32* %arrayidx45.i.2, align 4, !tbaa !26
  %add.i.i.2 = add nsw i32 %26, %add.i.i.1
  %indvars.iv.next126.i.2 = add nsw i64 %indvars.iv125.i, 3
  %arrayidx.i79.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.2
  %27 = load i32, i32* %arrayidx.i79.i.3, align 4, !tbaa !26
  %arrayidx45.i.3 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.2
  store i32 %add.i.i.2, i32* %arrayidx45.i.3, align 4, !tbaa !26
  %add.i.i.3 = add nsw i32 %27, %add.i.i.2
  %indvars.iv.next126.i.3 = add nsw i64 %indvars.iv125.i, 4
  %arrayidx.i79.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.3
  %28 = load i32, i32* %arrayidx.i79.i.4, align 4, !tbaa !26
  %arrayidx45.i.4 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.3
  store i32 %add.i.i.3, i32* %arrayidx45.i.4, align 4, !tbaa !26
  %add.i.i.4 = add nsw i32 %28, %add.i.i.3
  %indvars.iv.next126.i.4 = add nsw i64 %indvars.iv125.i, 5
  %arrayidx.i79.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.4
  %29 = load i32, i32* %arrayidx.i79.i.5, align 4, !tbaa !26
  %arrayidx45.i.5 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.4
  store i32 %add.i.i.4, i32* %arrayidx45.i.5, align 4, !tbaa !26
  %add.i.i.5 = add nsw i32 %29, %add.i.i.4
  %indvars.iv.next126.i.5 = add nsw i64 %indvars.iv125.i, 6
  %arrayidx.i79.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.5
  %30 = load i32, i32* %arrayidx.i79.i.6, align 4, !tbaa !26
  %arrayidx45.i.6 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.5
  store i32 %add.i.i.5, i32* %arrayidx45.i.6, align 4, !tbaa !26
  %add.i.i.6 = add nsw i32 %30, %add.i.i.5
  %indvars.iv.next126.i.6 = add nsw i64 %indvars.iv125.i, 7
  %arrayidx.i79.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.6
  %31 = load i32, i32* %arrayidx.i79.i.7, align 4, !tbaa !26
  %arrayidx45.i.7 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.6
  store i32 %add.i.i.6, i32* %arrayidx45.i.7, align 4, !tbaa !26
  %add.i.i.7 = add nsw i32 %31, %add.i.i.6
  %indvars.iv.next126.i.7 = add nsw i64 %indvars.iv125.i, 8
  %exitcond128.i.7 = icmp eq i64 %indvars.iv.next126.i.7, %wide.trip.count127.i
  br i1 %exitcond128.i.7, label %cleanup, label %for.body41.i

if.end42:                                         ; preds = %entry
  %32 = bitcast i32** %Sums to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #2
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call9 = tail call noalias i8* @malloc(i64 %mul) #2
  %33 = bitcast i32** %Sums to i8**
  store i8* %call9, i8** %33, align 8, !tbaa !24
  %34 = bitcast i32* %_ss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #2
  store i32 %s, i32* %_ss, align 4, !tbaa !26
  %35 = bitcast i32* %_ee to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #2
  store i32 %e, i32* %_ee, align 4, !tbaa !26
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  %37 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %agg.captured, i64 0, i32 0
  store i32* %i, i32** %37, align 8, !tbaa !24
  %38 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %agg.captured, i64 0, i32 1
  store i32* %_ss, i32** %38, align 8, !tbaa !24
  %39 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %agg.captured, i64 0, i32 2
  store i32* %_ee, i32** %39, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %agg.captured, i64 0, i32 3
  store i32** %Sums, i32*** %40, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %agg.captured, i64 0, i32 4
  store %"struct.utils::addF"* %f, %"struct.utils::addF"** %41, align 8, !tbaa !24
  %42 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %agg.captured, i64 0, i32 5
  store %"struct.sequence::getA"* %g, %"struct.sequence::getA"** %42, align 8, !tbaa !24
  %43 = bitcast %struct.anon.10* %agg.captured to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.10*, i32, i32)* @__cilk_for_helper.24 to void (i8*, i32, i32)*), i8* nonnull %43, i32 %add, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34) #2
  %44 = load i32*, i32** %Sums, align 8, !tbaa !24
  %call25 = call i32 @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb(i32* %44, i32 0, i32 %add, i32* %44, i32 %zero, i1 zeroext false, i1 zeroext %back)
  %45 = bitcast i32* %_ss26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %45) #2
  store i32 %s, i32* %_ss26, align 4, !tbaa !26
  %46 = bitcast i32* %_ee27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #2
  store i32 %e, i32* %_ee27, align 4, !tbaa !26
  %47 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #2
  store i32 0, i32* %i34, align 4, !tbaa !26
  %48 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 0
  store i32* %i34, i32** %48, align 8, !tbaa !24
  %49 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 1
  store i32* %_ss26, i32** %49, align 8, !tbaa !24
  %50 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 2
  store i32* %_ee27, i32** %50, align 8, !tbaa !24
  %51 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 3
  store i32** %Out.addr, i32*** %51, align 8, !tbaa !24
  %52 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 4
  store %"struct.utils::addF"* %f, %"struct.utils::addF"** %52, align 8, !tbaa !24
  %53 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 5
  store %"struct.sequence::getA"* %g, %"struct.sequence::getA"** %53, align 8, !tbaa !24
  %54 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 6
  store i32** %Sums, i32*** %54, align 8, !tbaa !24
  %55 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 7
  store i8* %inclusive.addr, i8** %55, align 8, !tbaa !24
  %56 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %agg.captured41, i64 0, i32 8
  store i8* %back.addr, i8** %56, align 8, !tbaa !24
  %57 = bitcast %struct.anon.11* %agg.captured41 to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.11*, i32, i32)* @__cilk_for_helper.25 to void (i8*, i32, i32)*), i8* nonnull %57, i32 %add, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #2
  %58 = load i8*, i8** %33, align 8, !tbaa !24
  call void @free(i8* %58) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #2
  br label %cleanup

cleanup:                                          ; preds = %for.body41.i, %for.body28.i, %for.body11.i, %for.body.i, %for.body41.i.prol.loopexit, %for.body11.i.prol.loopexit, %if.else36.i, %if.then20.i, %if.else.i, %if.then3.i, %if.end42
  %retval.0 = phi i32 [ %call25, %if.end42 ], [ %zero, %if.then3.i ], [ %zero, %if.else.i ], [ %zero, %if.then20.i ], [ %zero, %if.else36.i ], [ %add.i84.i.lcssa.unr, %for.body11.i.prol.loopexit ], [ %add.i.i.lcssa.unr, %for.body41.i.prol.loopexit ], [ %add.i88.i, %for.body.i ], [ %add.i84.i.7, %for.body11.i ], [ %add.i80.i, %for.body28.i ], [ %add.i.i.7, %for.body41.i ]
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.24(%struct.anon.10* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !190
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %__context, i64 0, i32 5
  %7 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %__context, i64 0, i32 3
  %8 = sext i32 %add to i64
  %.pre = load i32*, i32** %4, align 8, !tbaa !192
  %.pre22 = load i32*, i32** %5, align 8, !tbaa !193
  %.pre23 = load %"struct.sequence::getA"*, %"struct.sequence::getA"** %6, align 8, !tbaa !194
  %agg.tmp4.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.sequence::getA", %"struct.sequence::getA"* %.pre23, i64 0, i32 0
  %9 = shl i32 %add, 10
  %10 = sub i32 -3, %9
  %11 = sub i32 -1025, %9
  br label %loop.body

loop.cond.cleanup:                                ; preds = %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit, %entry
  ret void

loop.body:                                        ; preds = %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit, %loop.body.lr.ph
  %indvar = phi i32 [ %indvar.next, %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit ], [ 0, %loop.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit ], [ %8, %loop.body.lr.ph ]
  %__index.addr.020 = phi i32 [ %47, %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit ], [ %__low, %loop.body.lr.ph ]
  %__cv_i.019 = phi i32 [ %inc, %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit ], [ %add, %loop.body.lr.ph ]
  %12 = mul i32 %indvar, -1024
  %13 = load i32, i32* %.pre, align 4, !tbaa !26
  %mul1 = shl nsw i32 %__cv_i.019, 10
  %add2 = add nsw i32 %13, %mul1
  %add3 = add nsw i32 %add2, 1024
  %14 = load i32, i32* %.pre22, align 4, !tbaa !26
  %cmp.i = icmp slt i32 %14, %add3
  %.sroa.speculated = select i1 %cmp.i, i32 %14, i32 %add3
  %agg.tmp4.sroa.0.0.copyload = load i32*, i32** %agg.tmp4.sroa.0.0..sroa_idx, align 8
  %idxprom.i.i = sext i32 %add2 to i64
  %arrayidx.i.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %idxprom.i.i
  %15 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !26
  %j.014.i = add nsw i32 %add2, 1
  %cmp15.i = icmp slt i32 %j.014.i, %.sroa.speculated
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit

for.body.lr.ph.i:                                 ; preds = %loop.body
  %16 = add i32 %11, %12
  %17 = add i32 %10, %12
  %18 = sext i32 %j.014.i to i64
  %19 = sub i32 %17, %13
  %20 = sub i32 %16, %13
  %21 = xor i32 %14, -1
  %22 = icmp sgt i32 %20, %21
  %smax = select i1 %22, i32 %20, i32 %21
  %23 = sub i32 %19, %smax
  %24 = zext i32 %23 to i64
  %25 = add nuw nsw i64 %24, 1
  %min.iters.check = icmp ult i64 %25, 32
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph.i
  %26 = add i32 %23, 1
  %27 = and i32 %26, 31
  %n.mod.vf = zext i32 %27 to i64
  %n.vec = sub nsw i64 %25, %n.mod.vf
  %28 = insertelement <8 x i32> <i32 undef, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %15, i32 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i32> [ %28, %vector.ph ], [ %38, %vector.body ]
  %vec.phi27 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %39, %vector.body ]
  %vec.phi28 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %40, %vector.body ]
  %vec.phi29 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %41, %vector.body ]
  %29 = add i64 %index, %18
  %30 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %29
  %31 = bitcast i32* %30 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %31, align 4, !tbaa !26
  %32 = getelementptr i32, i32* %30, i64 8
  %33 = bitcast i32* %32 to <8 x i32>*
  %wide.load30 = load <8 x i32>, <8 x i32>* %33, align 4, !tbaa !26
  %34 = getelementptr i32, i32* %30, i64 16
  %35 = bitcast i32* %34 to <8 x i32>*
  %wide.load31 = load <8 x i32>, <8 x i32>* %35, align 4, !tbaa !26
  %36 = getelementptr i32, i32* %30, i64 24
  %37 = bitcast i32* %36 to <8 x i32>*
  %wide.load32 = load <8 x i32>, <8 x i32>* %37, align 4, !tbaa !26
  %38 = add nsw <8 x i32> %wide.load, %vec.phi
  %39 = add nsw <8 x i32> %wide.load30, %vec.phi27
  %40 = add nsw <8 x i32> %wide.load31, %vec.phi28
  %41 = add nsw <8 x i32> %wide.load32, %vec.phi29
  %index.next = add i64 %index, 32
  %42 = icmp eq i64 %index.next, %n.vec
  br i1 %42, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %ind.end = add nsw i64 %n.vec, %18
  %bin.rdx = add <8 x i32> %39, %38
  %bin.rdx33 = add <8 x i32> %bin.rdx, %40
  %bin.rdx34 = add <8 x i32> %bin.rdx33, %41
  %rdx.shuf = shufflevector <8 x i32> %bin.rdx34, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx35 = add <8 x i32> %rdx.shuf, %bin.rdx34
  %rdx.shuf36 = shufflevector <8 x i32> %bin.rdx35, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx37 = add <8 x i32> %rdx.shuf36, %bin.rdx35
  %rdx.shuf38 = shufflevector <8 x i32> %bin.rdx37, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx39 = add <8 x i32> %rdx.shuf38, %bin.rdx37
  %43 = extractelement <8 x i32> %bin.rdx39, i32 0
  %cmp.n = icmp eq i32 %27, 0
  br i1 %cmp.n, label %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %middle.block, %for.body.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ %ind.end, %middle.block ], [ %18, %for.body.lr.ph.i ]
  %r.016.i.ph = phi i32 [ %43, %middle.block ], [ %15, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %r.016.i = phi i32 [ %add.i.i, %for.body.i ], [ %r.016.i.ph, %for.body.i.preheader ]
  %arrayidx.i9.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.i
  %44 = load i32, i32* %arrayidx.i9.i, align 4, !tbaa !26
  %add.i.i = add nsw i32 %44, %r.016.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.i = icmp eq i32 %.sroa.speculated, %lftr.wideiv.i
  br i1 %exitcond.i, label %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit, label %for.body.i, !llvm.loop !196

_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit: ; preds = %for.body.i, %middle.block, %loop.body
  %r.0.lcssa.i = phi i32 [ %15, %loop.body ], [ %43, %middle.block ], [ %add.i.i, %for.body.i ]
  %45 = load i32**, i32*** %7, align 8, !tbaa !197
  %46 = load i32*, i32** %45, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds i32, i32* %46, i64 %indvars.iv
  store i32 %r.0.lcssa.i, i32* %arrayidx, align 4, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %inc = add nsw i32 %__cv_i.019, 1
  %47 = add nuw i32 %__index.addr.020, 1
  %exitcond = icmp eq i32 %47, %__high
  %indvar.next = add nuw i32 %indvar, 1
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.25(%struct.anon.11* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !198
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %__context, i64 0, i32 3
  %7 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %__context, i64 0, i32 5
  %8 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %__context, i64 0, i32 6
  %9 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %__context, i64 0, i32 7
  %10 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %__context, i64 0, i32 8
  %11 = sext i32 %add to i64
  %.pre = load i32*, i32** %4, align 8, !tbaa !200
  %.pre29 = load i32*, i32** %5, align 8, !tbaa !201
  %.pre30 = load i32**, i32*** %6, align 8, !tbaa !202
  %.pre31 = load i32*, i32** %.pre30, align 8, !tbaa !24
  %.pre32 = load %"struct.sequence::getA"*, %"struct.sequence::getA"** %7, align 8, !tbaa !203
  %.pre33 = load i32**, i32*** %8, align 8, !tbaa !204
  %.pre34 = load i32*, i32** %.pre33, align 8, !tbaa !24
  %.pre35 = load i8*, i8** %9, align 8, !tbaa !205
  %.pre36 = load i8, i8* %.pre35, align 1, !tbaa !77, !range !153
  %.pre37 = load i8*, i8** %10, align 8, !tbaa !206
  %.pre38 = load i8, i8* %.pre37, align 1, !tbaa !77, !range !153
  %agg.tmp4.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.sequence::getA", %"struct.sequence::getA"* %.pre32, i64 0, i32 0
  %tobool = icmp eq i8 %.pre36, 0
  %tobool5 = icmp ne i8 %.pre38, 0
  br label %loop.body

loop.cond.cleanup:                                ; preds = %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit, %entry
  ret void

loop.body:                                        ; preds = %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit, %loop.body.lr.ph
  %indvars.iv = phi i64 [ %11, %loop.body.lr.ph ], [ %indvars.iv.next, %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit ]
  %__index.addr.025 = phi i32 [ %__low, %loop.body.lr.ph ], [ %46, %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit ]
  %12 = load i32, i32* %.pre, align 4, !tbaa !26
  %13 = trunc i64 %indvars.iv to i32
  %mul1 = shl nsw i32 %13, 10
  %add2 = add nsw i32 %12, %mul1
  %add3 = add nsw i32 %add2, 1024
  %14 = load i32, i32* %.pre29, align 4, !tbaa !26
  %cmp.i = icmp slt i32 %14, %add3
  %.sroa.speculated = select i1 %cmp.i, i32 %14, i32 %add3
  %agg.tmp4.sroa.0.0.copyload = load i32*, i32** %agg.tmp4.sroa.0.0..sroa_idx, align 8
  %arrayidx = getelementptr inbounds i32, i32* %.pre34, i64 %indvars.iv
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !26
  br i1 %tobool, label %if.else18.i, label %if.then.i

if.then.i:                                        ; preds = %loop.body
  br i1 %tobool5, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %conv4.i = sext i32 %add2 to i64
  %cmp107.i = icmp sgt i32 %.sroa.speculated, %add2
  br i1 %cmp107.i, label %for.body.lr.ph.i, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit

for.body.lr.ph.i:                                 ; preds = %if.then3.i
  %sub.i = add nsw i32 %.sroa.speculated, -1
  %conv.i = sext i32 %sub.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %i.0109.i = phi i64 [ %conv.i, %for.body.lr.ph.i ], [ %dec.i, %for.body.i ]
  %r.0108.i = phi i32 [ %15, %for.body.lr.ph.i ], [ %add.i88.i, %for.body.i ]
  %sext103.i = shl i64 %i.0109.i, 32
  %idxprom.i.i = ashr exact i64 %sext103.i, 32
  %arrayidx.i.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %idxprom.i.i
  %16 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !26
  %add.i88.i = add nsw i32 %16, %r.0108.i
  %arrayidx.i = getelementptr inbounds i32, i32* %.pre31, i64 %i.0109.i
  store i32 %add.i88.i, i32* %arrayidx.i, align 4, !tbaa !26
  %dec.i = add nsw i64 %i.0109.i, -1
  %cmp.i17 = icmp sgt i64 %i.0109.i, %conv4.i
  br i1 %cmp.i17, label %for.body.i, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit

if.else.i:                                        ; preds = %if.then.i
  %cmp9110.i = icmp slt i32 %add2, %.sroa.speculated
  br i1 %cmp9110.i, label %for.body11.lr.ph.i, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit

for.body11.lr.ph.i:                               ; preds = %if.else.i
  %17 = sext i32 %add2 to i64
  %wide.trip.count.i = sext i32 %.sroa.speculated to i64
  %18 = sub nsw i64 %wide.trip.count.i, %17
  %19 = xor i64 %17, -1
  %20 = add nsw i64 %19, %wide.trip.count.i
  %xtraiter = and i64 %18, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body11.i.prol.loopexit, label %for.body11.i.prol.preheader

for.body11.i.prol.preheader:                      ; preds = %for.body11.lr.ph.i
  br label %for.body11.i.prol

for.body11.i.prol:                                ; preds = %for.body11.i.prol.preheader, %for.body11.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body11.i.prol ], [ %17, %for.body11.i.prol.preheader ]
  %r.1111.i.prol = phi i32 [ %add.i84.i.prol, %for.body11.i.prol ], [ %15, %for.body11.i.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body11.i.prol ], [ %xtraiter, %for.body11.i.prol.preheader ]
  %arrayidx.i87.i.prol = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.i.prol
  %21 = load i32, i32* %arrayidx.i87.i.prol, align 4, !tbaa !26
  %add.i84.i.prol = add nsw i32 %21, %r.1111.i.prol
  %arrayidx15.i.prol = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.i.prol
  store i32 %add.i84.i.prol, i32* %arrayidx15.i.prol, align 4, !tbaa !26
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.sub = add nsw i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body11.i.prol.loopexit, label %for.body11.i.prol, !llvm.loop !207

for.body11.i.prol.loopexit:                       ; preds = %for.body11.i.prol, %for.body11.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %17, %for.body11.lr.ph.i ], [ %indvars.iv.next.i.prol, %for.body11.i.prol ]
  %r.1111.i.unr = phi i32 [ %15, %for.body11.lr.ph.i ], [ %add.i84.i.prol, %for.body11.i.prol ]
  %22 = icmp ult i64 %20, 7
  br i1 %22, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.body11.i.prol.loopexit
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %for.body11.i ], [ %indvars.iv.i.unr, %for.body11.i.preheader ]
  %r.1111.i = phi i32 [ %add.i84.i.7, %for.body11.i ], [ %r.1111.i.unr, %for.body11.i.preheader ]
  %arrayidx.i87.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.i
  %23 = load i32, i32* %arrayidx.i87.i, align 4, !tbaa !26
  %add.i84.i = add nsw i32 %23, %r.1111.i
  %arrayidx15.i = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.i
  store i32 %add.i84.i, i32* %arrayidx15.i, align 4, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %arrayidx.i87.i.1 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i
  %24 = load i32, i32* %arrayidx.i87.i.1, align 4, !tbaa !26
  %add.i84.i.1 = add nsw i32 %24, %add.i84.i
  %arrayidx15.i.1 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next.i
  store i32 %add.i84.i.1, i32* %arrayidx15.i.1, align 4, !tbaa !26
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %arrayidx.i87.i.2 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i.1
  %25 = load i32, i32* %arrayidx.i87.i.2, align 4, !tbaa !26
  %add.i84.i.2 = add nsw i32 %25, %add.i84.i.1
  %arrayidx15.i.2 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next.i.1
  store i32 %add.i84.i.2, i32* %arrayidx15.i.2, align 4, !tbaa !26
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %arrayidx.i87.i.3 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i.2
  %26 = load i32, i32* %arrayidx.i87.i.3, align 4, !tbaa !26
  %add.i84.i.3 = add nsw i32 %26, %add.i84.i.2
  %arrayidx15.i.3 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next.i.2
  store i32 %add.i84.i.3, i32* %arrayidx15.i.3, align 4, !tbaa !26
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %arrayidx.i87.i.4 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i.3
  %27 = load i32, i32* %arrayidx.i87.i.4, align 4, !tbaa !26
  %add.i84.i.4 = add nsw i32 %27, %add.i84.i.3
  %arrayidx15.i.4 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next.i.3
  store i32 %add.i84.i.4, i32* %arrayidx15.i.4, align 4, !tbaa !26
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5
  %arrayidx.i87.i.5 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i.4
  %28 = load i32, i32* %arrayidx.i87.i.5, align 4, !tbaa !26
  %add.i84.i.5 = add nsw i32 %28, %add.i84.i.4
  %arrayidx15.i.5 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next.i.4
  store i32 %add.i84.i.5, i32* %arrayidx15.i.5, align 4, !tbaa !26
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6
  %arrayidx.i87.i.6 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i.5
  %29 = load i32, i32* %arrayidx.i87.i.6, align 4, !tbaa !26
  %add.i84.i.6 = add nsw i32 %29, %add.i84.i.5
  %arrayidx15.i.6 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next.i.5
  store i32 %add.i84.i.6, i32* %arrayidx15.i.6, align 4, !tbaa !26
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7
  %arrayidx.i87.i.7 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i.6
  %30 = load i32, i32* %arrayidx.i87.i.7, align 4, !tbaa !26
  %add.i84.i.7 = add nsw i32 %30, %add.i84.i.6
  %arrayidx15.i.7 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next.i.6
  store i32 %add.i84.i.7, i32* %arrayidx15.i.7, align 4, !tbaa !26
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8
  %exitcond.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.i.7, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit, label %for.body11.i

if.else18.i:                                      ; preds = %loop.body
  br i1 %tobool5, label %if.then20.i, label %if.else36.i

if.then20.i:                                      ; preds = %if.else18.i
  %conv25.i = sext i32 %add2 to i64
  %cmp26114.i = icmp sgt i32 %.sroa.speculated, %add2
  br i1 %cmp26114.i, label %for.body28.lr.ph.i, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit

for.body28.lr.ph.i:                               ; preds = %if.then20.i
  %sub22.i = add nsw i32 %.sroa.speculated, -1
  %conv23.i = sext i32 %sub22.i to i64
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i, %for.body28.lr.ph.i
  %i21.0116.i = phi i64 [ %conv23.i, %for.body28.lr.ph.i ], [ %dec34.i, %for.body28.i ]
  %r.2115.i = phi i32 [ %15, %for.body28.lr.ph.i ], [ %add.i80.i, %for.body28.i ]
  %sext.i = shl i64 %i21.0116.i, 32
  %idxprom.i82.i = ashr exact i64 %sext.i, 32
  %arrayidx.i83.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %idxprom.i82.i
  %31 = load i32, i32* %arrayidx.i83.i, align 4, !tbaa !26
  %arrayidx31.i = getelementptr inbounds i32, i32* %.pre31, i64 %i21.0116.i
  store i32 %r.2115.i, i32* %arrayidx31.i, align 4, !tbaa !26
  %add.i80.i = add nsw i32 %31, %r.2115.i
  %dec34.i = add nsw i64 %i21.0116.i, -1
  %cmp26.i = icmp sgt i64 %i21.0116.i, %conv25.i
  br i1 %cmp26.i, label %for.body28.i, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit

if.else36.i:                                      ; preds = %if.else18.i
  %cmp39118.i = icmp slt i32 %add2, %.sroa.speculated
  br i1 %cmp39118.i, label %for.body41.lr.ph.i, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit

for.body41.lr.ph.i:                               ; preds = %if.else36.i
  %32 = sext i32 %add2 to i64
  %wide.trip.count127.i = sext i32 %.sroa.speculated to i64
  %33 = sub nsw i64 %wide.trip.count127.i, %32
  %34 = xor i64 %32, -1
  %35 = add nsw i64 %34, %wide.trip.count127.i
  %xtraiter48 = and i64 %33, 7
  %lcmp.mod49 = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49, label %for.body41.i.prol.loopexit, label %for.body41.i.prol.preheader

for.body41.i.prol.preheader:                      ; preds = %for.body41.lr.ph.i
  br label %for.body41.i.prol

for.body41.i.prol:                                ; preds = %for.body41.i.prol.preheader, %for.body41.i.prol
  %indvars.iv125.i.prol = phi i64 [ %indvars.iv.next126.i.prol, %for.body41.i.prol ], [ %32, %for.body41.i.prol.preheader ]
  %r.3119.i.prol = phi i32 [ %add.i.i.prol, %for.body41.i.prol ], [ %15, %for.body41.i.prol.preheader ]
  %prol.iter50 = phi i64 [ %prol.iter50.sub, %for.body41.i.prol ], [ %xtraiter48, %for.body41.i.prol.preheader ]
  %arrayidx.i79.i.prol = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv125.i.prol
  %36 = load i32, i32* %arrayidx.i79.i.prol, align 4, !tbaa !26
  %arrayidx45.i.prol = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv125.i.prol
  store i32 %r.3119.i.prol, i32* %arrayidx45.i.prol, align 4, !tbaa !26
  %add.i.i.prol = add nsw i32 %36, %r.3119.i.prol
  %indvars.iv.next126.i.prol = add nsw i64 %indvars.iv125.i.prol, 1
  %prol.iter50.sub = add nsw i64 %prol.iter50, -1
  %prol.iter50.cmp = icmp eq i64 %prol.iter50.sub, 0
  br i1 %prol.iter50.cmp, label %for.body41.i.prol.loopexit, label %for.body41.i.prol, !llvm.loop !208

for.body41.i.prol.loopexit:                       ; preds = %for.body41.i.prol, %for.body41.lr.ph.i
  %indvars.iv125.i.unr = phi i64 [ %32, %for.body41.lr.ph.i ], [ %indvars.iv.next126.i.prol, %for.body41.i.prol ]
  %r.3119.i.unr = phi i32 [ %15, %for.body41.lr.ph.i ], [ %add.i.i.prol, %for.body41.i.prol ]
  %37 = icmp ult i64 %35, 7
  br i1 %37, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit, label %for.body41.i.preheader

for.body41.i.preheader:                           ; preds = %for.body41.i.prol.loopexit
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.preheader, %for.body41.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i.7, %for.body41.i ], [ %indvars.iv125.i.unr, %for.body41.i.preheader ]
  %r.3119.i = phi i32 [ %add.i.i.7, %for.body41.i ], [ %r.3119.i.unr, %for.body41.i.preheader ]
  %arrayidx.i79.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv125.i
  %38 = load i32, i32* %arrayidx.i79.i, align 4, !tbaa !26
  %arrayidx45.i = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv125.i
  store i32 %r.3119.i, i32* %arrayidx45.i, align 4, !tbaa !26
  %add.i.i = add nsw i32 %38, %r.3119.i
  %indvars.iv.next126.i = add nsw i64 %indvars.iv125.i, 1
  %arrayidx.i79.i.1 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next126.i
  %39 = load i32, i32* %arrayidx.i79.i.1, align 4, !tbaa !26
  %arrayidx45.i.1 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next126.i
  store i32 %add.i.i, i32* %arrayidx45.i.1, align 4, !tbaa !26
  %add.i.i.1 = add nsw i32 %39, %add.i.i
  %indvars.iv.next126.i.1 = add nsw i64 %indvars.iv125.i, 2
  %arrayidx.i79.i.2 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next126.i.1
  %40 = load i32, i32* %arrayidx.i79.i.2, align 4, !tbaa !26
  %arrayidx45.i.2 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next126.i.1
  store i32 %add.i.i.1, i32* %arrayidx45.i.2, align 4, !tbaa !26
  %add.i.i.2 = add nsw i32 %40, %add.i.i.1
  %indvars.iv.next126.i.2 = add nsw i64 %indvars.iv125.i, 3
  %arrayidx.i79.i.3 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next126.i.2
  %41 = load i32, i32* %arrayidx.i79.i.3, align 4, !tbaa !26
  %arrayidx45.i.3 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next126.i.2
  store i32 %add.i.i.2, i32* %arrayidx45.i.3, align 4, !tbaa !26
  %add.i.i.3 = add nsw i32 %41, %add.i.i.2
  %indvars.iv.next126.i.3 = add nsw i64 %indvars.iv125.i, 4
  %arrayidx.i79.i.4 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next126.i.3
  %42 = load i32, i32* %arrayidx.i79.i.4, align 4, !tbaa !26
  %arrayidx45.i.4 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next126.i.3
  store i32 %add.i.i.3, i32* %arrayidx45.i.4, align 4, !tbaa !26
  %add.i.i.4 = add nsw i32 %42, %add.i.i.3
  %indvars.iv.next126.i.4 = add nsw i64 %indvars.iv125.i, 5
  %arrayidx.i79.i.5 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next126.i.4
  %43 = load i32, i32* %arrayidx.i79.i.5, align 4, !tbaa !26
  %arrayidx45.i.5 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next126.i.4
  store i32 %add.i.i.4, i32* %arrayidx45.i.5, align 4, !tbaa !26
  %add.i.i.5 = add nsw i32 %43, %add.i.i.4
  %indvars.iv.next126.i.5 = add nsw i64 %indvars.iv125.i, 6
  %arrayidx.i79.i.6 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next126.i.5
  %44 = load i32, i32* %arrayidx.i79.i.6, align 4, !tbaa !26
  %arrayidx45.i.6 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next126.i.5
  store i32 %add.i.i.5, i32* %arrayidx45.i.6, align 4, !tbaa !26
  %add.i.i.6 = add nsw i32 %44, %add.i.i.5
  %indvars.iv.next126.i.6 = add nsw i64 %indvars.iv125.i, 7
  %arrayidx.i79.i.7 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next126.i.6
  %45 = load i32, i32* %arrayidx.i79.i.7, align 4, !tbaa !26
  %arrayidx45.i.7 = getelementptr inbounds i32, i32* %.pre31, i64 %indvars.iv.next126.i.6
  store i32 %add.i.i.6, i32* %arrayidx45.i.7, align 4, !tbaa !26
  %add.i.i.7 = add nsw i32 %45, %add.i.i.6
  %indvars.iv.next126.i.7 = add nsw i64 %indvars.iv125.i, 8
  %exitcond128.i.7 = icmp eq i64 %indvars.iv.next126.i.7, %wide.trip.count127.i
  br i1 %exitcond128.i.7, label %_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit, label %for.body41.i

_ZN8sequence10scanSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb.exit: ; preds = %for.body11.i, %for.body.i, %for.body41.i, %for.body28.i, %for.body11.i.prol.loopexit, %for.body41.i.prol.loopexit, %if.then3.i, %if.else.i, %if.then20.i, %if.else36.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %46 = add nuw i32 %__index.addr.025, 1
  %exitcond = icmp eq i32 %46, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN8sequence8maxIndexIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_(i32 %s, i32 %e, float* %g.coerce) local_unnamed_addr #6 comdat {
entry:
  %f = alloca %"struct.std::less", align 1
  %g = alloca %"struct.sequence::getA.12", align 8
  %Idx = alloca i32*, align 8
  %_ss = alloca i32, align 4
  %_ee = alloca i32, align 4
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon.13, align 8
  %coerce.dive = getelementptr inbounds %"struct.sequence::getA.12", %"struct.sequence::getA.12"* %g, i64 0, i32 0
  store float* %g.coerce, float** %coerce.dive, align 8
  %sub = sub nsw i32 %e, %s
  %sub1 = add nsw i32 %sub, -1
  %div = sdiv i32 %sub1, 1024
  %cmp = icmp slt i32 %sub, 2049
  br i1 %cmp, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %entry
  %j.015.i = add nsw i32 %s, 1
  %cmp16.i = icmp slt i32 %j.015.i, %e
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then
  %idxprom.i.i = sext i32 %s to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %g.coerce, i64 %idxprom.i.i
  %0 = bitcast float* %arrayidx.i.i to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !27
  %2 = sext i32 %j.015.i to i64
  %3 = xor i32 %s, -1
  %4 = add i32 %3, %e
  %5 = sub i32 -2, %s
  %6 = add i32 %5, %e
  %xtraiter = and i32 %4, 3
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %cleanup.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = sub i32 %4, %xtraiter
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %2, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %k.018.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %k.1.i.3, %for.body.i ]
  %r.sroa.0.017.i = phi i32 [ %1, %for.body.lr.ph.i.new ], [ %r.sroa.0.1.i.3, %for.body.i ]
  %niter = phi i32 [ %unroll_iter, %for.body.lr.ph.i.new ], [ %niter.nsub.3, %for.body.i ]
  %arrayidx.i11.i = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.i
  %8 = load float, float* %arrayidx.i11.i, align 4, !tbaa !27
  %9 = bitcast float %8 to i32
  %10 = bitcast i32 %r.sroa.0.017.i to float
  %cmp.i.i = fcmp olt float %8, %10
  %r.sroa.0.1.i = select i1 %cmp.i.i, i32 %9, i32 %r.sroa.0.017.i
  %11 = trunc i64 %indvars.iv.i to i32
  %k.1.i = select i1 %cmp.i.i, i32 %11, i32 %k.018.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %arrayidx.i11.i.1 = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.next.i
  %12 = load float, float* %arrayidx.i11.i.1, align 4, !tbaa !27
  %13 = bitcast float %12 to i32
  %14 = bitcast i32 %r.sroa.0.1.i to float
  %cmp.i.i.1 = fcmp olt float %12, %14
  %r.sroa.0.1.i.1 = select i1 %cmp.i.i.1, i32 %13, i32 %r.sroa.0.1.i
  %15 = trunc i64 %indvars.iv.next.i to i32
  %k.1.i.1 = select i1 %cmp.i.i.1, i32 %15, i32 %k.1.i
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %arrayidx.i11.i.2 = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.next.i.1
  %16 = load float, float* %arrayidx.i11.i.2, align 4, !tbaa !27
  %17 = bitcast float %16 to i32
  %18 = bitcast i32 %r.sroa.0.1.i.1 to float
  %cmp.i.i.2 = fcmp olt float %16, %18
  %r.sroa.0.1.i.2 = select i1 %cmp.i.i.2, i32 %17, i32 %r.sroa.0.1.i.1
  %19 = trunc i64 %indvars.iv.next.i.1 to i32
  %k.1.i.2 = select i1 %cmp.i.i.2, i32 %19, i32 %k.1.i.1
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %arrayidx.i11.i.3 = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.next.i.2
  %20 = load float, float* %arrayidx.i11.i.3, align 4, !tbaa !27
  %21 = bitcast float %20 to i32
  %22 = bitcast i32 %r.sroa.0.1.i.2 to float
  %cmp.i.i.3 = fcmp olt float %20, %22
  %r.sroa.0.1.i.3 = select i1 %cmp.i.i.3, i32 %21, i32 %r.sroa.0.1.i.2
  %23 = trunc i64 %indvars.iv.next.i.2 to i32
  %k.1.i.3 = select i1 %cmp.i.i.3, i32 %23, i32 %k.1.i.2
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %niter.nsub.3 = add i32 %niter, -4
  %niter.ncmp.3 = icmp eq i32 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %cleanup.loopexit.unr-lcssa, label %for.body.i

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i32 %div, 1
  %24 = bitcast i32** %Idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #2
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call4 = tail call noalias i8* @malloc(i64 %mul) #2
  %25 = bitcast i32** %Idx to i8**
  store i8* %call4, i8** %25, align 8, !tbaa !24
  %26 = bitcast i32* %_ss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #2
  store i32 %s, i32* %_ss, align 4, !tbaa !26
  %27 = bitcast i32* %_ee to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #2
  store i32 %e, i32* %_ee, align 4, !tbaa !26
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  %29 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %agg.captured, i64 0, i32 0
  store i32* %i, i32** %29, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %agg.captured, i64 0, i32 1
  store i32* %_ss, i32** %30, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %agg.captured, i64 0, i32 2
  store i32* %_ee, i32** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %agg.captured, i64 0, i32 3
  store i32** %Idx, i32*** %32, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %agg.captured, i64 0, i32 4
  store %"struct.std::less"* %f, %"struct.std::less"** %33, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %agg.captured, i64 0, i32 5
  store %"struct.sequence::getA.12"* %g, %"struct.sequence::getA.12"** %34, align 8, !tbaa !24
  %35 = bitcast %struct.anon.13* %agg.captured to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.13*, i32, i32)* @__cilk_for_helper.26 to void (i8*, i32, i32)*), i8* nonnull %35, i32 %add, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #2
  %36 = load i32*, i32** %Idx, align 8, !tbaa !24
  %37 = load i32, i32* %36, align 4, !tbaa !26
  %38 = load float*, float** %coerce.dive, align 8, !tbaa !209
  %39 = sext i32 %div to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %40 = bitcast i32* %36 to i8*
  call void @free(i8* nonnull %40) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #2
  br label %cleanup

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %for.body.lr.ph ]
  %k.047 = phi i32 [ %k.1, %for.body ], [ %37, %for.body.lr.ph ]
  %arrayidx16 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv
  %41 = load i32, i32* %arrayidx16, align 4, !tbaa !26
  %idxprom.i42 = sext i32 %41 to i64
  %arrayidx.i43 = getelementptr inbounds float, float* %38, i64 %idxprom.i42
  %42 = load float, float* %arrayidx.i43, align 4, !tbaa !27
  %idxprom.i = sext i32 %k.047 to i64
  %arrayidx.i = getelementptr inbounds float, float* %38, i64 %idxprom.i
  %43 = load float, float* %arrayidx.i, align 4, !tbaa !27
  %cmp.i = fcmp olt float %42, %43
  %k.1 = select i1 %cmp.i, i32 %41, i32 %k.047
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp15 = icmp slt i64 %indvars.iv, %39
  br i1 %cmp15, label %for.body, label %for.cond.cleanup

cleanup.loopexit.unr-lcssa:                       ; preds = %for.body.i, %for.body.lr.ph.i
  %k.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %k.1.i.3, %for.body.i ]
  %indvars.iv.i.unr = phi i64 [ %2, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %k.018.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %k.1.i.3, %for.body.i ]
  %r.sroa.0.017.i.unr = phi i32 [ %1, %for.body.lr.ph.i ], [ %r.sroa.0.1.i.3, %for.body.i ]
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %cleanup, label %for.body.i.epil.preheader

for.body.i.epil.preheader:                        ; preds = %cleanup.loopexit.unr-lcssa
  br label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.body.i.epil.preheader, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.body.i.epil.preheader ]
  %k.018.i.epil = phi i32 [ %k.1.i.epil, %for.body.i.epil ], [ %k.018.i.unr, %for.body.i.epil.preheader ]
  %r.sroa.0.017.i.epil = phi i32 [ %r.sroa.0.1.i.epil, %for.body.i.epil ], [ %r.sroa.0.017.i.unr, %for.body.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.sub, %for.body.i.epil ], [ %xtraiter, %for.body.i.epil.preheader ]
  %arrayidx.i11.i.epil = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.i.epil
  %44 = load float, float* %arrayidx.i11.i.epil, align 4, !tbaa !27
  %45 = bitcast float %44 to i32
  %46 = bitcast i32 %r.sroa.0.017.i.epil to float
  %cmp.i.i.epil = fcmp olt float %44, %46
  %r.sroa.0.1.i.epil = select i1 %cmp.i.i.epil, i32 %45, i32 %r.sroa.0.017.i.epil
  %47 = trunc i64 %indvars.iv.i.epil to i32
  %k.1.i.epil = select i1 %cmp.i.i.epil, i32 %47, i32 %k.018.i.epil
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.sub = add nsw i32 %epil.iter, -1
  %epil.iter.cmp = icmp eq i32 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %cleanup, label %for.body.i.epil, !llvm.loop !211

cleanup:                                          ; preds = %for.body.i.epil, %cleanup.loopexit.unr-lcssa, %if.then, %for.cond.cleanup
  %retval.0 = phi i32 [ %k.1, %for.cond.cleanup ], [ 0, %if.then ], [ %k.1.i.lcssa.ph, %cleanup.loopexit.unr-lcssa ], [ %k.1.i.epil, %for.body.i.epil ]
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.26(%struct.anon.13* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !212
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %__context, i64 0, i32 5
  %7 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %__context, i64 0, i32 3
  %8 = sext i32 %add to i64
  %.pre = load i32*, i32** %4, align 8, !tbaa !214
  %.pre21 = load i32*, i32** %5, align 8, !tbaa !215
  %.pre22 = load %"struct.sequence::getA.12"*, %"struct.sequence::getA.12"** %6, align 8, !tbaa !216
  %agg.tmp4.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.sequence::getA.12", %"struct.sequence::getA.12"* %.pre22, i64 0, i32 0
  %9 = shl i32 %add, 10
  %10 = sub i32 -2, %9
  %11 = sub i32 -1025, %9
  %12 = sub i32 -3, %9
  br label %loop.body

loop.cond.cleanup:                                ; preds = %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit, %entry
  ret void

loop.body:                                        ; preds = %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit, %loop.body.lr.ph
  %indvar = phi i32 [ %indvar.next, %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit ], [ 0, %loop.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit ], [ %8, %loop.body.lr.ph ]
  %__index.addr.020 = phi i32 [ %53, %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit ], [ %__low, %loop.body.lr.ph ]
  %13 = mul i32 %indvar, -1024
  %14 = load i32, i32* %.pre, align 4, !tbaa !26
  %15 = trunc i64 %indvars.iv to i32
  %mul1 = shl nsw i32 %15, 10
  %add2 = add nsw i32 %14, %mul1
  %add3 = add nsw i32 %add2, 1024
  %16 = load i32, i32* %.pre21, align 4, !tbaa !26
  %cmp.i = icmp slt i32 %16, %add3
  %.sroa.speculated = select i1 %cmp.i, i32 %16, i32 %add3
  %agg.tmp4.sroa.0.0.copyload = load float*, float** %agg.tmp4.sroa.0.0..sroa_idx, align 8
  %j.015.i = add nsw i32 %add2, 1
  %cmp16.i = icmp slt i32 %j.015.i, %.sroa.speculated
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit

for.body.lr.ph.i:                                 ; preds = %loop.body
  %17 = add i32 %12, %13
  %18 = add i32 %11, %13
  %19 = add i32 %10, %13
  %idxprom.i.i = sext i32 %add2 to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %agg.tmp4.sroa.0.0.copyload, i64 %idxprom.i.i
  %20 = bitcast float* %arrayidx.i.i to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !27
  %22 = sext i32 %j.015.i to i64
  %23 = sub i32 %19, %14
  %24 = sub i32 %18, %14
  %25 = xor i32 %16, -1
  %26 = icmp sgt i32 %24, %25
  %smax = select i1 %26, i32 %24, i32 %25
  %27 = sub i32 %23, %smax
  %28 = sub i32 %17, %14
  %29 = sub i32 %28, %smax
  %xtraiter = and i32 %27, 3
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = sub i32 %27, %xtraiter
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %22, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %k.018.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %k.1.i.3, %for.body.i ]
  %r.sroa.0.017.i = phi i32 [ %21, %for.body.lr.ph.i.new ], [ %r.sroa.0.1.i.3, %for.body.i ]
  %niter = phi i32 [ %unroll_iter, %for.body.lr.ph.i.new ], [ %niter.nsub.3, %for.body.i ]
  %arrayidx.i11.i = getelementptr inbounds float, float* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.i
  %31 = load float, float* %arrayidx.i11.i, align 4, !tbaa !27
  %32 = bitcast float %31 to i32
  %33 = bitcast i32 %r.sroa.0.017.i to float
  %cmp.i.i = fcmp olt float %31, %33
  %r.sroa.0.1.i = select i1 %cmp.i.i, i32 %32, i32 %r.sroa.0.017.i
  %34 = trunc i64 %indvars.iv.i to i32
  %k.1.i = select i1 %cmp.i.i, i32 %34, i32 %k.018.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %arrayidx.i11.i.1 = getelementptr inbounds float, float* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i
  %35 = load float, float* %arrayidx.i11.i.1, align 4, !tbaa !27
  %36 = bitcast float %35 to i32
  %37 = bitcast i32 %r.sroa.0.1.i to float
  %cmp.i.i.1 = fcmp olt float %35, %37
  %r.sroa.0.1.i.1 = select i1 %cmp.i.i.1, i32 %36, i32 %r.sroa.0.1.i
  %38 = trunc i64 %indvars.iv.next.i to i32
  %k.1.i.1 = select i1 %cmp.i.i.1, i32 %38, i32 %k.1.i
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %arrayidx.i11.i.2 = getelementptr inbounds float, float* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i.1
  %39 = load float, float* %arrayidx.i11.i.2, align 4, !tbaa !27
  %40 = bitcast float %39 to i32
  %41 = bitcast i32 %r.sroa.0.1.i.1 to float
  %cmp.i.i.2 = fcmp olt float %39, %41
  %r.sroa.0.1.i.2 = select i1 %cmp.i.i.2, i32 %40, i32 %r.sroa.0.1.i.1
  %42 = trunc i64 %indvars.iv.next.i.1 to i32
  %k.1.i.2 = select i1 %cmp.i.i.2, i32 %42, i32 %k.1.i.1
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %arrayidx.i11.i.3 = getelementptr inbounds float, float* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.next.i.2
  %43 = load float, float* %arrayidx.i11.i.3, align 4, !tbaa !27
  %44 = bitcast float %43 to i32
  %45 = bitcast i32 %r.sroa.0.1.i.2 to float
  %cmp.i.i.3 = fcmp olt float %43, %45
  %r.sroa.0.1.i.3 = select i1 %cmp.i.i.3, i32 %44, i32 %r.sroa.0.1.i.2
  %46 = trunc i64 %indvars.iv.next.i.2 to i32
  %k.1.i.3 = select i1 %cmp.i.i.3, i32 %46, i32 %k.1.i.2
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %niter.nsub.3 = add i32 %niter, -4
  %niter.ncmp.3 = icmp eq i32 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit.loopexit.unr-lcssa, label %for.body.i

_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit.loopexit.unr-lcssa: ; preds = %for.body.i, %for.body.lr.ph.i
  %k.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %k.1.i.3, %for.body.i ]
  %indvars.iv.i.unr = phi i64 [ %22, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %k.018.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %k.1.i.3, %for.body.i ]
  %r.sroa.0.017.i.unr = phi i32 [ %21, %for.body.lr.ph.i ], [ %r.sroa.0.1.i.3, %for.body.i ]
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit, label %for.body.i.epil.preheader

for.body.i.epil.preheader:                        ; preds = %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit.loopexit.unr-lcssa
  br label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.body.i.epil.preheader, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.body.i.epil.preheader ]
  %k.018.i.epil = phi i32 [ %k.1.i.epil, %for.body.i.epil ], [ %k.018.i.unr, %for.body.i.epil.preheader ]
  %r.sroa.0.017.i.epil = phi i32 [ %r.sroa.0.1.i.epil, %for.body.i.epil ], [ %r.sroa.0.017.i.unr, %for.body.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.sub, %for.body.i.epil ], [ %xtraiter, %for.body.i.epil.preheader ]
  %arrayidx.i11.i.epil = getelementptr inbounds float, float* %agg.tmp4.sroa.0.0.copyload, i64 %indvars.iv.i.epil
  %47 = load float, float* %arrayidx.i11.i.epil, align 4, !tbaa !27
  %48 = bitcast float %47 to i32
  %49 = bitcast i32 %r.sroa.0.017.i.epil to float
  %cmp.i.i.epil = fcmp olt float %47, %49
  %r.sroa.0.1.i.epil = select i1 %cmp.i.i.epil, i32 %48, i32 %r.sroa.0.017.i.epil
  %50 = trunc i64 %indvars.iv.i.epil to i32
  %k.1.i.epil = select i1 %cmp.i.i.epil, i32 %50, i32 %k.018.i.epil
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.sub = add nsw i32 %epil.iter, -1
  %epil.iter.cmp = icmp eq i32 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit, label %for.body.i.epil, !llvm.loop !217

_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit: ; preds = %for.body.i.epil, %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit.loopexit.unr-lcssa, %loop.body
  %k.0.lcssa.i = phi i32 [ 0, %loop.body ], [ %k.1.i.lcssa.ph, %_ZN8sequence14maxIndexSerialIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_.exit.loopexit.unr-lcssa ], [ %k.1.i.epil, %for.body.i.epil ]
  %51 = load i32**, i32*** %7, align 8, !tbaa !218
  %52 = load i32*, i32** %51, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds i32, i32* %52, i64 %indvars.iv
  store i32 %k.0.lcssa.i, i32* %arrayidx, align 4, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %53 = add nuw i32 %__index.addr.020, 1
  %exitcond = icmp eq i32 %53, %__high
  %indvar.next = add nuw i32 %indvar, 1
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: uwtable
define linkonce_odr { %struct.event*, i64 } @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* %Out, i8* %Fl, i32 %s, i32 %e, %struct.event* %f.coerce) local_unnamed_addr #6 comdat {
entry:
  %f = alloca %"struct.sequence::getA.14", align 8
  %Out.addr = alloca %struct.event*, align 8
  %Fl.addr = alloca i8*, align 8
  %Sums = alloca i32*, align 8
  %_ss = alloca i32, align 4
  %_ee = alloca i32, align 4
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon.15, align 8
  %_ss22 = alloca i32, align 4
  %_ee23 = alloca i32, align 4
  %i30 = alloca i32, align 4
  %agg.captured37 = alloca %struct.anon.16, align 8
  %coerce.dive = getelementptr inbounds %"struct.sequence::getA.14", %"struct.sequence::getA.14"* %f, i64 0, i32 0
  store %struct.event* %f.coerce, %struct.event** %coerce.dive, align 8
  store %struct.event* %Out, %struct.event** %Out.addr, align 8, !tbaa !24
  store i8* %Fl, i8** %Fl.addr, align 8, !tbaa !24
  %sub = sub nsw i32 %e, %s
  %sub1 = add nsw i32 %sub, -1
  %div = sdiv i32 %sub1, 2048
  %add = add nsw i32 %div, 1
  %cmp = icmp slt i32 %sub, 2049
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %call = tail call { %struct.event*, i64 } @_ZN8sequence10packSerialI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* %Out, i8* %Fl, i32 %s, i32 %e, %struct.event* %f.coerce)
  %0 = extractvalue { %struct.event*, i64 } %call, 0
  %1 = extractvalue { %struct.event*, i64 } %call, 1
  br label %cleanup

if.end14:                                         ; preds = %entry
  %2 = bitcast i32** %Sums to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #2
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call3 = tail call noalias i8* @malloc(i64 %mul) #2
  %3 = bitcast i32** %Sums to i8**
  store i8* %call3, i8** %3, align 8, !tbaa !24
  %4 = bitcast i32* %_ss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #2
  store i32 %s, i32* %_ss, align 4, !tbaa !26
  %5 = bitcast i32* %_ee to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #2
  store i32 %e, i32* %_ee, align 4, !tbaa !26
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  %7 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %agg.captured, i64 0, i32 0
  store i32* %i, i32** %7, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %agg.captured, i64 0, i32 1
  store i32* %_ss, i32** %8, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %agg.captured, i64 0, i32 2
  store i32* %_ee, i32** %9, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %agg.captured, i64 0, i32 3
  store i32** %Sums, i32*** %10, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %agg.captured, i64 0, i32 4
  store i8** %Fl.addr, i8*** %11, align 8, !tbaa !24
  %12 = bitcast %struct.anon.15* %agg.captured to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.15*, i32, i32)* @__cilk_for_helper.27 to void (i8*, i32, i32)*), i8* nonnull %12, i32 %add, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #2
  %13 = load i32*, i32** %Sums, align 8, !tbaa !24
  %call.i = call i32 @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb(i32* %13, i32 0, i32 %add, i32* %13, i32 0, i1 zeroext false, i1 zeroext false)
  %cmp16 = icmp eq %struct.event* %Out, null
  %conv18 = sext i32 %call.i to i64
  br i1 %cmp16, label %if.then17, label %if.end38

if.then17:                                        ; preds = %if.end14
  %mul19 = shl nsw i64 %conv18, 3
  %call20 = call noalias i8* @malloc(i64 %mul19) #2
  %14 = bitcast %struct.event** %Out.addr to i8**
  store i8* %call20, i8** %14, align 8, !tbaa !24
  br label %if.end38

if.end38:                                         ; preds = %if.end14, %if.then17
  %15 = bitcast i32* %_ss22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #2
  store i32 %s, i32* %_ss22, align 4, !tbaa !26
  %16 = bitcast i32* %_ee23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #2
  store i32 %e, i32* %_ee23, align 4, !tbaa !26
  %17 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #2
  store i32 0, i32* %i30, align 4, !tbaa !26
  %18 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %agg.captured37, i64 0, i32 0
  store i32* %i30, i32** %18, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %agg.captured37, i64 0, i32 1
  store i32* %_ss22, i32** %19, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %agg.captured37, i64 0, i32 2
  store i32* %_ee23, i32** %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %agg.captured37, i64 0, i32 3
  store %struct.event** %Out.addr, %struct.event*** %21, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %agg.captured37, i64 0, i32 4
  store i32** %Sums, i32*** %22, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %agg.captured37, i64 0, i32 5
  store i8** %Fl.addr, i8*** %23, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %agg.captured37, i64 0, i32 6
  store %"struct.sequence::getA.14"* %f, %"struct.sequence::getA.14"** %24, align 8, !tbaa !24
  %25 = bitcast %struct.anon.16* %agg.captured37 to i8*
  call void @__cilkrts_cilk_for_32(void (i8*, i32, i32)* bitcast (void (%struct.anon.16*, i32, i32)* @__cilk_for_helper.28 to void (i8*, i32, i32)*), i8* nonnull %25, i32 %add, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #2
  %26 = load i8*, i8** %3, align 8, !tbaa !24
  call void @free(i8* %26) #2
  %27 = load %struct.event*, %struct.event** %Out.addr, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then
  %retval.sroa.3.0 = phi i64 [ %1, %if.then ], [ %conv18, %if.end38 ]
  %retval.sroa.0.0 = phi %struct.event* [ %0, %if.then ], [ %27, %if.end38 ]
  %.fca.0.insert = insertvalue { %struct.event*, i64 } undef, %struct.event* %retval.sroa.0.0, 0
  %.fca.1.insert = insertvalue { %struct.event*, i64 } %.fca.0.insert, i64 %retval.sroa.3.0, 1
  ret { %struct.event*, i64 } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr { %struct.event*, i64 } @_ZN8sequence10packSerialI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* %Out, i8* %Fl, i32 %s, i32 %e, %struct.event* %f.coerce) local_unnamed_addr #6 comdat {
entry:
  %cmp = icmp eq %struct.event* %Out, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %s to i64
  %add.ptr = getelementptr inbounds i8, i8* %Fl, i64 %idx.ext
  %sub = sub nsw i32 %e, %s
  %cmp.i = icmp sgt i32 %sub, 127
  %and.i = and i32 %sub, 511
  %cmp1.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %land.lhs.true2.i, label %if.else.i

land.lhs.true2.i:                                 ; preds = %if.then
  %0 = ptrtoint i8* %add.ptr to i64
  %and3.i = and i64 %0, 3
  %cmp4.i = icmp eq i64 %and3.i, 0
  br i1 %cmp4.i, label %if.then.i, label %for.body28.lr.ph.i.thread

for.body28.lr.ph.i.thread:                        ; preds = %land.lhs.true2.i
  %wide.trip.count.i115 = zext i32 %sub to i64
  br label %vector.ph

if.then.i:                                        ; preds = %land.lhs.true2.i
  %shr74.i = lshr i32 %sub, 9
  %cmp561.i = icmp sgt i32 %sub, 511
  br i1 %cmp561.i, label %for.body.lr.ph.i, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %1 = bitcast i8* %add.ptr to i32*
  br label %vector.ph53

vector.ph53:                                      ; preds = %for.body.lr.ph.i, %vector.ph53
  %k.064.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc22.i, %vector.ph53 ]
  %IFl.063.i = phi i32* [ %1, %for.body.lr.ph.i ], [ %add.ptr.i, %vector.ph53 ]
  %r.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add20.i, %vector.ph53 ]
  %2 = bitcast i32* %IFl.063.i to <8 x i32>*
  %wide.load68 = load <8 x i32>, <8 x i32>* %2, align 4, !tbaa !26
  %3 = getelementptr i32, i32* %IFl.063.i, i64 8
  %4 = bitcast i32* %3 to <8 x i32>*
  %wide.load69 = load <8 x i32>, <8 x i32>* %4, align 4, !tbaa !26
  %5 = getelementptr i32, i32* %IFl.063.i, i64 16
  %6 = bitcast i32* %5 to <8 x i32>*
  %wide.load70 = load <8 x i32>, <8 x i32>* %6, align 4, !tbaa !26
  %7 = getelementptr i32, i32* %IFl.063.i, i64 24
  %8 = bitcast i32* %7 to <8 x i32>*
  %wide.load71 = load <8 x i32>, <8 x i32>* %8, align 4, !tbaa !26
  %9 = getelementptr inbounds i32, i32* %IFl.063.i, i64 32
  %10 = bitcast i32* %9 to <8 x i32>*
  %wide.load68.1 = load <8 x i32>, <8 x i32>* %10, align 4, !tbaa !26
  %11 = getelementptr i32, i32* %IFl.063.i, i64 40
  %12 = bitcast i32* %11 to <8 x i32>*
  %wide.load69.1 = load <8 x i32>, <8 x i32>* %12, align 4, !tbaa !26
  %13 = getelementptr i32, i32* %IFl.063.i, i64 48
  %14 = bitcast i32* %13 to <8 x i32>*
  %wide.load70.1 = load <8 x i32>, <8 x i32>* %14, align 4, !tbaa !26
  %15 = getelementptr i32, i32* %IFl.063.i, i64 56
  %16 = bitcast i32* %15 to <8 x i32>*
  %wide.load71.1 = load <8 x i32>, <8 x i32>* %16, align 4, !tbaa !26
  %17 = getelementptr inbounds i32, i32* %IFl.063.i, i64 64
  %18 = bitcast i32* %17 to <8 x i32>*
  %wide.load68.2 = load <8 x i32>, <8 x i32>* %18, align 4, !tbaa !26
  %19 = getelementptr i32, i32* %IFl.063.i, i64 72
  %20 = bitcast i32* %19 to <8 x i32>*
  %wide.load69.2 = load <8 x i32>, <8 x i32>* %20, align 4, !tbaa !26
  %21 = getelementptr i32, i32* %IFl.063.i, i64 80
  %22 = bitcast i32* %21 to <8 x i32>*
  %wide.load70.2 = load <8 x i32>, <8 x i32>* %22, align 4, !tbaa !26
  %23 = getelementptr i32, i32* %IFl.063.i, i64 88
  %24 = bitcast i32* %23 to <8 x i32>*
  %wide.load71.2 = load <8 x i32>, <8 x i32>* %24, align 4, !tbaa !26
  %25 = getelementptr inbounds i32, i32* %IFl.063.i, i64 96
  %26 = bitcast i32* %25 to <8 x i32>*
  %wide.load68.3 = load <8 x i32>, <8 x i32>* %26, align 4, !tbaa !26
  %27 = getelementptr i32, i32* %IFl.063.i, i64 104
  %28 = bitcast i32* %27 to <8 x i32>*
  %wide.load69.3 = load <8 x i32>, <8 x i32>* %28, align 4, !tbaa !26
  %29 = getelementptr i32, i32* %IFl.063.i, i64 112
  %30 = bitcast i32* %29 to <8 x i32>*
  %wide.load70.3 = load <8 x i32>, <8 x i32>* %30, align 4, !tbaa !26
  %31 = getelementptr i32, i32* %IFl.063.i, i64 120
  %32 = bitcast i32* %31 to <8 x i32>*
  %wide.load71.3 = load <8 x i32>, <8 x i32>* %32, align 4, !tbaa !26
  %33 = add <8 x i32> %wide.load69, %wide.load68
  %34 = add <8 x i32> %33, %wide.load70
  %35 = add <8 x i32> %34, %wide.load71
  %36 = add <8 x i32> %35, %wide.load68.1
  %37 = add <8 x i32> %36, %wide.load69.1
  %38 = add <8 x i32> %37, %wide.load70.1
  %bin.rdx72 = add <8 x i32> %38, %wide.load71.1
  %39 = add <8 x i32> %bin.rdx72, %wide.load68.2
  %40 = add <8 x i32> %39, %wide.load69.2
  %41 = add <8 x i32> %40, %wide.load70.2
  %bin.rdx73 = add <8 x i32> %41, %wide.load71.2
  %42 = add <8 x i32> %bin.rdx73, %wide.load68.3
  %43 = add <8 x i32> %42, %wide.load69.3
  %44 = add <8 x i32> %43, %wide.load70.3
  %bin.rdx74 = add <8 x i32> %44, %wide.load71.3
  %rdx.shuf75 = shufflevector <8 x i32> %bin.rdx74, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx76 = add <8 x i32> %rdx.shuf75, %bin.rdx74
  %rdx.shuf77 = shufflevector <8 x i32> %bin.rdx76, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx78 = add <8 x i32> %rdx.shuf77, %bin.rdx76
  %rdx.shuf79 = shufflevector <8 x i32> %bin.rdx78, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx80 = add <8 x i32> %rdx.shuf79, %bin.rdx78
  %45 = extractelement <8 x i32> %bin.rdx80, i32 0
  %and10.i = and i32 %45, 255
  %46 = lshr i32 %45, 8
  %and12.i = and i32 %46, 255
  %47 = lshr i32 %45, 16
  %and15.i = and i32 %47, 255
  %48 = lshr i32 %45, 24
  %add13.i = add i32 %and10.i, %r.062.i
  %add16.i = add i32 %add13.i, %48
  %add19.i = add i32 %add16.i, %and12.i
  %add20.i = add i32 %add19.i, %and15.i
  %add.ptr.i = getelementptr inbounds i32, i32* %IFl.063.i, i64 128
  %inc22.i = add nuw nsw i32 %k.064.i, 1
  %cmp5.i = icmp ult i32 %inc22.i, %shr74.i
  br i1 %cmp5.i, label %vector.ph53, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit

if.else.i:                                        ; preds = %if.then
  %cmp2665.i = icmp sgt i32 %sub, 0
  br i1 %cmp2665.i, label %for.body28.lr.ph.i, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit

for.body28.lr.ph.i:                               ; preds = %if.else.i
  %wide.trip.count.i = zext i32 %sub to i64
  %min.iters.check = icmp ult i32 %sub, 32
  br i1 %min.iters.check, label %for.body28.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body28.lr.ph.i.thread, %for.body28.lr.ph.i
  %wide.trip.count.i117 = phi i64 [ %wide.trip.count.i115, %for.body28.lr.ph.i.thread ], [ %wide.trip.count.i, %for.body28.lr.ph.i ]
  %n.vec = and i64 %wide.trip.count.i117, 4294967264
  %49 = add nsw i64 %n.vec, -32
  %50 = lshr exact i64 %49, 5
  %51 = add nuw nsw i64 %50, 1
  %xtraiter91 = and i64 %51, 3
  %52 = icmp ult i64 %49, 96
  br i1 %52, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter98 = sub nsw i64 %51, %xtraiter91
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %113, %vector.body ]
  %vec.phi37 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %114, %vector.body ]
  %vec.phi38 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %115, %vector.body ]
  %vec.phi39 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %116, %vector.body ]
  %niter99 = phi i64 [ %unroll_iter98, %vector.ph.new ], [ %niter99.nsub.3, %vector.body ]
  %53 = getelementptr inbounds i8, i8* %add.ptr, i64 %index
  %54 = bitcast i8* %53 to <8 x i8>*
  %wide.load = load <8 x i8>, <8 x i8>* %54, align 1, !tbaa !77
  %55 = getelementptr i8, i8* %53, i64 8
  %56 = bitcast i8* %55 to <8 x i8>*
  %wide.load40 = load <8 x i8>, <8 x i8>* %56, align 1, !tbaa !77
  %57 = getelementptr i8, i8* %53, i64 16
  %58 = bitcast i8* %57 to <8 x i8>*
  %wide.load41 = load <8 x i8>, <8 x i8>* %58, align 1, !tbaa !77
  %59 = getelementptr i8, i8* %53, i64 24
  %60 = bitcast i8* %59 to <8 x i8>*
  %wide.load42 = load <8 x i8>, <8 x i8>* %60, align 1, !tbaa !77
  %61 = zext <8 x i8> %wide.load to <8 x i32>
  %62 = zext <8 x i8> %wide.load40 to <8 x i32>
  %63 = zext <8 x i8> %wide.load41 to <8 x i32>
  %64 = zext <8 x i8> %wide.load42 to <8 x i32>
  %65 = add nuw nsw <8 x i32> %vec.phi, %61
  %66 = add nuw nsw <8 x i32> %vec.phi37, %62
  %67 = add nuw nsw <8 x i32> %vec.phi38, %63
  %68 = add nuw nsw <8 x i32> %vec.phi39, %64
  %index.next = or i64 %index, 32
  %69 = getelementptr inbounds i8, i8* %add.ptr, i64 %index.next
  %70 = bitcast i8* %69 to <8 x i8>*
  %wide.load.1 = load <8 x i8>, <8 x i8>* %70, align 1, !tbaa !77
  %71 = getelementptr i8, i8* %69, i64 8
  %72 = bitcast i8* %71 to <8 x i8>*
  %wide.load40.1 = load <8 x i8>, <8 x i8>* %72, align 1, !tbaa !77
  %73 = getelementptr i8, i8* %69, i64 16
  %74 = bitcast i8* %73 to <8 x i8>*
  %wide.load41.1 = load <8 x i8>, <8 x i8>* %74, align 1, !tbaa !77
  %75 = getelementptr i8, i8* %69, i64 24
  %76 = bitcast i8* %75 to <8 x i8>*
  %wide.load42.1 = load <8 x i8>, <8 x i8>* %76, align 1, !tbaa !77
  %77 = zext <8 x i8> %wide.load.1 to <8 x i32>
  %78 = zext <8 x i8> %wide.load40.1 to <8 x i32>
  %79 = zext <8 x i8> %wide.load41.1 to <8 x i32>
  %80 = zext <8 x i8> %wide.load42.1 to <8 x i32>
  %81 = add nuw nsw <8 x i32> %65, %77
  %82 = add nuw nsw <8 x i32> %66, %78
  %83 = add nuw nsw <8 x i32> %67, %79
  %84 = add nuw nsw <8 x i32> %68, %80
  %index.next.1 = or i64 %index, 64
  %85 = getelementptr inbounds i8, i8* %add.ptr, i64 %index.next.1
  %86 = bitcast i8* %85 to <8 x i8>*
  %wide.load.2 = load <8 x i8>, <8 x i8>* %86, align 1, !tbaa !77
  %87 = getelementptr i8, i8* %85, i64 8
  %88 = bitcast i8* %87 to <8 x i8>*
  %wide.load40.2 = load <8 x i8>, <8 x i8>* %88, align 1, !tbaa !77
  %89 = getelementptr i8, i8* %85, i64 16
  %90 = bitcast i8* %89 to <8 x i8>*
  %wide.load41.2 = load <8 x i8>, <8 x i8>* %90, align 1, !tbaa !77
  %91 = getelementptr i8, i8* %85, i64 24
  %92 = bitcast i8* %91 to <8 x i8>*
  %wide.load42.2 = load <8 x i8>, <8 x i8>* %92, align 1, !tbaa !77
  %93 = zext <8 x i8> %wide.load.2 to <8 x i32>
  %94 = zext <8 x i8> %wide.load40.2 to <8 x i32>
  %95 = zext <8 x i8> %wide.load41.2 to <8 x i32>
  %96 = zext <8 x i8> %wide.load42.2 to <8 x i32>
  %97 = add nuw nsw <8 x i32> %81, %93
  %98 = add nuw nsw <8 x i32> %82, %94
  %99 = add nuw nsw <8 x i32> %83, %95
  %100 = add nuw nsw <8 x i32> %84, %96
  %index.next.2 = or i64 %index, 96
  %101 = getelementptr inbounds i8, i8* %add.ptr, i64 %index.next.2
  %102 = bitcast i8* %101 to <8 x i8>*
  %wide.load.3 = load <8 x i8>, <8 x i8>* %102, align 1, !tbaa !77
  %103 = getelementptr i8, i8* %101, i64 8
  %104 = bitcast i8* %103 to <8 x i8>*
  %wide.load40.3 = load <8 x i8>, <8 x i8>* %104, align 1, !tbaa !77
  %105 = getelementptr i8, i8* %101, i64 16
  %106 = bitcast i8* %105 to <8 x i8>*
  %wide.load41.3 = load <8 x i8>, <8 x i8>* %106, align 1, !tbaa !77
  %107 = getelementptr i8, i8* %101, i64 24
  %108 = bitcast i8* %107 to <8 x i8>*
  %wide.load42.3 = load <8 x i8>, <8 x i8>* %108, align 1, !tbaa !77
  %109 = zext <8 x i8> %wide.load.3 to <8 x i32>
  %110 = zext <8 x i8> %wide.load40.3 to <8 x i32>
  %111 = zext <8 x i8> %wide.load41.3 to <8 x i32>
  %112 = zext <8 x i8> %wide.load42.3 to <8 x i32>
  %113 = add nuw nsw <8 x i32> %97, %109
  %114 = add nuw nsw <8 x i32> %98, %110
  %115 = add nuw nsw <8 x i32> %99, %111
  %116 = add nuw nsw <8 x i32> %100, %112
  %index.next.3 = add i64 %index, 128
  %niter99.nsub.3 = add i64 %niter99, -4
  %niter99.ncmp.3 = icmp eq i64 %niter99.nsub.3, 0
  br i1 %niter99.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !219

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa89.ph = phi <8 x i32> [ undef, %vector.ph ], [ %113, %vector.body ]
  %.lcssa88.ph = phi <8 x i32> [ undef, %vector.ph ], [ %114, %vector.body ]
  %.lcssa87.ph = phi <8 x i32> [ undef, %vector.ph ], [ %115, %vector.body ]
  %.lcssa86.ph = phi <8 x i32> [ undef, %vector.ph ], [ %116, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.phi.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %113, %vector.body ]
  %vec.phi37.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %114, %vector.body ]
  %vec.phi38.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %115, %vector.body ]
  %vec.phi39.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %116, %vector.body ]
  %lcmp.mod93 = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod93, label %middle.block, label %vector.body.epil.preheader

vector.body.epil.preheader:                       ; preds = %middle.block.unr-lcssa
  br label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil.preheader, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %vector.body.epil.preheader ]
  %vec.phi.epil = phi <8 x i32> [ %129, %vector.body.epil ], [ %vec.phi.unr, %vector.body.epil.preheader ]
  %vec.phi37.epil = phi <8 x i32> [ %130, %vector.body.epil ], [ %vec.phi37.unr, %vector.body.epil.preheader ]
  %vec.phi38.epil = phi <8 x i32> [ %131, %vector.body.epil ], [ %vec.phi38.unr, %vector.body.epil.preheader ]
  %vec.phi39.epil = phi <8 x i32> [ %132, %vector.body.epil ], [ %vec.phi39.unr, %vector.body.epil.preheader ]
  %epil.iter92 = phi i64 [ %epil.iter92.sub, %vector.body.epil ], [ %xtraiter91, %vector.body.epil.preheader ]
  %117 = getelementptr inbounds i8, i8* %add.ptr, i64 %index.epil
  %118 = bitcast i8* %117 to <8 x i8>*
  %wide.load.epil = load <8 x i8>, <8 x i8>* %118, align 1, !tbaa !77
  %119 = getelementptr i8, i8* %117, i64 8
  %120 = bitcast i8* %119 to <8 x i8>*
  %wide.load40.epil = load <8 x i8>, <8 x i8>* %120, align 1, !tbaa !77
  %121 = getelementptr i8, i8* %117, i64 16
  %122 = bitcast i8* %121 to <8 x i8>*
  %wide.load41.epil = load <8 x i8>, <8 x i8>* %122, align 1, !tbaa !77
  %123 = getelementptr i8, i8* %117, i64 24
  %124 = bitcast i8* %123 to <8 x i8>*
  %wide.load42.epil = load <8 x i8>, <8 x i8>* %124, align 1, !tbaa !77
  %125 = zext <8 x i8> %wide.load.epil to <8 x i32>
  %126 = zext <8 x i8> %wide.load40.epil to <8 x i32>
  %127 = zext <8 x i8> %wide.load41.epil to <8 x i32>
  %128 = zext <8 x i8> %wide.load42.epil to <8 x i32>
  %129 = add nuw nsw <8 x i32> %vec.phi.epil, %125
  %130 = add nuw nsw <8 x i32> %vec.phi37.epil, %126
  %131 = add nuw nsw <8 x i32> %vec.phi38.epil, %127
  %132 = add nuw nsw <8 x i32> %vec.phi39.epil, %128
  %index.next.epil = add i64 %index.epil, 32
  %epil.iter92.sub = add nsw i64 %epil.iter92, -1
  %epil.iter92.cmp = icmp eq i64 %epil.iter92.sub, 0
  br i1 %epil.iter92.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !220

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa89 = phi <8 x i32> [ %.lcssa89.ph, %middle.block.unr-lcssa ], [ %129, %vector.body.epil ]
  %.lcssa88 = phi <8 x i32> [ %.lcssa88.ph, %middle.block.unr-lcssa ], [ %130, %vector.body.epil ]
  %.lcssa87 = phi <8 x i32> [ %.lcssa87.ph, %middle.block.unr-lcssa ], [ %131, %vector.body.epil ]
  %.lcssa86 = phi <8 x i32> [ %.lcssa86.ph, %middle.block.unr-lcssa ], [ %132, %vector.body.epil ]
  %bin.rdx = add nuw <8 x i32> %.lcssa88, %.lcssa89
  %bin.rdx43 = add <8 x i32> %bin.rdx, %.lcssa87
  %bin.rdx44 = add <8 x i32> %bin.rdx43, %.lcssa86
  %rdx.shuf = shufflevector <8 x i32> %bin.rdx44, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx45 = add <8 x i32> %rdx.shuf, %bin.rdx44
  %rdx.shuf46 = shufflevector <8 x i32> %bin.rdx45, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx47 = add <8 x i32> %rdx.shuf46, %bin.rdx45
  %rdx.shuf48 = shufflevector <8 x i32> %bin.rdx47, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx49 = add <8 x i32> %rdx.shuf48, %bin.rdx47
  %133 = extractelement <8 x i32> %bin.rdx49, i32 0
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i117
  br i1 %cmp.n, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit, label %for.body28.i.preheader

for.body28.i.preheader:                           ; preds = %middle.block, %for.body28.lr.ph.i
  %wide.trip.count.i118 = phi i64 [ %wide.trip.count.i, %for.body28.lr.ph.i ], [ %wide.trip.count.i117, %middle.block ]
  %indvars.iv70.i.ph = phi i64 [ 0, %for.body28.lr.ph.i ], [ %n.vec, %middle.block ]
  %r.166.i.ph = phi i32 [ 0, %for.body28.lr.ph.i ], [ %133, %middle.block ]
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.preheader, %for.body28.i
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %for.body28.i ], [ %indvars.iv70.i.ph, %for.body28.i.preheader ]
  %r.166.i = phi i32 [ %add31.i, %for.body28.i ], [ %r.166.i.ph, %for.body28.i.preheader ]
  %arrayidx30.i = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv70.i
  %134 = load i8, i8* %arrayidx30.i, align 1, !tbaa !77, !range !153
  %135 = zext i8 %134 to i32
  %add31.i = add nuw nsw i32 %r.166.i, %135
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  %exitcond72.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count.i118
  br i1 %exitcond72.i, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit, label %for.body28.i, !llvm.loop !221

_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit:     ; preds = %for.body28.i, %vector.ph53, %middle.block, %if.then.i, %if.else.i
  %r.2.i = phi i32 [ 0, %if.then.i ], [ 0, %if.else.i ], [ %133, %middle.block ], [ %add20.i, %vector.ph53 ], [ %add31.i, %for.body28.i ]
  %conv = sext i32 %r.2.i to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = tail call noalias i8* @malloc(i64 %mul) #2
  %136 = bitcast i8* %call1 to %struct.event*
  br label %if.end

if.end:                                           ; preds = %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit, %entry
  %Out.addr.0 = phi %struct.event* [ %136, %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit ], [ %Out, %entry ]
  %cmp228 = icmp sgt i32 %e, %s
  br i1 %cmp228, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %137 = sext i32 %s to i64
  %wide.trip.count = sext i32 %e to i64
  %138 = sub nsw i64 %wide.trip.count, %137
  %139 = xor i64 %137, -1
  %140 = add nsw i64 %139, %wide.trip.count
  %xtraiter = and i64 %138, 3
  %141 = icmp ult i64 %140, 3
  br i1 %141, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %138, %xtraiter
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.inc.3, %for.body.lr.ph
  %k.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %k.1.3, %for.inc.3 ]
  %indvars.iv.unr = phi i64 [ %137, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.inc.3 ]
  %k.029.unr = phi i32 [ 0, %for.body.lr.ph ], [ %k.1.3, %for.inc.3 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil.preheader, %for.inc.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.inc.epil ], [ %indvars.iv.unr, %for.body.epil.preheader ]
  %k.029.epil = phi i32 [ %k.1.epil, %for.inc.epil ], [ %k.029.unr, %for.body.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.inc.epil ], [ %xtraiter, %for.body.epil.preheader ]
  %arrayidx.epil = getelementptr inbounds i8, i8* %Fl, i64 %indvars.iv.epil
  %142 = load i8, i8* %arrayidx.epil, align 1, !tbaa !77, !range !153
  %tobool.epil = icmp eq i8 %142, 0
  br i1 %tobool.epil, label %for.inc.epil, label %if.then3.epil

if.then3.epil:                                    ; preds = %for.body.epil
  %arrayidx.i25.epil = getelementptr inbounds %struct.event, %struct.event* %f.coerce, i64 %indvars.iv.epil
  %retval.sroa.0.0..sroa_cast.i.epil = bitcast %struct.event* %arrayidx.i25.epil to i64*
  %retval.sroa.0.0.copyload.i.epil = load i64, i64* %retval.sroa.0.0..sroa_cast.i.epil, align 4
  %inc.epil = add nsw i32 %k.029.epil, 1
  %idxprom5.epil = sext i32 %k.029.epil to i64
  %arrayidx6.epil = getelementptr inbounds %struct.event, %struct.event* %Out.addr.0, i64 %idxprom5.epil
  %ref.tmp.sroa.0.0..sroa_cast10.epil = bitcast %struct.event* %arrayidx6.epil to i64*
  store i64 %retval.sroa.0.0.copyload.i.epil, i64* %ref.tmp.sroa.0.0..sroa_cast10.epil, align 4
  br label %for.inc.epil

for.inc.epil:                                     ; preds = %if.then3.epil, %for.body.epil
  %k.1.epil = phi i32 [ %inc.epil, %if.then3.epil ], [ %k.029.epil, %for.body.epil ]
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, 1
  %epil.iter.sub = add nsw i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !222

for.cond.cleanup:                                 ; preds = %for.inc.epil, %for.cond.cleanup.loopexit.unr-lcssa, %if.end
  %k.0.lcssa = phi i32 [ 0, %if.end ], [ %k.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %k.1.epil, %for.inc.epil ]
  %conv9 = sext i32 %k.0.lcssa to i64
  %.fca.0.insert = insertvalue { %struct.event*, i64 } undef, %struct.event* %Out.addr.0, 0
  %.fca.1.insert = insertvalue { %struct.event*, i64 } %.fca.0.insert, i64 %conv9, 1
  ret { %struct.event*, i64 } %.fca.1.insert

for.body:                                         ; preds = %for.inc.3, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ %137, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.inc.3 ]
  %k.029 = phi i32 [ 0, %for.body.lr.ph.new ], [ %k.1.3, %for.inc.3 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.3, %for.inc.3 ]
  %arrayidx = getelementptr inbounds i8, i8* %Fl, i64 %indvars.iv
  %143 = load i8, i8* %arrayidx, align 1, !tbaa !77, !range !153
  %tobool = icmp eq i8 %143, 0
  br i1 %tobool, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  %arrayidx.i25 = getelementptr inbounds %struct.event, %struct.event* %f.coerce, i64 %indvars.iv
  %retval.sroa.0.0..sroa_cast.i = bitcast %struct.event* %arrayidx.i25 to i64*
  %retval.sroa.0.0.copyload.i = load i64, i64* %retval.sroa.0.0..sroa_cast.i, align 4
  %inc = add nsw i32 %k.029, 1
  %idxprom5 = sext i32 %k.029 to i64
  %arrayidx6 = getelementptr inbounds %struct.event, %struct.event* %Out.addr.0, i64 %idxprom5
  %ref.tmp.sroa.0.0..sroa_cast10 = bitcast %struct.event* %arrayidx6 to i64*
  store i64 %retval.sroa.0.0.copyload.i, i64* %ref.tmp.sroa.0.0..sroa_cast10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %k.1 = phi i32 [ %inc, %if.then3 ], [ %k.029, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %Fl, i64 %indvars.iv.next
  %144 = load i8, i8* %arrayidx.1, align 1, !tbaa !77, !range !153
  %tobool.1 = icmp eq i8 %144, 0
  br i1 %tobool.1, label %for.inc.1, label %if.then3.1

if.then3.1:                                       ; preds = %for.inc
  %arrayidx.i25.1 = getelementptr inbounds %struct.event, %struct.event* %f.coerce, i64 %indvars.iv.next
  %retval.sroa.0.0..sroa_cast.i.1 = bitcast %struct.event* %arrayidx.i25.1 to i64*
  %retval.sroa.0.0.copyload.i.1 = load i64, i64* %retval.sroa.0.0..sroa_cast.i.1, align 4
  %inc.1 = add nsw i32 %k.1, 1
  %idxprom5.1 = sext i32 %k.1 to i64
  %arrayidx6.1 = getelementptr inbounds %struct.event, %struct.event* %Out.addr.0, i64 %idxprom5.1
  %ref.tmp.sroa.0.0..sroa_cast10.1 = bitcast %struct.event* %arrayidx6.1 to i64*
  store i64 %retval.sroa.0.0.copyload.i.1, i64* %ref.tmp.sroa.0.0..sroa_cast10.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc
  %k.1.1 = phi i32 [ %inc.1, %if.then3.1 ], [ %k.1, %for.inc ]
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %Fl, i64 %indvars.iv.next.1
  %145 = load i8, i8* %arrayidx.2, align 1, !tbaa !77, !range !153
  %tobool.2 = icmp eq i8 %145, 0
  br i1 %tobool.2, label %for.inc.2, label %if.then3.2

if.then3.2:                                       ; preds = %for.inc.1
  %arrayidx.i25.2 = getelementptr inbounds %struct.event, %struct.event* %f.coerce, i64 %indvars.iv.next.1
  %retval.sroa.0.0..sroa_cast.i.2 = bitcast %struct.event* %arrayidx.i25.2 to i64*
  %retval.sroa.0.0.copyload.i.2 = load i64, i64* %retval.sroa.0.0..sroa_cast.i.2, align 4
  %inc.2 = add nsw i32 %k.1.1, 1
  %idxprom5.2 = sext i32 %k.1.1 to i64
  %arrayidx6.2 = getelementptr inbounds %struct.event, %struct.event* %Out.addr.0, i64 %idxprom5.2
  %ref.tmp.sroa.0.0..sroa_cast10.2 = bitcast %struct.event* %arrayidx6.2 to i64*
  store i64 %retval.sroa.0.0.copyload.i.2, i64* %ref.tmp.sroa.0.0..sroa_cast10.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.2, %for.inc.1
  %k.1.2 = phi i32 [ %inc.2, %if.then3.2 ], [ %k.1.1, %for.inc.1 ]
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %Fl, i64 %indvars.iv.next.2
  %146 = load i8, i8* %arrayidx.3, align 1, !tbaa !77, !range !153
  %tobool.3 = icmp eq i8 %146, 0
  br i1 %tobool.3, label %for.inc.3, label %if.then3.3

if.then3.3:                                       ; preds = %for.inc.2
  %arrayidx.i25.3 = getelementptr inbounds %struct.event, %struct.event* %f.coerce, i64 %indvars.iv.next.2
  %retval.sroa.0.0..sroa_cast.i.3 = bitcast %struct.event* %arrayidx.i25.3 to i64*
  %retval.sroa.0.0.copyload.i.3 = load i64, i64* %retval.sroa.0.0..sroa_cast.i.3, align 4
  %inc.3 = add nsw i32 %k.1.2, 1
  %idxprom5.3 = sext i32 %k.1.2 to i64
  %arrayidx6.3 = getelementptr inbounds %struct.event, %struct.event* %Out.addr.0, i64 %idxprom5.3
  %ref.tmp.sroa.0.0..sroa_cast10.3 = bitcast %struct.event* %arrayidx6.3 to i64*
  store i64 %retval.sroa.0.0.copyload.i.3, i64* %ref.tmp.sroa.0.0..sroa_cast10.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then3.3, %for.inc.2
  %k.1.3 = phi i32 [ %inc.3, %if.then3.3 ], [ %k.1.2, %for.inc.2 ]
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.27(%struct.anon.15* nocapture readonly %__context, i32 %__low, i32 %__high) #7 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !223
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %__context, i64 0, i32 1
  %5 = load i32*, i32** %4, align 8, !tbaa !225
  %6 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %__context, i64 0, i32 2
  %7 = load i32*, i32** %6, align 8, !tbaa !226
  %8 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %__context, i64 0, i32 4
  %9 = load i8**, i8*** %8, align 8, !tbaa !227
  %10 = load i8*, i8** %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %__context, i64 0, i32 3
  %12 = load i32**, i32*** %11, align 8, !tbaa !228
  %13 = load i32*, i32** %12, align 8, !tbaa !24
  %14 = sext i32 %add to i64
  br label %loop.body

loop.cond.cleanup:                                ; preds = %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit, %entry
  ret void

loop.body:                                        ; preds = %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit, %loop.body.lr.ph
  %indvars.iv = phi i64 [ %14, %loop.body.lr.ph ], [ %indvars.iv.next, %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit ]
  %__index.addr.022 = phi i32 [ %__low, %loop.body.lr.ph ], [ %154, %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit ]
  %15 = load i32, i32* %5, align 4, !tbaa !26
  %16 = trunc i64 %indvars.iv to i32
  %mul1 = shl nsw i32 %16, 11
  %add2 = add nsw i32 %15, %mul1
  %add3 = add nsw i32 %add2, 2048
  %17 = load i32, i32* %7, align 4, !tbaa !26
  %cmp.i = icmp slt i32 %17, %add3
  %.sroa.speculated = select i1 %cmp.i, i32 %17, i32 %add3
  %idx.ext = sext i32 %add2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %sub = sub nsw i32 %.sroa.speculated, %add2
  %cmp.i16 = icmp sgt i32 %sub, 127
  %and.i = and i32 %sub, 511
  %cmp1.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp.i16, %cmp1.i
  br i1 %or.cond.i, label %land.lhs.true2.i, label %if.else.i

land.lhs.true2.i:                                 ; preds = %loop.body
  %18 = ptrtoint i8* %add.ptr to i64
  %and3.i = and i64 %18, 3
  %cmp4.i = icmp eq i64 %and3.i, 0
  br i1 %cmp4.i, label %if.then.i, label %for.body28.lr.ph.i.thread

for.body28.lr.ph.i.thread:                        ; preds = %land.lhs.true2.i
  %wide.trip.count.i103 = zext i32 %sub to i64
  br label %vector.ph45

if.then.i:                                        ; preds = %land.lhs.true2.i
  %shr74.i = lshr i32 %sub, 9
  %cmp561.i = icmp sgt i32 %sub, 511
  br i1 %cmp561.i, label %for.body.lr.ph.i, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %19 = bitcast i8* %add.ptr to i32*
  br label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph.i, %vector.ph
  %k.064.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc22.i, %vector.ph ]
  %IFl.063.i = phi i32* [ %19, %for.body.lr.ph.i ], [ %add.ptr.i, %vector.ph ]
  %r.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add20.i, %vector.ph ]
  %20 = bitcast i32* %IFl.063.i to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %20, align 4, !tbaa !26
  %21 = getelementptr i32, i32* %IFl.063.i, i64 8
  %22 = bitcast i32* %21 to <8 x i32>*
  %wide.load32 = load <8 x i32>, <8 x i32>* %22, align 4, !tbaa !26
  %23 = getelementptr i32, i32* %IFl.063.i, i64 16
  %24 = bitcast i32* %23 to <8 x i32>*
  %wide.load33 = load <8 x i32>, <8 x i32>* %24, align 4, !tbaa !26
  %25 = getelementptr i32, i32* %IFl.063.i, i64 24
  %26 = bitcast i32* %25 to <8 x i32>*
  %wide.load34 = load <8 x i32>, <8 x i32>* %26, align 4, !tbaa !26
  %27 = getelementptr inbounds i32, i32* %IFl.063.i, i64 32
  %28 = bitcast i32* %27 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %28, align 4, !tbaa !26
  %29 = getelementptr i32, i32* %IFl.063.i, i64 40
  %30 = bitcast i32* %29 to <8 x i32>*
  %wide.load32.1 = load <8 x i32>, <8 x i32>* %30, align 4, !tbaa !26
  %31 = getelementptr i32, i32* %IFl.063.i, i64 48
  %32 = bitcast i32* %31 to <8 x i32>*
  %wide.load33.1 = load <8 x i32>, <8 x i32>* %32, align 4, !tbaa !26
  %33 = getelementptr i32, i32* %IFl.063.i, i64 56
  %34 = bitcast i32* %33 to <8 x i32>*
  %wide.load34.1 = load <8 x i32>, <8 x i32>* %34, align 4, !tbaa !26
  %35 = getelementptr inbounds i32, i32* %IFl.063.i, i64 64
  %36 = bitcast i32* %35 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %36, align 4, !tbaa !26
  %37 = getelementptr i32, i32* %IFl.063.i, i64 72
  %38 = bitcast i32* %37 to <8 x i32>*
  %wide.load32.2 = load <8 x i32>, <8 x i32>* %38, align 4, !tbaa !26
  %39 = getelementptr i32, i32* %IFl.063.i, i64 80
  %40 = bitcast i32* %39 to <8 x i32>*
  %wide.load33.2 = load <8 x i32>, <8 x i32>* %40, align 4, !tbaa !26
  %41 = getelementptr i32, i32* %IFl.063.i, i64 88
  %42 = bitcast i32* %41 to <8 x i32>*
  %wide.load34.2 = load <8 x i32>, <8 x i32>* %42, align 4, !tbaa !26
  %43 = getelementptr inbounds i32, i32* %IFl.063.i, i64 96
  %44 = bitcast i32* %43 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %44, align 4, !tbaa !26
  %45 = getelementptr i32, i32* %IFl.063.i, i64 104
  %46 = bitcast i32* %45 to <8 x i32>*
  %wide.load32.3 = load <8 x i32>, <8 x i32>* %46, align 4, !tbaa !26
  %47 = getelementptr i32, i32* %IFl.063.i, i64 112
  %48 = bitcast i32* %47 to <8 x i32>*
  %wide.load33.3 = load <8 x i32>, <8 x i32>* %48, align 4, !tbaa !26
  %49 = getelementptr i32, i32* %IFl.063.i, i64 120
  %50 = bitcast i32* %49 to <8 x i32>*
  %wide.load34.3 = load <8 x i32>, <8 x i32>* %50, align 4, !tbaa !26
  %51 = add <8 x i32> %wide.load32, %wide.load
  %52 = add <8 x i32> %51, %wide.load33
  %53 = add <8 x i32> %52, %wide.load34
  %54 = add <8 x i32> %53, %wide.load.1
  %55 = add <8 x i32> %54, %wide.load32.1
  %56 = add <8 x i32> %55, %wide.load33.1
  %bin.rdx = add <8 x i32> %56, %wide.load34.1
  %57 = add <8 x i32> %bin.rdx, %wide.load.2
  %58 = add <8 x i32> %57, %wide.load32.2
  %59 = add <8 x i32> %58, %wide.load33.2
  %bin.rdx35 = add <8 x i32> %59, %wide.load34.2
  %60 = add <8 x i32> %bin.rdx35, %wide.load.3
  %61 = add <8 x i32> %60, %wide.load32.3
  %62 = add <8 x i32> %61, %wide.load33.3
  %bin.rdx36 = add <8 x i32> %62, %wide.load34.3
  %rdx.shuf = shufflevector <8 x i32> %bin.rdx36, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx37 = add <8 x i32> %rdx.shuf, %bin.rdx36
  %rdx.shuf38 = shufflevector <8 x i32> %bin.rdx37, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx39 = add <8 x i32> %rdx.shuf38, %bin.rdx37
  %rdx.shuf40 = shufflevector <8 x i32> %bin.rdx39, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx41 = add <8 x i32> %rdx.shuf40, %bin.rdx39
  %63 = extractelement <8 x i32> %bin.rdx41, i32 0
  %and10.i = and i32 %63, 255
  %64 = lshr i32 %63, 8
  %and12.i = and i32 %64, 255
  %65 = lshr i32 %63, 16
  %and15.i = and i32 %65, 255
  %66 = lshr i32 %63, 24
  %add13.i = add i32 %and10.i, %r.062.i
  %add16.i = add i32 %add13.i, %66
  %add19.i = add i32 %add16.i, %and12.i
  %add20.i = add i32 %add19.i, %and15.i
  %add.ptr.i = getelementptr inbounds i32, i32* %IFl.063.i, i64 128
  %inc22.i = add nuw nsw i32 %k.064.i, 1
  %cmp5.i = icmp ult i32 %inc22.i, %shr74.i
  br i1 %cmp5.i, label %vector.ph, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit

if.else.i:                                        ; preds = %loop.body
  %cmp2665.i = icmp sgt i32 %sub, 0
  br i1 %cmp2665.i, label %for.body28.lr.ph.i, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit

for.body28.lr.ph.i:                               ; preds = %if.else.i
  %wide.trip.count.i = zext i32 %sub to i64
  %min.iters.check = icmp ult i32 %sub, 32
  br i1 %min.iters.check, label %for.body28.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %for.body28.lr.ph.i.thread, %for.body28.lr.ph.i
  %wide.trip.count.i105 = phi i64 [ %wide.trip.count.i103, %for.body28.lr.ph.i.thread ], [ %wide.trip.count.i, %for.body28.lr.ph.i ]
  %n.vec = and i64 %wide.trip.count.i105, 4294967264
  %67 = add nsw i64 %n.vec, -32
  %68 = lshr exact i64 %67, 5
  %69 = add nuw nsw i64 %68, 1
  %xtraiter = and i64 %69, 3
  %70 = icmp ult i64 %67, 96
  br i1 %70, label %middle.block43.unr-lcssa, label %vector.ph45.new

vector.ph45.new:                                  ; preds = %vector.ph45
  %unroll_iter = sub nsw i64 %69, %xtraiter
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph45.new
  %index46 = phi i64 [ 0, %vector.ph45.new ], [ %index.next47.3, %vector.body42 ]
  %vec.phi56 = phi <8 x i32> [ zeroinitializer, %vector.ph45.new ], [ %131, %vector.body42 ]
  %vec.phi57 = phi <8 x i32> [ zeroinitializer, %vector.ph45.new ], [ %132, %vector.body42 ]
  %vec.phi58 = phi <8 x i32> [ zeroinitializer, %vector.ph45.new ], [ %133, %vector.body42 ]
  %vec.phi59 = phi <8 x i32> [ zeroinitializer, %vector.ph45.new ], [ %134, %vector.body42 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph45.new ], [ %niter.nsub.3, %vector.body42 ]
  %71 = getelementptr inbounds i8, i8* %add.ptr, i64 %index46
  %72 = bitcast i8* %71 to <8 x i8>*
  %wide.load60 = load <8 x i8>, <8 x i8>* %72, align 1, !tbaa !77
  %73 = getelementptr i8, i8* %71, i64 8
  %74 = bitcast i8* %73 to <8 x i8>*
  %wide.load61 = load <8 x i8>, <8 x i8>* %74, align 1, !tbaa !77
  %75 = getelementptr i8, i8* %71, i64 16
  %76 = bitcast i8* %75 to <8 x i8>*
  %wide.load62 = load <8 x i8>, <8 x i8>* %76, align 1, !tbaa !77
  %77 = getelementptr i8, i8* %71, i64 24
  %78 = bitcast i8* %77 to <8 x i8>*
  %wide.load63 = load <8 x i8>, <8 x i8>* %78, align 1, !tbaa !77
  %79 = zext <8 x i8> %wide.load60 to <8 x i32>
  %80 = zext <8 x i8> %wide.load61 to <8 x i32>
  %81 = zext <8 x i8> %wide.load62 to <8 x i32>
  %82 = zext <8 x i8> %wide.load63 to <8 x i32>
  %83 = add nuw nsw <8 x i32> %vec.phi56, %79
  %84 = add nuw nsw <8 x i32> %vec.phi57, %80
  %85 = add nuw nsw <8 x i32> %vec.phi58, %81
  %86 = add nuw nsw <8 x i32> %vec.phi59, %82
  %index.next47 = or i64 %index46, 32
  %87 = getelementptr inbounds i8, i8* %add.ptr, i64 %index.next47
  %88 = bitcast i8* %87 to <8 x i8>*
  %wide.load60.1 = load <8 x i8>, <8 x i8>* %88, align 1, !tbaa !77
  %89 = getelementptr i8, i8* %87, i64 8
  %90 = bitcast i8* %89 to <8 x i8>*
  %wide.load61.1 = load <8 x i8>, <8 x i8>* %90, align 1, !tbaa !77
  %91 = getelementptr i8, i8* %87, i64 16
  %92 = bitcast i8* %91 to <8 x i8>*
  %wide.load62.1 = load <8 x i8>, <8 x i8>* %92, align 1, !tbaa !77
  %93 = getelementptr i8, i8* %87, i64 24
  %94 = bitcast i8* %93 to <8 x i8>*
  %wide.load63.1 = load <8 x i8>, <8 x i8>* %94, align 1, !tbaa !77
  %95 = zext <8 x i8> %wide.load60.1 to <8 x i32>
  %96 = zext <8 x i8> %wide.load61.1 to <8 x i32>
  %97 = zext <8 x i8> %wide.load62.1 to <8 x i32>
  %98 = zext <8 x i8> %wide.load63.1 to <8 x i32>
  %99 = add nuw nsw <8 x i32> %83, %95
  %100 = add nuw nsw <8 x i32> %84, %96
  %101 = add nuw nsw <8 x i32> %85, %97
  %102 = add nuw nsw <8 x i32> %86, %98
  %index.next47.1 = or i64 %index46, 64
  %103 = getelementptr inbounds i8, i8* %add.ptr, i64 %index.next47.1
  %104 = bitcast i8* %103 to <8 x i8>*
  %wide.load60.2 = load <8 x i8>, <8 x i8>* %104, align 1, !tbaa !77
  %105 = getelementptr i8, i8* %103, i64 8
  %106 = bitcast i8* %105 to <8 x i8>*
  %wide.load61.2 = load <8 x i8>, <8 x i8>* %106, align 1, !tbaa !77
  %107 = getelementptr i8, i8* %103, i64 16
  %108 = bitcast i8* %107 to <8 x i8>*
  %wide.load62.2 = load <8 x i8>, <8 x i8>* %108, align 1, !tbaa !77
  %109 = getelementptr i8, i8* %103, i64 24
  %110 = bitcast i8* %109 to <8 x i8>*
  %wide.load63.2 = load <8 x i8>, <8 x i8>* %110, align 1, !tbaa !77
  %111 = zext <8 x i8> %wide.load60.2 to <8 x i32>
  %112 = zext <8 x i8> %wide.load61.2 to <8 x i32>
  %113 = zext <8 x i8> %wide.load62.2 to <8 x i32>
  %114 = zext <8 x i8> %wide.load63.2 to <8 x i32>
  %115 = add nuw nsw <8 x i32> %99, %111
  %116 = add nuw nsw <8 x i32> %100, %112
  %117 = add nuw nsw <8 x i32> %101, %113
  %118 = add nuw nsw <8 x i32> %102, %114
  %index.next47.2 = or i64 %index46, 96
  %119 = getelementptr inbounds i8, i8* %add.ptr, i64 %index.next47.2
  %120 = bitcast i8* %119 to <8 x i8>*
  %wide.load60.3 = load <8 x i8>, <8 x i8>* %120, align 1, !tbaa !77
  %121 = getelementptr i8, i8* %119, i64 8
  %122 = bitcast i8* %121 to <8 x i8>*
  %wide.load61.3 = load <8 x i8>, <8 x i8>* %122, align 1, !tbaa !77
  %123 = getelementptr i8, i8* %119, i64 16
  %124 = bitcast i8* %123 to <8 x i8>*
  %wide.load62.3 = load <8 x i8>, <8 x i8>* %124, align 1, !tbaa !77
  %125 = getelementptr i8, i8* %119, i64 24
  %126 = bitcast i8* %125 to <8 x i8>*
  %wide.load63.3 = load <8 x i8>, <8 x i8>* %126, align 1, !tbaa !77
  %127 = zext <8 x i8> %wide.load60.3 to <8 x i32>
  %128 = zext <8 x i8> %wide.load61.3 to <8 x i32>
  %129 = zext <8 x i8> %wide.load62.3 to <8 x i32>
  %130 = zext <8 x i8> %wide.load63.3 to <8 x i32>
  %131 = add nuw nsw <8 x i32> %115, %127
  %132 = add nuw nsw <8 x i32> %116, %128
  %133 = add nuw nsw <8 x i32> %117, %129
  %134 = add nuw nsw <8 x i32> %118, %130
  %index.next47.3 = add i64 %index46, 128
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block43.unr-lcssa, label %vector.body42, !llvm.loop !229

middle.block43.unr-lcssa:                         ; preds = %vector.body42, %vector.ph45
  %.lcssa77.ph = phi <8 x i32> [ undef, %vector.ph45 ], [ %131, %vector.body42 ]
  %.lcssa76.ph = phi <8 x i32> [ undef, %vector.ph45 ], [ %132, %vector.body42 ]
  %.lcssa75.ph = phi <8 x i32> [ undef, %vector.ph45 ], [ %133, %vector.body42 ]
  %.lcssa.ph = phi <8 x i32> [ undef, %vector.ph45 ], [ %134, %vector.body42 ]
  %index46.unr = phi i64 [ 0, %vector.ph45 ], [ %index.next47.3, %vector.body42 ]
  %vec.phi56.unr = phi <8 x i32> [ zeroinitializer, %vector.ph45 ], [ %131, %vector.body42 ]
  %vec.phi57.unr = phi <8 x i32> [ zeroinitializer, %vector.ph45 ], [ %132, %vector.body42 ]
  %vec.phi58.unr = phi <8 x i32> [ zeroinitializer, %vector.ph45 ], [ %133, %vector.body42 ]
  %vec.phi59.unr = phi <8 x i32> [ zeroinitializer, %vector.ph45 ], [ %134, %vector.body42 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %middle.block43, label %vector.body42.epil.preheader

vector.body42.epil.preheader:                     ; preds = %middle.block43.unr-lcssa
  br label %vector.body42.epil

vector.body42.epil:                               ; preds = %vector.body42.epil.preheader, %vector.body42.epil
  %index46.epil = phi i64 [ %index.next47.epil, %vector.body42.epil ], [ %index46.unr, %vector.body42.epil.preheader ]
  %vec.phi56.epil = phi <8 x i32> [ %147, %vector.body42.epil ], [ %vec.phi56.unr, %vector.body42.epil.preheader ]
  %vec.phi57.epil = phi <8 x i32> [ %148, %vector.body42.epil ], [ %vec.phi57.unr, %vector.body42.epil.preheader ]
  %vec.phi58.epil = phi <8 x i32> [ %149, %vector.body42.epil ], [ %vec.phi58.unr, %vector.body42.epil.preheader ]
  %vec.phi59.epil = phi <8 x i32> [ %150, %vector.body42.epil ], [ %vec.phi59.unr, %vector.body42.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body42.epil ], [ %xtraiter, %vector.body42.epil.preheader ]
  %135 = getelementptr inbounds i8, i8* %add.ptr, i64 %index46.epil
  %136 = bitcast i8* %135 to <8 x i8>*
  %wide.load60.epil = load <8 x i8>, <8 x i8>* %136, align 1, !tbaa !77
  %137 = getelementptr i8, i8* %135, i64 8
  %138 = bitcast i8* %137 to <8 x i8>*
  %wide.load61.epil = load <8 x i8>, <8 x i8>* %138, align 1, !tbaa !77
  %139 = getelementptr i8, i8* %135, i64 16
  %140 = bitcast i8* %139 to <8 x i8>*
  %wide.load62.epil = load <8 x i8>, <8 x i8>* %140, align 1, !tbaa !77
  %141 = getelementptr i8, i8* %135, i64 24
  %142 = bitcast i8* %141 to <8 x i8>*
  %wide.load63.epil = load <8 x i8>, <8 x i8>* %142, align 1, !tbaa !77
  %143 = zext <8 x i8> %wide.load60.epil to <8 x i32>
  %144 = zext <8 x i8> %wide.load61.epil to <8 x i32>
  %145 = zext <8 x i8> %wide.load62.epil to <8 x i32>
  %146 = zext <8 x i8> %wide.load63.epil to <8 x i32>
  %147 = add nuw nsw <8 x i32> %vec.phi56.epil, %143
  %148 = add nuw nsw <8 x i32> %vec.phi57.epil, %144
  %149 = add nuw nsw <8 x i32> %vec.phi58.epil, %145
  %150 = add nuw nsw <8 x i32> %vec.phi59.epil, %146
  %index.next47.epil = add i64 %index46.epil, 32
  %epil.iter.sub = add nsw i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block43, label %vector.body42.epil, !llvm.loop !230

middle.block43:                                   ; preds = %vector.body42.epil, %middle.block43.unr-lcssa
  %.lcssa77 = phi <8 x i32> [ %.lcssa77.ph, %middle.block43.unr-lcssa ], [ %147, %vector.body42.epil ]
  %.lcssa76 = phi <8 x i32> [ %.lcssa76.ph, %middle.block43.unr-lcssa ], [ %148, %vector.body42.epil ]
  %.lcssa75 = phi <8 x i32> [ %.lcssa75.ph, %middle.block43.unr-lcssa ], [ %149, %vector.body42.epil ]
  %.lcssa = phi <8 x i32> [ %.lcssa.ph, %middle.block43.unr-lcssa ], [ %150, %vector.body42.epil ]
  %bin.rdx64 = add nuw <8 x i32> %.lcssa76, %.lcssa77
  %bin.rdx65 = add <8 x i32> %bin.rdx64, %.lcssa75
  %bin.rdx66 = add <8 x i32> %bin.rdx65, %.lcssa
  %rdx.shuf67 = shufflevector <8 x i32> %bin.rdx66, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx68 = add <8 x i32> %rdx.shuf67, %bin.rdx66
  %rdx.shuf69 = shufflevector <8 x i32> %bin.rdx68, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx70 = add <8 x i32> %rdx.shuf69, %bin.rdx68
  %rdx.shuf71 = shufflevector <8 x i32> %bin.rdx70, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx72 = add <8 x i32> %rdx.shuf71, %bin.rdx70
  %151 = extractelement <8 x i32> %bin.rdx72, i32 0
  %cmp.n49 = icmp eq i64 %n.vec, %wide.trip.count.i105
  br i1 %cmp.n49, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit, label %for.body28.i.preheader

for.body28.i.preheader:                           ; preds = %middle.block43, %for.body28.lr.ph.i
  %wide.trip.count.i106 = phi i64 [ %wide.trip.count.i, %for.body28.lr.ph.i ], [ %wide.trip.count.i105, %middle.block43 ]
  %indvars.iv70.i.ph = phi i64 [ 0, %for.body28.lr.ph.i ], [ %n.vec, %middle.block43 ]
  %r.166.i.ph = phi i32 [ 0, %for.body28.lr.ph.i ], [ %151, %middle.block43 ]
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.preheader, %for.body28.i
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %for.body28.i ], [ %indvars.iv70.i.ph, %for.body28.i.preheader ]
  %r.166.i = phi i32 [ %add31.i, %for.body28.i ], [ %r.166.i.ph, %for.body28.i.preheader ]
  %arrayidx30.i = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv70.i
  %152 = load i8, i8* %arrayidx30.i, align 1, !tbaa !77, !range !153
  %153 = zext i8 %152 to i32
  %add31.i = add nuw nsw i32 %r.166.i, %153
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  %exitcond72.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count.i106
  br i1 %exitcond72.i, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit, label %for.body28.i, !llvm.loop !231

_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit:     ; preds = %for.body28.i, %vector.ph, %middle.block43, %if.then.i, %if.else.i
  %r.2.i = phi i32 [ 0, %if.then.i ], [ 0, %if.else.i ], [ %151, %middle.block43 ], [ %add20.i, %vector.ph ], [ %add31.i, %for.body28.i ]
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %indvars.iv
  store i32 %r.2.i, i32* %arrayidx, align 4, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %154 = add nuw i32 %__index.addr.022, 1
  %exitcond = icmp eq i32 %154, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: uwtable
define internal void @__cilk_for_helper.28(%struct.anon.16* nocapture readonly %__context, i32 %__low, i32 %__high) #6 {
entry:
  %0 = icmp ult i32 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %__context, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8, !tbaa !232
  %3 = load i32, i32* %2, align 4, !tbaa !26
  %add = add nsw i32 %3, %__low
  %4 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %__context, i64 0, i32 3
  %7 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %__context, i64 0, i32 4
  %8 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %__context, i64 0, i32 5
  %9 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %__context, i64 0, i32 6
  %10 = sext i32 %add to i64
  br label %loop.body

loop.cond.cleanup:                                ; preds = %loop.body, %entry
  ret void

loop.body:                                        ; preds = %loop.body, %loop.body.lr.ph
  %indvars.iv = phi i64 [ %10, %loop.body.lr.ph ], [ %indvars.iv.next, %loop.body ]
  %__index.addr.019 = phi i32 [ %__low, %loop.body.lr.ph ], [ %24, %loop.body ]
  %11 = load i32*, i32** %4, align 8, !tbaa !234
  %12 = load i32, i32* %11, align 4, !tbaa !26
  %13 = trunc i64 %indvars.iv to i32
  %mul1 = shl nsw i32 %13, 11
  %add2 = add nsw i32 %12, %mul1
  %add3 = add nsw i32 %add2, 2048
  %14 = load i32*, i32** %5, align 8, !tbaa !235
  %15 = load i32, i32* %14, align 4, !tbaa !26
  %cmp.i = icmp slt i32 %15, %add3
  %.sroa.speculated = select i1 %cmp.i, i32 %15, i32 %add3
  %16 = load %struct.event**, %struct.event*** %6, align 8, !tbaa !236
  %17 = load %struct.event*, %struct.event** %16, align 8, !tbaa !24
  %18 = load i32**, i32*** %7, align 8, !tbaa !237
  %19 = load i32*, i32** %18, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %indvars.iv
  %20 = load i32, i32* %arrayidx, align 4, !tbaa !26
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %17, i64 %idx.ext
  %21 = load i8**, i8*** %8, align 8, !tbaa !238
  %22 = load i8*, i8** %21, align 8, !tbaa !24
  %23 = load %"struct.sequence::getA.14"*, %"struct.sequence::getA.14"** %9, align 8, !tbaa !239
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.sequence::getA.14", %"struct.sequence::getA.14"* %23, i64 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load %struct.event*, %struct.event** %agg.tmp.sroa.0.0..sroa_idx, align 8
  %call4 = tail call { %struct.event*, i64 } @_ZN8sequence10packSerialI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* %add.ptr, i8* %22, i32 %add2, i32 %.sroa.speculated, %struct.event* %agg.tmp.sroa.0.0.copyload)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %24 = add nuw i32 %__index.addr.019, 1
  %exitcond = icmp eq i32 %24, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: stealable uwtable
define linkonce_odr void @_Z9quickSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %A, i32 %n) local_unnamed_addr #9 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = call %__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %__cilkrts_worker* %0, null
  br i1 %1, label %2, label %__cilk_parent_prologue.exit

; <label>:2:                                      ; preds = %entry
  %3 = call %__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilk_parent_prologue.exit

__cilk_parent_prologue.exit:                      ; preds = %entry, %2
  %.sink = phi i32 [ 16777344, %2 ], [ 16777216, %entry ]
  %4 = phi %__cilkrts_worker* [ %3, %2 ], [ %0, %entry ]
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %5 release, align 8
  %6 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %4, i64 0, i32 9
  %7 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %6 acquire, align 8
  %8 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %8 release, align 8
  %9 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %4, %__cilkrts_worker** %9 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %6 release, align 8
  %f = alloca %struct.cmpVal, align 1
  %A.addr = alloca %struct.event*, align 8
  %exn.slot = alloca i8*, align 8
  %X = alloca %"struct.std::pair.22", align 8
  %agg.captured = alloca %struct.anon.23, align 8
  store %struct.event* %A, %struct.event** %A.addr, align 8, !tbaa !24
  %cmp = icmp slt i32 %n, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %__cilk_parent_prologue.exit
  %cmp19.i = icmp sgt i32 %n, 20
  br i1 %cmp19.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then
  %sub.ptr.rhs.cast4.i = ptrtoint %struct.event* %A to i64
  br label %while.body.i

while.body.i:                                     ; preds = %.noexc, %while.body.lr.ph.i
  %n.addr.020.i = phi i32 [ %n, %while.body.lr.ph.i ], [ %conv.i, %.noexc ]
  %call.i16 = invoke { %struct.event*, %struct.event* } @_Z5splitI5event6cmpValiESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i32 %n.addr.020.i)
          to label %call.i.noexc unwind label %lpad

call.i.noexc:                                     ; preds = %while.body.i
  %10 = extractvalue { %struct.event*, %struct.event* } %call.i16, 1
  %idx.ext.i = sext i32 %n.addr.020.i to i64
  %add.ptr.i = getelementptr inbounds %struct.event, %struct.event* %A, i64 %idx.ext.i
  %sub.ptr.lhs.cast.i = ptrtoint %struct.event* %add.ptr.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint %struct.event* %10 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  invoke void @_Z15quickSortSerialI5event6cmpVallEvPT_T1_T0_(%struct.event* %10, i64 %sub.ptr.div.i)
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %call.i.noexc
  %11 = extractvalue { %struct.event*, %struct.event* } %call.i16, 0
  %sub.ptr.lhs.cast3.i = ptrtoint %struct.event* %11 to i64
  %sub.ptr.sub5.i = sub i64 %sub.ptr.lhs.cast3.i, %sub.ptr.rhs.cast4.i
  %12 = lshr exact i64 %sub.ptr.sub5.i, 3
  %conv.i = trunc i64 %12 to i32
  %cmp.i = icmp sgt i32 %conv.i, 20
  br i1 %cmp.i, label %while.body.i, label %while.end.i.loopexit

while.end.i.loopexit:                             ; preds = %.noexc
  %conv.i.le = trunc i64 %12 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.then
  %n.addr.0.lcssa.i = phi i32 [ %n, %if.then ], [ %conv.i.le, %while.end.i.loopexit ]
  %cmp24.i.i = icmp sgt i32 %n.addr.0.lcssa.i, 0
  br i1 %cmp24.i.i, label %for.body.lr.ph.i.i, label %if.end

for.body.lr.ph.i.i:                               ; preds = %while.end.i
  %wide.trip.count.i.i = zext i32 %n.addr.0.lcssa.i to i64
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %13 = icmp eq i32 %n.addr.0.lcssa.i, 1
  br i1 %13, label %if.end.loopexit.unr-lcssa, label %for.body.lr.ph.i.i.new

for.body.lr.ph.i.i.new:                           ; preds = %for.body.lr.ph.i.i
  %unroll_iter = sub nsw i64 %wide.trip.count.i.i, %xtraiter
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %while.end.i.i.1, %for.body.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %while.end.i.i.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.i.i.new ], [ %niter.nsub.1, %while.end.i.i.1 ]
  %arrayidx.i.i = getelementptr inbounds %struct.event, %struct.event* %A, i64 %indvars.iv.i.i
  %v.sroa.0.0..sroa_cast9.i.i = bitcast %struct.event* %arrayidx.i.i to i64*
  %v.sroa.0.0.copyload.i.i = load i64, i64* %v.sroa.0.0..sroa_cast9.i.i, align 4
  %incdec.ptr19.i.i = getelementptr inbounds %struct.event, %struct.event* %arrayidx.i.i, i64 -1
  %cmp120.i.i = icmp ult %struct.event* %incdec.ptr19.i.i, %A
  br i1 %cmp120.i.i, label %while.end.i.i, label %land.rhs.lr.ph.i.i

land.rhs.lr.ph.i.i:                               ; preds = %for.body.i.i
  %a.sroa.0.0.extract.trunc.i.i.i = trunc i64 %v.sroa.0.0.copyload.i.i to i32
  %14 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.i to float
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i, %land.rhs.lr.ph.i.i
  %incdec.ptr22.i.i = phi %struct.event* [ %incdec.ptr19.i.i, %land.rhs.lr.ph.i.i ], [ %incdec.ptr.i.i, %while.body.i.i ]
  %B.021.i.i = phi %struct.event* [ %arrayidx.i.i, %land.rhs.lr.ph.i.i ], [ %incdec.ptr22.i.i, %while.body.i.i ]
  %agg.tmp2.sroa.0.0..sroa_cast.i.i = bitcast %struct.event* %incdec.ptr22.i.i to i64*
  %agg.tmp2.sroa.0.0.copyload.i.i = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i.i, align 4
  %b.sroa.0.0.extract.trunc.i.i.i = trunc i64 %agg.tmp2.sroa.0.0.copyload.i.i to i32
  %15 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i.i to float
  %cmp.i.i.i = fcmp olt float %14, %15
  %16 = bitcast %struct.event* %B.021.i.i to i64*
  br i1 %cmp.i.i.i, label %while.body.i.i, label %while.end.i.i.loopexit86

while.body.i.i:                                   ; preds = %land.rhs.i.i
  store i64 %agg.tmp2.sroa.0.0.copyload.i.i, i64* %16, align 4
  %incdec.ptr.i.i = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.i, i64 -1
  %cmp1.i.i = icmp ult %struct.event* %incdec.ptr.i.i, %A
  br i1 %cmp1.i.i, label %while.end.i.i.loopexit, label %land.rhs.i.i

while.end.i.i.loopexit:                           ; preds = %while.body.i.i
  %agg.tmp2.sroa.0.0..sroa_cast.i.i.le = bitcast %struct.event* %incdec.ptr22.i.i to i64*
  br label %while.end.i.i

while.end.i.i.loopexit86:                         ; preds = %land.rhs.i.i
  %17 = bitcast %struct.event* %B.021.i.i to i64*
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.i.loopexit86, %while.end.i.i.loopexit, %for.body.i.i
  %v.sroa.0.0..sroa_cast10.pre-phi.i.i = phi i64* [ %v.sroa.0.0..sroa_cast9.i.i, %for.body.i.i ], [ %agg.tmp2.sroa.0.0..sroa_cast.i.i.le, %while.end.i.i.loopexit ], [ %17, %while.end.i.i.loopexit86 ]
  store i64 %v.sroa.0.0.copyload.i.i, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.i, align 4
  %indvars.iv.next.i.i = or i64 %indvars.iv.i.i, 1
  %arrayidx.i.i.1 = getelementptr inbounds %struct.event, %struct.event* %A, i64 %indvars.iv.next.i.i
  %v.sroa.0.0..sroa_cast9.i.i.1 = bitcast %struct.event* %arrayidx.i.i.1 to i64*
  %v.sroa.0.0.copyload.i.i.1 = load i64, i64* %v.sroa.0.0..sroa_cast9.i.i.1, align 4
  %a.sroa.0.0.extract.trunc.i.i.i.1 = trunc i64 %v.sroa.0.0.copyload.i.i.1 to i32
  %18 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.i.1 to float
  br label %land.rhs.i.i.1

lpad:                                             ; preds = %call.i.noexc, %while.body.i
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  br label %ehcleanup

if.else:                                          ; preds = %__cilk_parent_prologue.exit
  %22 = bitcast %"struct.std::pair.22"* %X to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #2
  %call = invoke { %struct.event*, %struct.event* } @_Z5splitI5event6cmpValiESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i32 %n)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %if.else
  %23 = getelementptr inbounds %"struct.std::pair.22", %"struct.std::pair.22"* %X, i64 0, i32 0
  %24 = extractvalue { %struct.event*, %struct.event* } %call, 0
  store %struct.event* %24, %struct.event** %23, align 8
  %25 = getelementptr inbounds %"struct.std::pair.22", %"struct.std::pair.22"* %X, i64 0, i32 1
  %26 = extractvalue { %struct.event*, %struct.event* } %call, 1
  store %struct.event* %26, %struct.event** %25, align 8
  %27 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %28 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %27, i16* nonnull %28) #2
  %29 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %30 = call i8* @llvm.frameaddress(i32 0)
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %29, i64 0, i64 0
  store volatile i8* %30, i8** %31, align 8
  %32 = call i8* @llvm.stacksave()
  %33 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %32, i8** %33, align 8
  %34 = bitcast [5 x i8*]* %29 to i8*
  %35 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %34) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %cilk.spawn.helpercall, label %cilk.spawn.continuation

cilk.spawn.helpercall:                            ; preds = %invoke.cont3
  %37 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %agg.captured, i64 0, i32 0
  store %struct.event** %A.addr, %struct.event*** %37, align 8, !tbaa !24
  %38 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %agg.captured, i64 0, i32 1
  store %"struct.std::pair.22"* %X, %"struct.std::pair.22"** %38, align 8, !tbaa !24
  %39 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %agg.captured, i64 0, i32 2
  store %struct.cmpVal* %f, %struct.cmpVal** %39, align 8, !tbaa !24
  invoke fastcc void @__cilk_spawn_helper.33(%struct.anon.23* nonnull %agg.captured)
          to label %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge unwind label %lpad2

cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge: ; preds = %cilk.spawn.helpercall
  %.pre = load %struct.event*, %struct.event** %25, align 8, !tbaa !240
  %.pre39 = load %struct.event*, %struct.event** %A.addr, align 8, !tbaa !24
  br label %cilk.spawn.continuation

cilk.spawn.continuation:                          ; preds = %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge, %invoke.cont3
  %40 = phi %struct.event* [ %.pre39, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %A, %invoke.cont3 ]
  %41 = phi %struct.event* [ %.pre, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %26, %invoke.cont3 ]
  %idx.ext = sext i32 %n to i64
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %40, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.event* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.event* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  invoke void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %41, i64 %sub.ptr.div)
          to label %invoke.cont7 unwind label %lpad2

invoke.cont7:                                     ; preds = %cilk.spawn.continuation
  %42 = load atomic i32, i32* %5 acquire, align 8
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %invoke.cont8, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %invoke.cont7
  %45 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %45, i64 0, i32 12, i32 0
  %46 = bitcast i64* %.elt.i to <2 x i64>*
  %47 = load <2 x i64>, <2 x i64>* %46, align 8
  %.repack.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %48 = bitcast i64* %.repack.i to <2 x i64>*
  store <2 x i64> %47, <2 x i64>* %48, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %27, i16* nonnull %28) #2
  store volatile i8* %30, i8** %31, align 8
  %49 = call i8* @llvm.stacksave()
  store volatile i8* %49, i8** %33, align 8
  %50 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %34) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont8 unwind label %lpad2

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %52 = load atomic i32, i32* %5 acquire, align 8
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %invoke.cont8, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc18 unwind label %lpad2

.noexc18:                                         ; preds = %cilk.sync.rethrow.i
  unreachable

invoke.cont8:                                     ; preds = %cilk.sync.excepting.i, %invoke.cont7, %cilk.sync.runtimecall.i
  %55 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %56 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %55, i64 0, i32 12, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #2
  br label %if.end

lpad2:                                            ; preds = %cilk.sync.rethrow.i, %cilk.sync.runtimecall.i, %cilk.spawn.continuation, %cilk.spawn.helpercall, %if.else
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  store i8* %60, i8** %exn.slot, align 8
  %61 = extractvalue { i8*, i32 } %59, 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #2
  br label %ehcleanup

if.end.loopexit.unr-lcssa:                        ; preds = %while.end.i.i.1, %for.body.lr.ph.i.i
  %indvars.iv.i.i.unr = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %while.end.i.i.1 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %if.end, label %for.body.i.i.epil

for.body.i.i.epil:                                ; preds = %if.end.loopexit.unr-lcssa
  %arrayidx.i.i.epil = getelementptr inbounds %struct.event, %struct.event* %A, i64 %indvars.iv.i.i.unr
  %v.sroa.0.0..sroa_cast9.i.i.epil = bitcast %struct.event* %arrayidx.i.i.epil to i64*
  %v.sroa.0.0.copyload.i.i.epil = load i64, i64* %v.sroa.0.0..sroa_cast9.i.i.epil, align 4
  %incdec.ptr19.i.i.epil = getelementptr inbounds %struct.event, %struct.event* %arrayidx.i.i.epil, i64 -1
  %cmp120.i.i.epil = icmp ult %struct.event* %incdec.ptr19.i.i.epil, %A
  br i1 %cmp120.i.i.epil, label %while.end.i.i.epil, label %land.rhs.lr.ph.i.i.epil

land.rhs.lr.ph.i.i.epil:                          ; preds = %for.body.i.i.epil
  %a.sroa.0.0.extract.trunc.i.i.i.epil = trunc i64 %v.sroa.0.0.copyload.i.i.epil to i32
  %62 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.i.epil to float
  br label %land.rhs.i.i.epil

land.rhs.i.i.epil:                                ; preds = %while.body.i.i.epil, %land.rhs.lr.ph.i.i.epil
  %incdec.ptr22.i.i.epil = phi %struct.event* [ %incdec.ptr19.i.i.epil, %land.rhs.lr.ph.i.i.epil ], [ %incdec.ptr.i.i.epil, %while.body.i.i.epil ]
  %B.021.i.i.epil = phi %struct.event* [ %arrayidx.i.i.epil, %land.rhs.lr.ph.i.i.epil ], [ %incdec.ptr22.i.i.epil, %while.body.i.i.epil ]
  %agg.tmp2.sroa.0.0..sroa_cast.i.i.epil = bitcast %struct.event* %incdec.ptr22.i.i.epil to i64*
  %agg.tmp2.sroa.0.0.copyload.i.i.epil = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i.i.epil, align 4
  %b.sroa.0.0.extract.trunc.i.i.i.epil = trunc i64 %agg.tmp2.sroa.0.0.copyload.i.i.epil to i32
  %63 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i.i.epil to float
  %cmp.i.i.i.epil = fcmp olt float %62, %63
  %64 = bitcast %struct.event* %B.021.i.i.epil to i64*
  br i1 %cmp.i.i.i.epil, label %while.body.i.i.epil, label %while.end.i.i.epil.loopexit85

while.body.i.i.epil:                              ; preds = %land.rhs.i.i.epil
  store i64 %agg.tmp2.sroa.0.0.copyload.i.i.epil, i64* %64, align 4
  %incdec.ptr.i.i.epil = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.i.epil, i64 -1
  %cmp1.i.i.epil = icmp ult %struct.event* %incdec.ptr.i.i.epil, %A
  br i1 %cmp1.i.i.epil, label %while.end.i.i.epil.loopexit, label %land.rhs.i.i.epil

while.end.i.i.epil.loopexit:                      ; preds = %while.body.i.i.epil
  %agg.tmp2.sroa.0.0..sroa_cast.i.i.epil.le = bitcast %struct.event* %incdec.ptr22.i.i.epil to i64*
  br label %while.end.i.i.epil

while.end.i.i.epil.loopexit85:                    ; preds = %land.rhs.i.i.epil
  %65 = bitcast %struct.event* %B.021.i.i.epil to i64*
  br label %while.end.i.i.epil

while.end.i.i.epil:                               ; preds = %while.end.i.i.epil.loopexit85, %while.end.i.i.epil.loopexit, %for.body.i.i.epil
  %v.sroa.0.0..sroa_cast10.pre-phi.i.i.epil = phi i64* [ %v.sroa.0.0..sroa_cast9.i.i.epil, %for.body.i.i.epil ], [ %agg.tmp2.sroa.0.0..sroa_cast.i.i.epil.le, %while.end.i.i.epil.loopexit ], [ %65, %while.end.i.i.epil.loopexit85 ]
  store i64 %v.sroa.0.0.copyload.i.i.epil, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.i.epil, align 4
  br label %if.end

if.end:                                           ; preds = %while.end.i.i.epil, %if.end.loopexit.unr-lcssa, %while.end.i, %invoke.cont8
  %66 = load atomic i32, i32* %5 acquire, align 8
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %invoke.cont10, label %cilk.sync.savestate.i26

cilk.sync.savestate.i26:                          ; preds = %if.end
  %69 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i20 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %69, i64 0, i32 12, i32 0
  %70 = bitcast i64* %.elt.i20 to <2 x i64>*
  %71 = load <2 x i64>, <2 x i64>* %70, align 8
  %.repack.i24 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %72 = bitcast i64* %.repack.i24 to <2 x i64>*
  store <2 x i64> %71, <2 x i64>* %72, align 8
  %73 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %74 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %73, i16* nonnull %74) #2
  %75 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %76 = call i8* @llvm.frameaddress(i32 0)
  %77 = getelementptr inbounds [5 x i8*], [5 x i8*]* %75, i64 0, i64 0
  store volatile i8* %76, i8** %77, align 8
  %78 = call i8* @llvm.stacksave()
  %79 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %78, i8** %79, align 8
  %80 = bitcast [5 x i8*]* %75 to i8*
  %81 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %80) #20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %cilk.sync.runtimecall.i27, label %cilk.sync.excepting.i28

cilk.sync.runtimecall.i27:                        ; preds = %cilk.sync.savestate.i26
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont10 unwind label %lpad9

cilk.sync.excepting.i28:                          ; preds = %cilk.sync.savestate.i26
  %83 = load atomic i32, i32* %5 acquire, align 8
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %invoke.cont10, label %cilk.sync.rethrow.i29

cilk.sync.rethrow.i29:                            ; preds = %cilk.sync.excepting.i28
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc31 unwind label %lpad9

.noexc31:                                         ; preds = %cilk.sync.rethrow.i29
  unreachable

invoke.cont10:                                    ; preds = %cilk.sync.excepting.i28, %if.end, %cilk.sync.runtimecall.i27
  %86 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %87 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %86, i64 0, i32 12, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %91 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %90, i64 0, i32 9
  %94 = bitcast %__cilkrts_stack_frame** %93 to i64*
  store atomic i64 %92, i64* %94 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %95 = load atomic i32, i32* %5 acquire, align 8
  %96 = icmp eq i32 %95, 16777216
  br i1 %96, label %__cilk_parent_epilogue.exit, label %97

; <label>:97:                                     ; preds = %invoke.cont10
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont10, %97
  ret void

lpad9:                                            ; preds = %cilk.sync.rethrow.i29, %cilk.sync.runtimecall.i27
  %98 = landingpad { i8*, i32 }
          cleanup
  %99 = extractvalue { i8*, i32 } %98, 0
  store i8* %99, i8** %exn.slot, align 8
  %100 = extractvalue { i8*, i32 } %98, 1
  br label %ehcleanup11

ehcleanup:                                        ; preds = %lpad2, %lpad
  %ehselector.slot.0 = phi i32 [ %21, %lpad ], [ %61, %lpad2 ]
  %101 = load atomic i32, i32* %5 acquire, align 8
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %__cilk_excepting_sync.exit, label %setjmp.test.i

setjmp.test.i:                                    ; preds = %ehcleanup
  %104 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %105 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %104, i16* nonnull %105) #2
  %106 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %107 = call i8* @llvm.frameaddress(i32 0) #2
  %108 = getelementptr inbounds [5 x i8*], [5 x i8*]* %106, i64 0, i64 0
  store volatile i8* %107, i8** %108, align 8
  %109 = call i8* @llvm.stacksave() #2
  %110 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %109, i8** %110, align 8
  %111 = bitcast [5 x i8*]* %106 to i8*
  %112 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %111) #23
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %setjmp.if.i, label %setjmp.test.setjmp.cont_crit_edge.i

setjmp.test.setjmp.cont_crit_edge.i:              ; preds = %setjmp.test.i
  %.pre.i33 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %.pre1.i = bitcast i8** %.pre.i33 to i64*
  %.pre3.i = bitcast i8** %exn.slot to i64*
  br label %setjmp.cont.i

setjmp.if.i:                                      ; preds = %setjmp.test.i
  %114 = bitcast i8** %exn.slot to i64*
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %117 = bitcast i8** %116 to i64*
  store i64 %115, i64* %117, align 8
  %118 = load atomic i32, i32* %5 acquire, align 8
  %119 = or i32 %118, 16
  store atomic i32 %119, i32* %5 release, align 8
  call void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %setjmp.cont.i

setjmp.cont.i:                                    ; preds = %setjmp.if.i, %setjmp.test.setjmp.cont_crit_edge.i
  %.pre-phi4.i = phi i64* [ %.pre3.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %114, %setjmp.if.i ]
  %.pre-phi2.i = phi i64* [ %.pre1.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %117, %setjmp.if.i ]
  %120 = load atomic i32, i32* %5 acquire, align 8
  %121 = and i32 %120, -17
  store atomic i32 %121, i32* %5 release, align 8
  %122 = load i64, i64* %.pre-phi2.i, align 8
  store i64 %122, i64* %.pre-phi4.i, align 8
  br label %__cilk_excepting_sync.exit

__cilk_excepting_sync.exit:                       ; preds = %ehcleanup, %setjmp.cont.i
  %123 = load %__cilkrts_worker*, %__cilkrts_worker** %9, align 8
  %124 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %123, i64 0, i32 12, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %124, align 8
  br label %ehcleanup11

ehcleanup11:                                      ; preds = %__cilk_excepting_sync.exit, %lpad9
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %__cilk_excepting_sync.exit ], [ %100, %lpad9 ]
  %127 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %128 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %127, i64 0, i32 9
  %131 = bitcast %__cilkrts_stack_frame** %130 to i64*
  store atomic i64 %129, i64* %131 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %132 = load atomic i32, i32* %5 acquire, align 8
  %133 = icmp eq i32 %132, 16777216
  br i1 %133, label %__cilk_parent_epilogue.exit34, label %134

; <label>:134:                                    ; preds = %ehcleanup11
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit34

__cilk_parent_epilogue.exit34:                    ; preds = %ehcleanup11, %134
  %exn = load i8*, i8** %exn.slot, align 8
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val12

land.rhs.i.i.1:                                   ; preds = %while.body.i.i.1, %while.end.i.i
  %incdec.ptr22.i.i.1 = phi %struct.event* [ %arrayidx.i.i, %while.end.i.i ], [ %incdec.ptr.i.i.1, %while.body.i.i.1 ]
  %B.021.i.i.1 = phi %struct.event* [ %arrayidx.i.i.1, %while.end.i.i ], [ %incdec.ptr22.i.i.1, %while.body.i.i.1 ]
  %agg.tmp2.sroa.0.0..sroa_cast.i.i.1 = bitcast %struct.event* %incdec.ptr22.i.i.1 to i64*
  %agg.tmp2.sroa.0.0.copyload.i.i.1 = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i.i.1, align 4
  %b.sroa.0.0.extract.trunc.i.i.i.1 = trunc i64 %agg.tmp2.sroa.0.0.copyload.i.i.1 to i32
  %135 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i.i.1 to float
  %cmp.i.i.i.1 = fcmp olt float %18, %135
  br i1 %cmp.i.i.i.1, label %while.body.i.i.1, label %while.end.i.i.1

while.body.i.i.1:                                 ; preds = %land.rhs.i.i.1
  %136 = bitcast %struct.event* %B.021.i.i.1 to i64*
  store i64 %agg.tmp2.sroa.0.0.copyload.i.i.1, i64* %136, align 4
  %incdec.ptr.i.i.1 = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.i.1, i64 -1
  %cmp1.i.i.1 = icmp ult %struct.event* %incdec.ptr.i.i.1, %A
  br i1 %cmp1.i.i.1, label %while.end.i.i.1, label %land.rhs.i.i.1

while.end.i.i.1:                                  ; preds = %while.body.i.i.1, %land.rhs.i.i.1
  %v.sroa.0.0..sroa_cast10.pre-phi.i.i.1.pre-phi.in = phi %struct.event* [ %B.021.i.i.1, %land.rhs.i.i.1 ], [ %incdec.ptr22.i.i.1, %while.body.i.i.1 ]
  %v.sroa.0.0..sroa_cast10.pre-phi.i.i.1.pre-phi = bitcast %struct.event* %v.sroa.0.0..sroa_cast10.pre-phi.i.i.1.pre-phi.in to i64*
  store i64 %v.sroa.0.0.copyload.i.i.1, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.i.1.pre-phi, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %for.body.i.i
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.ceil.f64(double) #17

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.29(%struct.anon.17* nocapture readonly %__context, i64 %__low, i64 %__high) #7 {
entry:
  %0 = icmp ugt i64 %__high, %__low
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %__context, i64 0, i32 0
  %2 = load i64*, i64** %1, align 8, !tbaa !242
  %3 = load i64, i64* %2, align 8, !tbaa !120
  %add = add nsw i64 %3, %__low
  %4 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %__context, i64 0, i32 2
  %5 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %__context, i64 0, i32 3
  %6 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %__context, i64 0, i32 1
  %7 = sub i64 %__high, %__low
  %8 = add i64 %__high, -1
  %xtraiter = and i64 %7, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %loop.body.prol.loopexit, label %loop.body.prol

loop.body.prol:                                   ; preds = %loop.body.lr.ph
  %9 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !244
  %10 = load %struct.event*, %struct.event** %9, align 8, !tbaa !24
  %mul.i.prol = mul i64 %add, 982451653
  %add.i.prol = add i64 %mul.i.prol, 12345
  %11 = load i32*, i32** %5, align 8, !tbaa !245
  %12 = load i32, i32* %11, align 4, !tbaa !26
  %conv.prol = sext i32 %12 to i64
  %rem.prol = urem i64 %add.i.prol, %conv.prol
  %arrayidx.prol = getelementptr inbounds %struct.event, %struct.event* %10, i64 %rem.prol
  %13 = load %struct.event**, %struct.event*** %6, align 8, !tbaa !246
  %14 = load %struct.event*, %struct.event** %13, align 8, !tbaa !24
  %arrayidx1.prol = getelementptr inbounds %struct.event, %struct.event* %14, i64 %add
  %15 = bitcast %struct.event* %arrayidx.prol to i64*
  %16 = bitcast %struct.event* %arrayidx1.prol to i64*
  %17 = load i64, i64* %15, align 4
  store i64 %17, i64* %16, align 4
  %inc.prol = add nsw i64 %add, 1
  %18 = add nuw i64 %__low, 1
  br label %loop.body.prol.loopexit

loop.body.prol.loopexit:                          ; preds = %loop.body.lr.ph, %loop.body.prol
  %__cv_j.010.unr = phi i64 [ %add, %loop.body.lr.ph ], [ %inc.prol, %loop.body.prol ]
  %__index.addr.09.unr = phi i64 [ %__low, %loop.body.lr.ph ], [ %18, %loop.body.prol ]
  %19 = icmp eq i64 %8, %__low
  br i1 %19, label %loop.cond.cleanup, label %loop.body.preheader

loop.body.preheader:                              ; preds = %loop.body.prol.loopexit
  br label %loop.body

loop.cond.cleanup:                                ; preds = %loop.body, %loop.body.prol.loopexit, %entry
  ret void

loop.body:                                        ; preds = %loop.body.preheader, %loop.body
  %__cv_j.010 = phi i64 [ %inc.1, %loop.body ], [ %__cv_j.010.unr, %loop.body.preheader ]
  %__index.addr.09 = phi i64 [ %38, %loop.body ], [ %__index.addr.09.unr, %loop.body.preheader ]
  %20 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !244
  %21 = load %struct.event*, %struct.event** %20, align 8, !tbaa !24
  %mul.i = mul i64 %__cv_j.010, 982451653
  %add.i = add i64 %mul.i, 12345
  %22 = load i32*, i32** %5, align 8, !tbaa !245
  %23 = load i32, i32* %22, align 4, !tbaa !26
  %conv = sext i32 %23 to i64
  %rem = urem i64 %add.i, %conv
  %arrayidx = getelementptr inbounds %struct.event, %struct.event* %21, i64 %rem
  %24 = load %struct.event**, %struct.event*** %6, align 8, !tbaa !246
  %25 = load %struct.event*, %struct.event** %24, align 8, !tbaa !24
  %arrayidx1 = getelementptr inbounds %struct.event, %struct.event* %25, i64 %__cv_j.010
  %26 = bitcast %struct.event* %arrayidx to i64*
  %27 = bitcast %struct.event* %arrayidx1 to i64*
  %28 = load i64, i64* %26, align 4
  store i64 %28, i64* %27, align 4
  %inc = add nsw i64 %__cv_j.010, 1
  %29 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !244
  %30 = load %struct.event*, %struct.event** %29, align 8, !tbaa !24
  %mul.i.1 = mul i64 %inc, 982451653
  %add.i.1 = add i64 %mul.i.1, 12345
  %31 = load i32*, i32** %5, align 8, !tbaa !245
  %32 = load i32, i32* %31, align 4, !tbaa !26
  %conv.1 = sext i32 %32 to i64
  %rem.1 = urem i64 %add.i.1, %conv.1
  %arrayidx.1 = getelementptr inbounds %struct.event, %struct.event* %30, i64 %rem.1
  %33 = load %struct.event**, %struct.event*** %6, align 8, !tbaa !246
  %34 = load %struct.event*, %struct.event** %33, align 8, !tbaa !24
  %arrayidx1.1 = getelementptr inbounds %struct.event, %struct.event* %34, i64 %inc
  %35 = bitcast %struct.event* %arrayidx.1 to i64*
  %36 = bitcast %struct.event* %arrayidx1.1 to i64*
  %37 = load i64, i64* %35, align 4
  store i64 %37, i64* %36, align 4
  %inc.1 = add nsw i64 %__cv_j.010, 2
  %38 = add i64 %__index.addr.09, 2
  %exitcond.1 = icmp eq i64 %38, %__high
  br i1 %exitcond.1, label %loop.cond.cleanup, label %loop.body
}

declare void @__cilkrts_cilk_for_64(void (i8*, i64, i64)*, i8*, i64, i32) local_unnamed_addr

; Function Attrs: stealable uwtable
define linkonce_odr void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %A, i64 %n) local_unnamed_addr #9 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = call %__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %__cilkrts_worker* %0, null
  br i1 %1, label %2, label %__cilk_parent_prologue.exit

; <label>:2:                                      ; preds = %entry
  %3 = call %__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilk_parent_prologue.exit

__cilk_parent_prologue.exit:                      ; preds = %entry, %2
  %.sink = phi i32 [ 16777344, %2 ], [ 16777216, %entry ]
  %4 = phi %__cilkrts_worker* [ %3, %2 ], [ %0, %entry ]
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %5 release, align 8
  %6 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %4, i64 0, i32 9
  %7 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %6 acquire, align 8
  %8 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %8 release, align 8
  %9 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %4, %__cilkrts_worker** %9 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %6 release, align 8
  %f = alloca %struct.cmpVal, align 1
  %A.addr = alloca %struct.event*, align 8
  %exn.slot = alloca i8*, align 8
  %X = alloca %"struct.std::pair.22", align 8
  %agg.captured = alloca %struct.anon.24, align 8
  store %struct.event* %A, %struct.event** %A.addr, align 8, !tbaa !24
  %cmp = icmp slt i64 %n, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %__cilk_parent_prologue.exit
  invoke void @_Z15quickSortSerialI5event6cmpVallEvPT_T1_T0_(%struct.event* %A, i64 %n)
          to label %if.end unwind label %lpad

lpad:                                             ; preds = %if.then
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  br label %ehcleanup

if.else:                                          ; preds = %__cilk_parent_prologue.exit
  %13 = bitcast %"struct.std::pair.22"* %X to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #2
  %call = invoke { %struct.event*, %struct.event* } @_Z5splitI5event6cmpVallESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i64 %n)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %if.else
  %14 = getelementptr inbounds %"struct.std::pair.22", %"struct.std::pair.22"* %X, i64 0, i32 0
  %15 = extractvalue { %struct.event*, %struct.event* } %call, 0
  store %struct.event* %15, %struct.event** %14, align 8
  %16 = getelementptr inbounds %"struct.std::pair.22", %"struct.std::pair.22"* %X, i64 0, i32 1
  %17 = extractvalue { %struct.event*, %struct.event* } %call, 1
  store %struct.event* %17, %struct.event** %16, align 8
  %18 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %19 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %18, i16* nonnull %19) #2
  %20 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %21 = call i8* @llvm.frameaddress(i32 0)
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  store volatile i8* %21, i8** %22, align 8
  %23 = call i8* @llvm.stacksave()
  %24 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %23, i8** %24, align 8
  %25 = bitcast [5 x i8*]* %20 to i8*
  %26 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %25) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %cilk.spawn.helpercall, label %cilk.spawn.continuation

cilk.spawn.helpercall:                            ; preds = %invoke.cont3
  %28 = getelementptr inbounds %struct.anon.24, %struct.anon.24* %agg.captured, i64 0, i32 0
  store %struct.event** %A.addr, %struct.event*** %28, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.anon.24, %struct.anon.24* %agg.captured, i64 0, i32 1
  store %"struct.std::pair.22"* %X, %"struct.std::pair.22"** %29, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.anon.24, %struct.anon.24* %agg.captured, i64 0, i32 2
  store %struct.cmpVal* %f, %struct.cmpVal** %30, align 8, !tbaa !24
  %31 = bitcast %struct.anon.24* %agg.captured to %struct.anon.23*
  invoke fastcc void @__cilk_spawn_helper.33(%struct.anon.23* nonnull %31)
          to label %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge unwind label %lpad2

cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge: ; preds = %cilk.spawn.helpercall
  %.pre = load %struct.event*, %struct.event** %16, align 8, !tbaa !240
  %.pre33 = load %struct.event*, %struct.event** %A.addr, align 8, !tbaa !24
  br label %cilk.spawn.continuation

cilk.spawn.continuation:                          ; preds = %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge, %invoke.cont3
  %32 = phi %struct.event* [ %.pre33, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %A, %invoke.cont3 ]
  %33 = phi %struct.event* [ %.pre, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %17, %invoke.cont3 ]
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %32, i64 %n
  %sub.ptr.lhs.cast = ptrtoint %struct.event* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.event* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  invoke void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %33, i64 %sub.ptr.div)
          to label %invoke.cont7 unwind label %lpad2

invoke.cont7:                                     ; preds = %cilk.spawn.continuation
  %34 = load atomic i32, i32* %5 acquire, align 8
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %invoke.cont8, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %invoke.cont7
  %37 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %37, i64 0, i32 12, i32 0
  %38 = bitcast i64* %.elt.i to <2 x i64>*
  %39 = load <2 x i64>, <2 x i64>* %38, align 8
  %.repack.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %40 = bitcast i64* %.repack.i to <2 x i64>*
  store <2 x i64> %39, <2 x i64>* %40, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %18, i16* nonnull %19) #2
  store volatile i8* %21, i8** %22, align 8
  %41 = call i8* @llvm.stacksave()
  store volatile i8* %41, i8** %24, align 8
  %42 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %25) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont8 unwind label %lpad2

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %44 = load atomic i32, i32* %5 acquire, align 8
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %invoke.cont8, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc18 unwind label %lpad2

.noexc18:                                         ; preds = %cilk.sync.rethrow.i
  unreachable

invoke.cont8:                                     ; preds = %cilk.sync.excepting.i, %invoke.cont7, %cilk.sync.runtimecall.i
  %47 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %48 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %47, i64 0, i32 12, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #2
  br label %if.end

lpad2:                                            ; preds = %cilk.spawn.helpercall, %cilk.sync.rethrow.i, %cilk.sync.runtimecall.i, %cilk.spawn.continuation, %if.else
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %exn.slot, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #2
  br label %ehcleanup

if.end:                                           ; preds = %if.then, %invoke.cont8
  %54 = load atomic i32, i32* %5 acquire, align 8
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %invoke.cont10, label %cilk.sync.savestate.i26

cilk.sync.savestate.i26:                          ; preds = %if.end
  %57 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i20 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %57, i64 0, i32 12, i32 0
  %58 = bitcast i64* %.elt.i20 to <2 x i64>*
  %59 = load <2 x i64>, <2 x i64>* %58, align 8
  %.repack.i24 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %60 = bitcast i64* %.repack.i24 to <2 x i64>*
  store <2 x i64> %59, <2 x i64>* %60, align 8
  %61 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %62 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %61, i16* nonnull %62) #2
  %63 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %64 = call i8* @llvm.frameaddress(i32 0)
  %65 = getelementptr inbounds [5 x i8*], [5 x i8*]* %63, i64 0, i64 0
  store volatile i8* %64, i8** %65, align 8
  %66 = call i8* @llvm.stacksave()
  %67 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %66, i8** %67, align 8
  %68 = bitcast [5 x i8*]* %63 to i8*
  %69 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %68) #20
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %cilk.sync.runtimecall.i27, label %cilk.sync.excepting.i28

cilk.sync.runtimecall.i27:                        ; preds = %cilk.sync.savestate.i26
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont10 unwind label %lpad9

cilk.sync.excepting.i28:                          ; preds = %cilk.sync.savestate.i26
  %71 = load atomic i32, i32* %5 acquire, align 8
  %72 = and i32 %71, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %invoke.cont10, label %cilk.sync.rethrow.i29

cilk.sync.rethrow.i29:                            ; preds = %cilk.sync.excepting.i28
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc31 unwind label %lpad9

.noexc31:                                         ; preds = %cilk.sync.rethrow.i29
  unreachable

invoke.cont10:                                    ; preds = %cilk.sync.excepting.i28, %if.end, %cilk.sync.runtimecall.i27
  %74 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %75 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %74, i64 0, i32 12, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %79 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %78, i64 0, i32 9
  %82 = bitcast %__cilkrts_stack_frame** %81 to i64*
  store atomic i64 %80, i64* %82 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %83 = load atomic i32, i32* %5 acquire, align 8
  %84 = icmp eq i32 %83, 16777216
  br i1 %84, label %__cilk_parent_epilogue.exit16, label %85

; <label>:85:                                     ; preds = %invoke.cont10
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit16

__cilk_parent_epilogue.exit16:                    ; preds = %invoke.cont10, %85
  ret void

lpad9:                                            ; preds = %cilk.sync.rethrow.i29, %cilk.sync.runtimecall.i27
  %86 = landingpad { i8*, i32 }
          cleanup
  %87 = extractvalue { i8*, i32 } %86, 0
  store i8* %87, i8** %exn.slot, align 8
  %88 = extractvalue { i8*, i32 } %86, 1
  br label %ehcleanup11

ehcleanup:                                        ; preds = %lpad2, %lpad
  %ehselector.slot.0 = phi i32 [ %12, %lpad ], [ %53, %lpad2 ]
  %89 = load atomic i32, i32* %5 acquire, align 8
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %__cilk_excepting_sync.exit, label %setjmp.test.i

setjmp.test.i:                                    ; preds = %ehcleanup
  %92 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %93 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %92, i16* nonnull %93) #2
  %94 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %95 = call i8* @llvm.frameaddress(i32 0) #2
  %96 = getelementptr inbounds [5 x i8*], [5 x i8*]* %94, i64 0, i64 0
  store volatile i8* %95, i8** %96, align 8
  %97 = call i8* @llvm.stacksave() #2
  %98 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %97, i8** %98, align 8
  %99 = bitcast [5 x i8*]* %94 to i8*
  %100 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %99) #23
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %setjmp.if.i, label %setjmp.test.setjmp.cont_crit_edge.i

setjmp.test.setjmp.cont_crit_edge.i:              ; preds = %setjmp.test.i
  %.pre.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %.pre1.i = bitcast i8** %.pre.i to i64*
  %.pre3.i = bitcast i8** %exn.slot to i64*
  br label %setjmp.cont.i

setjmp.if.i:                                      ; preds = %setjmp.test.i
  %102 = bitcast i8** %exn.slot to i64*
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %105 = bitcast i8** %104 to i64*
  store i64 %103, i64* %105, align 8
  %106 = load atomic i32, i32* %5 acquire, align 8
  %107 = or i32 %106, 16
  store atomic i32 %107, i32* %5 release, align 8
  call void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %setjmp.cont.i

setjmp.cont.i:                                    ; preds = %setjmp.if.i, %setjmp.test.setjmp.cont_crit_edge.i
  %.pre-phi4.i = phi i64* [ %.pre3.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %102, %setjmp.if.i ]
  %.pre-phi2.i = phi i64* [ %.pre1.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %105, %setjmp.if.i ]
  %108 = load atomic i32, i32* %5 acquire, align 8
  %109 = and i32 %108, -17
  store atomic i32 %109, i32* %5 release, align 8
  %110 = load i64, i64* %.pre-phi2.i, align 8
  store i64 %110, i64* %.pre-phi4.i, align 8
  br label %__cilk_excepting_sync.exit

__cilk_excepting_sync.exit:                       ; preds = %ehcleanup, %setjmp.cont.i
  %111 = load %__cilkrts_worker*, %__cilkrts_worker** %9, align 8
  %112 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %111, i64 0, i32 12, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  br label %ehcleanup11

ehcleanup11:                                      ; preds = %__cilk_excepting_sync.exit, %lpad9
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %__cilk_excepting_sync.exit ], [ %88, %lpad9 ]
  %115 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %116 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %115, i64 0, i32 9
  %119 = bitcast %__cilkrts_stack_frame** %118 to i64*
  store atomic i64 %117, i64* %119 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %120 = load atomic i32, i32* %5 acquire, align 8
  %121 = icmp eq i32 %120, 16777216
  br i1 %121, label %__cilk_parent_epilogue.exit, label %122

; <label>:122:                                    ; preds = %ehcleanup11
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %ehcleanup11, %122
  %exn = load i8*, i8** %exn.slot, align 8
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val12
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.30(%struct.anon.18* nocapture readonly %__context, i64 %__low, i64 %__high) #7 {
entry:
  %0 = icmp ugt i64 %__high, %__low
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %__context, i64 0, i32 0
  %2 = load i64*, i64** %1, align 8, !tbaa !247
  %3 = load i64, i64* %2, align 8, !tbaa !120
  %add = add i64 %3, %__low
  %4 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %__context, i64 0, i32 2
  %5 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %__context, i64 0, i32 1
  %6 = sub i64 %__high, %__low
  %7 = xor i64 %__low, -1
  %8 = add i64 %7, %__high
  %xtraiter = and i64 %6, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %loop.body.prol.loopexit, label %loop.body.prol.preheader

loop.body.prol.preheader:                         ; preds = %loop.body.lr.ph
  br label %loop.body.prol

loop.body.prol:                                   ; preds = %loop.body.prol.preheader, %loop.body.prol
  %__cv_k.011.prol = phi i64 [ %inc.prol, %loop.body.prol ], [ %add, %loop.body.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %loop.body.prol ], [ %xtraiter, %loop.body.prol.preheader ]
  %9 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !249
  %10 = load %struct.event*, %struct.event** %9, align 8, !tbaa !24
  %mul1.prol = mul nsw i64 %__cv_k.011.prol, 10
  %arrayidx.prol = getelementptr inbounds %struct.event, %struct.event* %10, i64 %mul1.prol
  %11 = load %struct.event**, %struct.event*** %5, align 8, !tbaa !250
  %12 = load %struct.event*, %struct.event** %11, align 8, !tbaa !24
  %arrayidx2.prol = getelementptr inbounds %struct.event, %struct.event* %12, i64 %__cv_k.011.prol
  %13 = bitcast %struct.event* %arrayidx.prol to i64*
  %14 = bitcast %struct.event* %arrayidx2.prol to i64*
  %15 = load i64, i64* %13, align 4
  store i64 %15, i64* %14, align 4
  %inc.prol = add nsw i64 %__cv_k.011.prol, 1
  %prol.iter.sub = add nsw i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %loop.body.prol.loopexit.loopexit, label %loop.body.prol, !llvm.loop !251

loop.body.prol.loopexit.loopexit:                 ; preds = %loop.body.prol
  %16 = add i64 %add, %xtraiter
  %17 = add i64 %xtraiter, %__low
  br label %loop.body.prol.loopexit

loop.body.prol.loopexit:                          ; preds = %loop.body.prol.loopexit.loopexit, %loop.body.lr.ph
  %__cv_k.011.unr = phi i64 [ %add, %loop.body.lr.ph ], [ %16, %loop.body.prol.loopexit.loopexit ]
  %__index.addr.010.unr = phi i64 [ %__low, %loop.body.lr.ph ], [ %17, %loop.body.prol.loopexit.loopexit ]
  %18 = icmp ult i64 %8, 3
  br i1 %18, label %loop.cond.cleanup, label %loop.body.preheader

loop.body.preheader:                              ; preds = %loop.body.prol.loopexit
  br label %loop.body

loop.cond.cleanup:                                ; preds = %loop.body, %loop.body.prol.loopexit, %entry
  ret void

loop.body:                                        ; preds = %loop.body.preheader, %loop.body
  %__cv_k.011 = phi i64 [ %inc.3, %loop.body ], [ %__cv_k.011.unr, %loop.body.preheader ]
  %__index.addr.010 = phi i64 [ %47, %loop.body ], [ %__index.addr.010.unr, %loop.body.preheader ]
  %19 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !249
  %20 = load %struct.event*, %struct.event** %19, align 8, !tbaa !24
  %mul1 = mul nsw i64 %__cv_k.011, 10
  %arrayidx = getelementptr inbounds %struct.event, %struct.event* %20, i64 %mul1
  %21 = load %struct.event**, %struct.event*** %5, align 8, !tbaa !250
  %22 = load %struct.event*, %struct.event** %21, align 8, !tbaa !24
  %arrayidx2 = getelementptr inbounds %struct.event, %struct.event* %22, i64 %__cv_k.011
  %23 = bitcast %struct.event* %arrayidx to i64*
  %24 = bitcast %struct.event* %arrayidx2 to i64*
  %25 = load i64, i64* %23, align 4
  store i64 %25, i64* %24, align 4
  %inc = add nsw i64 %__cv_k.011, 1
  %26 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !249
  %27 = load %struct.event*, %struct.event** %26, align 8, !tbaa !24
  %mul1.1 = mul nsw i64 %inc, 10
  %arrayidx.1 = getelementptr inbounds %struct.event, %struct.event* %27, i64 %mul1.1
  %28 = load %struct.event**, %struct.event*** %5, align 8, !tbaa !250
  %29 = load %struct.event*, %struct.event** %28, align 8, !tbaa !24
  %arrayidx2.1 = getelementptr inbounds %struct.event, %struct.event* %29, i64 %inc
  %30 = bitcast %struct.event* %arrayidx.1 to i64*
  %31 = bitcast %struct.event* %arrayidx2.1 to i64*
  %32 = load i64, i64* %30, align 4
  store i64 %32, i64* %31, align 4
  %inc.1 = add nsw i64 %__cv_k.011, 2
  %33 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !249
  %34 = load %struct.event*, %struct.event** %33, align 8, !tbaa !24
  %mul1.2 = mul nsw i64 %inc.1, 10
  %arrayidx.2 = getelementptr inbounds %struct.event, %struct.event* %34, i64 %mul1.2
  %35 = load %struct.event**, %struct.event*** %5, align 8, !tbaa !250
  %36 = load %struct.event*, %struct.event** %35, align 8, !tbaa !24
  %arrayidx2.2 = getelementptr inbounds %struct.event, %struct.event* %36, i64 %inc.1
  %37 = bitcast %struct.event* %arrayidx.2 to i64*
  %38 = bitcast %struct.event* %arrayidx2.2 to i64*
  %39 = load i64, i64* %37, align 4
  store i64 %39, i64* %38, align 4
  %inc.2 = add nsw i64 %__cv_k.011, 3
  %40 = load %struct.event**, %struct.event*** %4, align 8, !tbaa !249
  %41 = load %struct.event*, %struct.event** %40, align 8, !tbaa !24
  %mul1.3 = mul nsw i64 %inc.2, 10
  %arrayidx.3 = getelementptr inbounds %struct.event, %struct.event* %41, i64 %mul1.3
  %42 = load %struct.event**, %struct.event*** %5, align 8, !tbaa !250
  %43 = load %struct.event*, %struct.event** %42, align 8, !tbaa !24
  %arrayidx2.3 = getelementptr inbounds %struct.event, %struct.event* %43, i64 %inc.2
  %44 = bitcast %struct.event* %arrayidx.3 to i64*
  %45 = bitcast %struct.event* %arrayidx2.3 to i64*
  %46 = load i64, i64* %44, align 4
  store i64 %46, i64* %45, align 4
  %inc.3 = add nsw i64 %__cv_k.011, 4
  %47 = add i64 %__index.addr.010, 4
  %exitcond.3 = icmp eq i64 %47, %__high
  br i1 %exitcond.3, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: uwtable
define internal void @__cilk_for_helper.31(%struct.anon.19* nocapture readonly %__context, i64 %__low, i64 %__high) #6 {
entry:
  %0 = icmp ult i64 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %__context, i64 0, i32 0
  %2 = load i64*, i64** %1, align 8, !tbaa !252
  %3 = load i64, i64* %2, align 8, !tbaa !120
  %add = add nsw i64 %3, %__low
  %4 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %__context, i64 0, i32 4
  %7 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %__context, i64 0, i32 6
  %8 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %__context, i64 0, i32 7
  %9 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %__context, i64 0, i32 8
  %10 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %__context, i64 0, i32 3
  br label %loop.body

loop.cond.cleanup:                                ; preds = %_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit, %entry
  ret void

loop.body:                                        ; preds = %_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit, %loop.body.lr.ph
  %__index.addr.027 = phi i64 [ %__low, %loop.body.lr.ph ], [ %40, %_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit ]
  %__cv_i.026 = phi i64 [ %add, %loop.body.lr.ph ], [ %inc, %_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit ]
  %11 = load i64*, i64** %4, align 8, !tbaa !254
  %12 = load i64, i64* %11, align 8, !tbaa !120
  %mul1 = mul nsw i64 %12, %__cv_i.026
  %13 = load i64*, i64** %5, align 8, !tbaa !255
  %14 = load i64, i64* %13, align 8, !tbaa !120
  %sub = add nsw i64 %14, -1
  %cmp = icmp slt i64 %__cv_i.026, %sub
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %loop.body
  %15 = load i32*, i32** %10, align 8, !tbaa !256
  %16 = load i32, i32* %15, align 4, !tbaa !26
  %conv = sext i32 %16 to i64
  %sub2 = sub nsw i64 %conv, %mul1
  br label %cond.end

cond.end:                                         ; preds = %loop.body, %cond.false
  %cond = phi i64 [ %sub2, %cond.false ], [ %12, %loop.body ]
  %17 = load %struct.event**, %struct.event*** %6, align 8, !tbaa !257
  %18 = load %struct.event*, %struct.event** %17, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %18, i64 %mul1
  tail call void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %add.ptr, i64 %cond)
  %19 = load %struct.event**, %struct.event*** %6, align 8, !tbaa !257
  %20 = load %struct.event*, %struct.event** %19, align 8, !tbaa !24
  %add.ptr3 = getelementptr inbounds %struct.event, %struct.event* %20, i64 %mul1
  %21 = load %struct.event**, %struct.event*** %7, align 8, !tbaa !258
  %22 = load %struct.event*, %struct.event** %21, align 8, !tbaa !24
  %23 = load i32**, i32*** %8, align 8, !tbaa !259
  %24 = load i32*, i32** %23, align 8, !tbaa !24
  %25 = load i32*, i32** %9, align 8, !tbaa !260
  %26 = load i32, i32* %25, align 4, !tbaa !26
  %conv4 = sext i32 %26 to i64
  %mul5 = mul nsw i64 %__cv_i.026, %conv4
  %add.ptr6 = getelementptr inbounds i32, i32* %24, i64 %mul5
  %sub7 = add nsw i32 %26, -1
  %conv8 = sext i32 %sub7 to i64
  %sC101.i = bitcast i32* %add.ptr6 to i8*
  %cmp.i = icmp eq i64 %cond, 0
  %cmp1.i = icmp eq i32 %sub7, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.end
  %add.ptr.i = getelementptr inbounds %struct.event, %struct.event* %add.ptr3, i64 %cond
  %add.ptr2.i = getelementptr inbounds %struct.event, %struct.event* %22, i64 %conv8
  %cmp395.i = icmp slt i32 %26, 1
  br i1 %cmp395.i, label %while.cond.i.preheader, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %27 = shl nsw i64 %conv8, 2
  %28 = add nsw i64 %27, 4
  tail call void @llvm.memset.p0i8.i64(i8* %sC101.i, i8 0, i64 %28, i32 4, i1 false)
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %for.body.lr.ph.i, %if.end.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.i.preheader
  %sC.addr.0.i = phi i32* [ %add.ptr6, %while.cond.i.preheader ], [ %sC.addr.0.i.be, %while.cond.i.backedge ]
  %sB.addr.0.i = phi %struct.event* [ %22, %while.cond.i.preheader ], [ %sB.addr.0.i.be, %while.cond.i.backedge ]
  %sA.addr.0.i = phi %struct.event* [ %add.ptr3, %while.cond.i.preheader ], [ %sA.addr.0.i.be, %while.cond.i.backedge ]
  %agg.tmp.sroa.0.0..sroa_cast79.i = bitcast %struct.event* %sA.addr.0.i to i64*
  %agg.tmp.sroa.0.0.copyload80.i = load i64, i64* %agg.tmp.sroa.0.0..sroa_cast79.i, align 4
  %agg.tmp5.sroa.0.0..sroa_cast.i = bitcast %struct.event* %sB.addr.0.i to i64*
  %agg.tmp5.sroa.0.0.copyload81.i = load i64, i64* %agg.tmp5.sroa.0.0..sroa_cast.i, align 4
  %a.sroa.0.0.extract.trunc.i82.i = trunc i64 %agg.tmp.sroa.0.0.copyload80.i to i32
  %29 = bitcast i32 %a.sroa.0.0.extract.trunc.i82.i to float
  %b.sroa.0.0.extract.trunc.i83.i = trunc i64 %agg.tmp5.sroa.0.0.copyload81.i to i32
  %30 = bitcast i32 %b.sroa.0.0.extract.trunc.i83.i to float
  %cmp.i84.i = fcmp olt float %29, %30
  br i1 %cmp.i84.i, label %while.body6.lr.ph.i, label %while.end.i

while.body6.lr.ph.i:                              ; preds = %while.cond.i
  %.pre.i = load i32, i32* %sC.addr.0.i, align 4, !tbaa !26
  br label %while.body6.i

while.cond4.i:                                    ; preds = %while.body6.i
  %agg.tmp.sroa.0.0..sroa_cast.i = bitcast %struct.event* %incdec.ptr.i to i64*
  %agg.tmp.sroa.0.0.copyload.i = load i64, i64* %agg.tmp.sroa.0.0..sroa_cast.i, align 4
  %agg.tmp5.sroa.0.0.copyload.i = load i64, i64* %agg.tmp5.sroa.0.0..sroa_cast.i, align 4
  %a.sroa.0.0.extract.trunc.i.i = trunc i64 %agg.tmp.sroa.0.0.copyload.i to i32
  %31 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i to float
  %b.sroa.0.0.extract.trunc.i.i = trunc i64 %agg.tmp5.sroa.0.0.copyload.i to i32
  %32 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i to float
  %cmp.i.i = fcmp olt float %31, %32
  br i1 %cmp.i.i, label %while.body6.i, label %while.end.i

while.body6.i:                                    ; preds = %while.cond4.i, %while.body6.lr.ph.i
  %33 = phi i32 [ %.pre.i, %while.body6.lr.ph.i ], [ %inc7.i, %while.cond4.i ]
  %sA.addr.185.i = phi %struct.event* [ %sA.addr.0.i, %while.body6.lr.ph.i ], [ %incdec.ptr.i, %while.cond4.i ]
  %inc7.i = add nsw i32 %33, 1
  store i32 %inc7.i, i32* %sC.addr.0.i, align 4, !tbaa !26
  %incdec.ptr.i = getelementptr inbounds %struct.event, %struct.event* %sA.addr.185.i, i64 1
  %cmp8.i = icmp eq %struct.event* %incdec.ptr.i, %add.ptr.i
  br i1 %cmp8.i, label %_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit, label %while.cond4.i

while.end.i:                                      ; preds = %while.cond4.i, %while.cond.i
  %agg.tmp23.sroa.0.0.copyload89.i = phi i64 [ %agg.tmp.sroa.0.0.copyload80.i, %while.cond.i ], [ %agg.tmp.sroa.0.0.copyload.i, %while.cond4.i ]
  %sA.addr.1.lcssa.i = phi %struct.event* [ %sA.addr.0.i, %while.cond.i ], [ %incdec.ptr.i, %while.cond4.i ]
  %.lcssa.i = phi float [ %30, %while.cond.i ], [ %32, %while.cond4.i ]
  %incdec.ptr11.i = getelementptr inbounds %struct.event, %struct.event* %sB.addr.0.i, i64 1
  %incdec.ptr12.i = getelementptr inbounds i32, i32* %sC.addr.0.i, i64 1
  %cmp13.i = icmp eq %struct.event* %incdec.ptr11.i, %add.ptr2.i
  br i1 %cmp13.i, label %while.end38.i, label %if.end15.i

if.end15.i:                                       ; preds = %while.end.i
  %agg.tmp18.sroa.0.0..sroa_cast.i = bitcast %struct.event* %incdec.ptr11.i to i64*
  %agg.tmp18.sroa.0.0.copyload.i = load i64, i64* %agg.tmp18.sroa.0.0..sroa_cast.i, align 4
  %b.sroa.0.0.extract.trunc.i73.i = trunc i64 %agg.tmp18.sroa.0.0.copyload.i to i32
  %34 = bitcast i32 %b.sroa.0.0.extract.trunc.i73.i to float
  %cmp.i74.i = fcmp olt float %.lcssa.i, %34
  br i1 %cmp.i74.i, label %while.cond.i.backedge, label %if.then20.i

if.then20.i:                                      ; preds = %if.end15.i
  %b.sroa.0.0.extract.trunc.i7091.i = trunc i64 %agg.tmp23.sroa.0.0.copyload89.i to i32
  %35 = bitcast i32 %b.sroa.0.0.extract.trunc.i7091.i to float
  %cmp.i7192.i = fcmp olt float %34, %35
  br i1 %cmp.i7192.i, label %while.end31.i, label %while.body25.lr.ph.i

while.body25.lr.ph.i:                             ; preds = %if.then20.i
  %.pre103.i = load i32, i32* %incdec.ptr12.i, align 4, !tbaa !26
  br label %while.body25.i

while.cond21.i:                                   ; preds = %while.body25.i
  %agg.tmp22.sroa.0.0.copyload.i = load i64, i64* %agg.tmp18.sroa.0.0..sroa_cast.i, align 4
  %agg.tmp23.sroa.0.0..sroa_cast.i = bitcast %struct.event* %incdec.ptr27.i to i64*
  %agg.tmp23.sroa.0.0.copyload.i = load i64, i64* %agg.tmp23.sroa.0.0..sroa_cast.i, align 4
  %a.sroa.0.0.extract.trunc.i69.i = trunc i64 %agg.tmp22.sroa.0.0.copyload.i to i32
  %36 = bitcast i32 %a.sroa.0.0.extract.trunc.i69.i to float
  %b.sroa.0.0.extract.trunc.i70.i = trunc i64 %agg.tmp23.sroa.0.0.copyload.i to i32
  %37 = bitcast i32 %b.sroa.0.0.extract.trunc.i70.i to float
  %cmp.i71.i = fcmp olt float %36, %37
  br i1 %cmp.i71.i, label %while.end31.i, label %while.body25.i

while.body25.i:                                   ; preds = %while.cond21.i, %while.body25.lr.ph.i
  %38 = phi i32 [ %.pre103.i, %while.body25.lr.ph.i ], [ %inc26.i, %while.cond21.i ]
  %sA.addr.293.i = phi %struct.event* [ %sA.addr.1.lcssa.i, %while.body25.lr.ph.i ], [ %incdec.ptr27.i, %while.cond21.i ]
  %inc26.i = add nsw i32 %38, 1
  store i32 %inc26.i, i32* %incdec.ptr12.i, align 4, !tbaa !26
  %incdec.ptr27.i = getelementptr inbounds %struct.event, %struct.event* %sA.addr.293.i, i64 1
  %cmp28.i = icmp eq %struct.event* %incdec.ptr27.i, %add.ptr.i
  br i1 %cmp28.i, label %_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit, label %while.cond21.i

while.end31.i:                                    ; preds = %while.cond21.i, %if.then20.i
  %sA.addr.2.lcssa.i = phi %struct.event* [ %sA.addr.1.lcssa.i, %if.then20.i ], [ %incdec.ptr27.i, %while.cond21.i ]
  %incdec.ptr32.i = getelementptr inbounds %struct.event, %struct.event* %sB.addr.0.i, i64 2
  %incdec.ptr33.i = getelementptr inbounds i32, i32* %sC.addr.0.i, i64 2
  %cmp34.i = icmp eq %struct.event* %incdec.ptr32.i, %add.ptr2.i
  br i1 %cmp34.i, label %while.end38.i, label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %while.end31.i, %if.end15.i
  %sC.addr.0.i.be = phi i32* [ %incdec.ptr12.i, %if.end15.i ], [ %incdec.ptr33.i, %while.end31.i ]
  %sB.addr.0.i.be = phi %struct.event* [ %incdec.ptr11.i, %if.end15.i ], [ %incdec.ptr32.i, %while.end31.i ]
  %sA.addr.0.i.be = phi %struct.event* [ %sA.addr.1.lcssa.i, %if.end15.i ], [ %sA.addr.2.lcssa.i, %while.end31.i ]
  br label %while.cond.i

while.end38.i:                                    ; preds = %while.end31.i, %while.end.i
  %sC.addr.2.i = phi i32* [ %incdec.ptr12.i, %while.end.i ], [ %incdec.ptr33.i, %while.end31.i ]
  %sA.addr.4.i = phi %struct.event* [ %sA.addr.1.lcssa.i, %while.end.i ], [ %sA.addr.2.lcssa.i, %while.end31.i ]
  %sub.ptr.lhs.cast.i = ptrtoint %struct.event* %add.ptr.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint %struct.event* %sA.addr.4.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %39 = lshr exact i64 %sub.ptr.sub.i, 3
  %conv.i = trunc i64 %39 to i32
  store i32 %conv.i, i32* %sC.addr.2.i, align 4, !tbaa !26
  br label %_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit

_Z8mergeSeqI5event6cmpValiEvPT_S3_PT1_llT0_.exit: ; preds = %while.body6.i, %while.body25.i, %cond.end, %while.end38.i
  %inc = add nsw i64 %__cv_i.026, 1
  %40 = add nuw i64 %__index.addr.027, 1
  %exitcond = icmp eq i64 %40, %__high
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: uwtable
define internal void @__cilk_for_helper.32(%struct.anon.21* nocapture readonly %__context, i64 %__low, i64 %__high) #6 {
entry:
  %0 = icmp ult i64 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %__context, i64 0, i32 0
  %2 = load i64*, i64** %1, align 8, !tbaa !252
  %3 = load i64, i64* %2, align 8, !tbaa !120
  %add = add nsw i64 %3, %__low
  %4 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %__context, i64 0, i32 3
  %7 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %__context, i64 0, i32 4
  %8 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %__context, i64 0, i32 7
  %9 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %__context, i64 0, i32 6
  %10 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %__context, i64 0, i32 8
  br label %loop.body

loop.cond.cleanup:                                ; preds = %for.cond.cleanup, %entry
  ret void

loop.body:                                        ; preds = %for.cond.cleanup, %loop.body.lr.ph
  %__index.addr.046 = phi i64 [ %__low, %loop.body.lr.ph ], [ %37, %for.cond.cleanup ]
  %__cv_i.045 = phi i64 [ %add, %loop.body.lr.ph ], [ %inc21, %for.cond.cleanup ]
  %11 = load i32**, i32*** %4, align 8, !tbaa !254
  %12 = load i32*, i32** %11, align 8, !tbaa !24
  %13 = load i64*, i64** %5, align 8, !tbaa !255
  %14 = load i64, i64* %13, align 8, !tbaa !120
  %mul1 = mul nsw i64 %14, %__cv_i.045
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %mul1
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !26
  %conv = sext i32 %15 to i64
  %16 = load i32*, i32** %6, align 8, !tbaa !256
  %17 = load i32, i32* %16, align 4, !tbaa !26
  %sub = add nsw i32 %17, -1
  %conv2 = sext i32 %sub to i64
  %cmp = icmp slt i64 %__cv_i.045, %conv2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %loop.body
  %add3 = add nsw i64 %__cv_i.045, 1
  %mul4 = mul nsw i64 %14, %add3
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %mul4
  br label %cond.end

cond.false:                                       ; preds = %loop.body
  %18 = load i32*, i32** %7, align 8, !tbaa !257
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32* [ %arrayidx5, %cond.true ], [ %18, %cond.false ]
  %cond = load i32, i32* %cond.in, align 4, !tbaa !26
  %conv6 = sext i32 %cond to i64
  %cmp7 = icmp eq i64 %__cv_i.045, 0
  %cmp10 = icmp eq i64 %__cv_i.045, %conv2
  %or.cond = or i1 %cmp7, %cmp10
  br i1 %or.cond, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %cond.end
  %19 = load %struct.event**, %struct.event*** %9, align 8, !tbaa !258
  %20 = load %struct.event*, %struct.event** %19, align 8, !tbaa !24
  %sub12 = add nsw i64 %__cv_i.045, -1
  %arrayidx13 = getelementptr inbounds %struct.event, %struct.event* %20, i64 %sub12
  %agg.tmp.sroa.0.0..sroa_cast = bitcast %struct.event* %arrayidx13 to i64*
  %agg.tmp.sroa.0.0.copyload = load i64, i64* %agg.tmp.sroa.0.0..sroa_cast, align 4
  %arrayidx15 = getelementptr inbounds %struct.event, %struct.event* %20, i64 %__cv_i.045
  %agg.tmp14.sroa.0.0..sroa_cast = bitcast %struct.event* %arrayidx15 to i64*
  %agg.tmp14.sroa.0.0.copyload = load i64, i64* %agg.tmp14.sroa.0.0..sroa_cast, align 4
  %a.sroa.0.0.extract.trunc.i = trunc i64 %agg.tmp.sroa.0.0.copyload to i32
  %21 = bitcast i32 %a.sroa.0.0.extract.trunc.i to float
  %b.sroa.0.0.extract.trunc.i = trunc i64 %agg.tmp14.sroa.0.0.copyload to i32
  %22 = bitcast i32 %b.sroa.0.0.extract.trunc.i to float
  %cmp.i = fcmp olt float %21, %22
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %cond.end
  %23 = load %struct.event**, %struct.event*** %8, align 8, !tbaa !259
  %24 = load %struct.event*, %struct.event** %23, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %24, i64 %conv
  %sub16 = sub nsw i64 %conv6, %conv
  tail call void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %add.ptr, i64 %sub16)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false11
  %cmp1843 = icmp sgt i32 %cond, %15
  br i1 %cmp1843, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %if.end
  %25 = sub nsw i64 %conv6, %conv
  %26 = xor i64 %conv, -1
  %27 = add nsw i64 %26, %conv6
  %xtraiter = and i64 %25, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol.preheader

for.body.prol.preheader:                          ; preds = %for.body.preheader
  br label %for.body.prol

for.body.prol:                                    ; preds = %for.body.prol.preheader, %for.body.prol
  %j.044.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %conv, %for.body.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter, %for.body.prol.preheader ]
  %28 = load %struct.event**, %struct.event*** %8, align 8, !tbaa !259
  %29 = load %struct.event*, %struct.event** %28, align 8, !tbaa !24
  %arrayidx19.prol = getelementptr inbounds %struct.event, %struct.event* %29, i64 %j.044.prol
  %30 = load %struct.event**, %struct.event*** %10, align 8, !tbaa !260
  %31 = load %struct.event*, %struct.event** %30, align 8, !tbaa !24
  %arrayidx20.prol = getelementptr inbounds %struct.event, %struct.event* %31, i64 %j.044.prol
  %32 = bitcast %struct.event* %arrayidx19.prol to i64*
  %33 = bitcast %struct.event* %arrayidx20.prol to i64*
  %34 = load i64, i64* %32, align 4
  store i64 %34, i64* %33, align 4
  %inc.prol = add nsw i64 %j.044.prol, 1
  %prol.iter.sub = add nsw i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.prol.loopexit.loopexit, label %for.body.prol, !llvm.loop !261

for.body.prol.loopexit.loopexit:                  ; preds = %for.body.prol
  %35 = add nsw i64 %xtraiter, %conv
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol.loopexit.loopexit, %for.body.preheader
  %j.044.unr = phi i64 [ %conv, %for.body.preheader ], [ %35, %for.body.prol.loopexit.loopexit ]
  %36 = icmp ult i64 %27, 3
  br i1 %36, label %for.cond.cleanup, label %for.body.preheader48

for.body.preheader48:                             ; preds = %for.body.prol.loopexit
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %for.body.prol.loopexit, %if.end
  %inc21 = add nsw i64 %__cv_i.045, 1
  %37 = add nuw i64 %__index.addr.046, 1
  %exitcond47 = icmp eq i64 %37, %__high
  br i1 %exitcond47, label %loop.cond.cleanup, label %loop.body

for.body:                                         ; preds = %for.body.preheader48, %for.body
  %j.044 = phi i64 [ %inc.3, %for.body ], [ %j.044.unr, %for.body.preheader48 ]
  %38 = load %struct.event**, %struct.event*** %8, align 8, !tbaa !259
  %39 = load %struct.event*, %struct.event** %38, align 8, !tbaa !24
  %arrayidx19 = getelementptr inbounds %struct.event, %struct.event* %39, i64 %j.044
  %40 = load %struct.event**, %struct.event*** %10, align 8, !tbaa !260
  %41 = load %struct.event*, %struct.event** %40, align 8, !tbaa !24
  %arrayidx20 = getelementptr inbounds %struct.event, %struct.event* %41, i64 %j.044
  %42 = bitcast %struct.event* %arrayidx19 to i64*
  %43 = bitcast %struct.event* %arrayidx20 to i64*
  %44 = load i64, i64* %42, align 4
  store i64 %44, i64* %43, align 4
  %inc = add nsw i64 %j.044, 1
  %45 = load %struct.event**, %struct.event*** %8, align 8, !tbaa !259
  %46 = load %struct.event*, %struct.event** %45, align 8, !tbaa !24
  %arrayidx19.1 = getelementptr inbounds %struct.event, %struct.event* %46, i64 %inc
  %47 = load %struct.event**, %struct.event*** %10, align 8, !tbaa !260
  %48 = load %struct.event*, %struct.event** %47, align 8, !tbaa !24
  %arrayidx20.1 = getelementptr inbounds %struct.event, %struct.event* %48, i64 %inc
  %49 = bitcast %struct.event* %arrayidx19.1 to i64*
  %50 = bitcast %struct.event* %arrayidx20.1 to i64*
  %51 = load i64, i64* %49, align 4
  store i64 %51, i64* %50, align 4
  %inc.1 = add nsw i64 %j.044, 2
  %52 = load %struct.event**, %struct.event*** %8, align 8, !tbaa !259
  %53 = load %struct.event*, %struct.event** %52, align 8, !tbaa !24
  %arrayidx19.2 = getelementptr inbounds %struct.event, %struct.event* %53, i64 %inc.1
  %54 = load %struct.event**, %struct.event*** %10, align 8, !tbaa !260
  %55 = load %struct.event*, %struct.event** %54, align 8, !tbaa !24
  %arrayidx20.2 = getelementptr inbounds %struct.event, %struct.event* %55, i64 %inc.1
  %56 = bitcast %struct.event* %arrayidx19.2 to i64*
  %57 = bitcast %struct.event* %arrayidx20.2 to i64*
  %58 = load i64, i64* %56, align 4
  store i64 %58, i64* %57, align 4
  %inc.2 = add nsw i64 %j.044, 3
  %59 = load %struct.event**, %struct.event*** %8, align 8, !tbaa !259
  %60 = load %struct.event*, %struct.event** %59, align 8, !tbaa !24
  %arrayidx19.3 = getelementptr inbounds %struct.event, %struct.event* %60, i64 %inc.2
  %61 = load %struct.event**, %struct.event*** %10, align 8, !tbaa !260
  %62 = load %struct.event*, %struct.event** %61, align 8, !tbaa !24
  %arrayidx20.3 = getelementptr inbounds %struct.event, %struct.event* %62, i64 %inc.2
  %63 = bitcast %struct.event* %arrayidx19.3 to i64*
  %64 = bitcast %struct.event* %arrayidx20.3 to i64*
  %65 = load i64, i64* %63, align 4
  store i64 %65, i64* %64, align 4
  %inc.3 = add nsw i64 %j.044, 4
  %exitcond.3 = icmp eq i64 %inc.3, %conv6
  br i1 %exitcond.3, label %for.cond.cleanup, label %for.body
}

; Function Attrs: uwtable
define linkonce_odr { %struct.event*, %struct.event* } @_Z5splitI5event6cmpValiESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i32 %n) local_unnamed_addr #6 comdat {
entry:
  %a.i = alloca i64, align 8
  %b.i = alloca i64, align 8
  %c.i = alloca i64, align 8
  %div = sdiv i32 %n, 4
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds %struct.event, %struct.event* %A, i64 %idxprom
  %agg.tmp.sroa.0.0..sroa_cast = bitcast %struct.event* %arrayidx to i64*
  %agg.tmp.sroa.0.0.copyload = load i64, i64* %agg.tmp.sroa.0.0..sroa_cast, align 4
  %div2 = sdiv i32 %n, 2
  %idxprom3 = sext i32 %div2 to i64
  %arrayidx4 = getelementptr inbounds %struct.event, %struct.event* %A, i64 %idxprom3
  %agg.tmp1.sroa.0.0..sroa_cast = bitcast %struct.event* %arrayidx4 to i64*
  %agg.tmp1.sroa.0.0.copyload = load i64, i64* %agg.tmp1.sroa.0.0..sroa_cast, align 4
  %mul = mul nsw i32 %n, 3
  %div6 = sdiv i32 %mul, 4
  %idxprom7 = sext i32 %div6 to i64
  %arrayidx8 = getelementptr inbounds %struct.event, %struct.event* %A, i64 %idxprom7
  %agg.tmp5.sroa.0.0..sroa_cast = bitcast %struct.event* %arrayidx8 to i64*
  %agg.tmp5.sroa.0.0.copyload = load i64, i64* %agg.tmp5.sroa.0.0..sroa_cast, align 4
  %a.i.0.a.i.0..sroa_cast = bitcast i64* %a.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %a.i.0.a.i.0..sroa_cast)
  %b.i.0.b.i.0..sroa_cast = bitcast i64* %b.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %b.i.0.b.i.0..sroa_cast)
  %c.i.0.c.i.0..sroa_cast = bitcast i64* %c.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %c.i.0.c.i.0..sroa_cast)
  %a.i.0.a.i.0.a.0.tmpcast.sroa_cast = bitcast i64* %a.i to %struct.event*
  %b.i.0.b.i.0.b.0.tmpcast30.sroa_cast = bitcast i64* %b.i to %struct.event*
  store i64 %agg.tmp.sroa.0.0.copyload, i64* %a.i, align 8
  store i64 %agg.tmp1.sroa.0.0.copyload, i64* %b.i, align 8
  store i64 %agg.tmp5.sroa.0.0.copyload, i64* %c.i, align 8
  %a.sroa.0.0.extract.trunc.i.i = trunc i64 %agg.tmp.sroa.0.0.copyload to i32
  %0 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i to float
  %b.sroa.0.0.extract.trunc.i.i = trunc i64 %agg.tmp1.sroa.0.0.copyload to i32
  %1 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i to float
  %cmp.i.i = fcmp olt float %0, %1
  %b.sroa.0.0.extract.trunc.i42.i = trunc i64 %agg.tmp5.sroa.0.0.copyload to i32
  %2 = bitcast i32 %b.sroa.0.0.extract.trunc.i42.i to float
  br i1 %cmp.i.i, label %cond.true.i, label %cond.false13.i

cond.true.i:                                      ; preds = %entry
  %cmp.i43.i = fcmp olt float %1, %2
  br i1 %cmp.i43.i, label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit, label %cond.false.i

cond.false.i:                                     ; preds = %cond.true.i
  %cmp.i40.i = fcmp olt float %0, %2
  %c.i.0.c.i.0.c.0.tmpcast31.sroa_cast120 = bitcast i64* %c.i to %struct.event*
  %c.a.i = select i1 %cmp.i40.i, %struct.event* %c.i.0.c.i.0.c.0.tmpcast31.sroa_cast120, %struct.event* %a.i.0.a.i.0.a.0.tmpcast.sroa_cast
  br label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit

cond.false13.i:                                   ; preds = %entry
  %cmp.i37.i = fcmp olt float %0, %2
  br i1 %cmp.i37.i, label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit, label %cond.false18.i

cond.false18.i:                                   ; preds = %cond.false13.i
  %cmp.i34.i = fcmp olt float %1, %2
  %c.i.0.c.i.0.c.0.tmpcast31.sroa_cast = bitcast i64* %c.i to %struct.event*
  %c.b.i = select i1 %cmp.i34.i, %struct.event* %c.i.0.c.i.0.c.0.tmpcast31.sroa_cast, %struct.event* %b.i.0.b.i.0.b.0.tmpcast30.sroa_cast
  br label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit

_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit: ; preds = %cond.true.i, %cond.false.i, %cond.false13.i, %cond.false18.i
  %cond-lvalue29.i = phi %struct.event* [ %c.a.i, %cond.false.i ], [ %b.i.0.b.i.0.b.0.tmpcast30.sroa_cast, %cond.true.i ], [ %c.b.i, %cond.false18.i ], [ %a.i.0.a.i.0.a.0.tmpcast.sroa_cast, %cond.false13.i ]
  %retval.sroa.0.0..sroa_cast.i = bitcast %struct.event* %cond-lvalue29.i to i64*
  %retval.sroa.0.0.copyload.i = load i64, i64* %retval.sroa.0.0..sroa_cast.i, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %a.i.0.a.i.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %b.i.0.b.i.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %c.i.0.c.i.0..sroa_cast)
  %3 = ptrtoint %struct.event* %A to i64
  %idx.ext = sext i32 %n to i64
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %A, i64 %idx.ext
  %a.sroa.0.0.extract.trunc.i64 = trunc i64 %retval.sroa.0.0.copyload.i to i32
  %4 = bitcast i32 %a.sroa.0.0.extract.trunc.i64 to float
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit
  %L.sroa.0.0 = phi i64 [ %3, %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit ], [ %L.sroa.0.4, %if.end38 ]
  %M.sroa.0.0 = phi i64 [ %3, %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit ], [ %31, %if.end38 ]
  %add.ptr.pn = phi %struct.event* [ %add.ptr, %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit ], [ %R.1, %if.end38 ]
  %R.0 = getelementptr inbounds %struct.event, %struct.event* %add.ptr.pn, i64 -1
  %5 = inttoptr i64 %M.sroa.0.0 to i64*
  %agg.tmp13.sroa.0.0.copyload85 = load i64, i64* %5, align 4
  %b.sroa.0.0.extract.trunc.i6586 = trunc i64 %agg.tmp13.sroa.0.0.copyload85 to i32
  %6 = bitcast i32 %b.sroa.0.0.extract.trunc.i6586 to float
  %cmp.i6687 = fcmp olt float %4, %6
  br i1 %cmp.i6687, label %while.end, label %while.body15.preheader

while.body15.preheader:                           ; preds = %while.cond
  br label %while.body15

while.body15:                                     ; preds = %while.body15.preheader, %if.end20
  %7 = phi float [ %18, %if.end20 ], [ %6, %while.body15.preheader ]
  %8 = phi i64* [ %17, %if.end20 ], [ %5, %while.body15.preheader ]
  %M.sroa.0.189 = phi i64 [ %16, %if.end20 ], [ %M.sroa.0.0, %while.body15.preheader ]
  %L.sroa.0.188 = phi i64 [ %L.sroa.0.2, %if.end20 ], [ %L.sroa.0.0, %while.body15.preheader ]
  %cmp.i63 = fcmp olt float %7, %4
  br i1 %cmp.i63, label %if.then, label %if.end

if.then:                                          ; preds = %while.body15
  %9 = inttoptr i64 %L.sroa.0.188 to %struct.event*
  %incdec.ptr = getelementptr inbounds %struct.event, %struct.event* %9, i64 1
  %10 = ptrtoint %struct.event* %incdec.ptr to i64
  %11 = inttoptr i64 %M.sroa.0.189 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = inttoptr i64 %L.sroa.0.188 to i64*
  %14 = load i64, i64* %13, align 4
  store i64 %14, i64* %11, align 4
  store i64 %12, i64* %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body15
  %L.sroa.0.2 = phi i64 [ %10, %if.then ], [ %L.sroa.0.188, %while.body15 ]
  %15 = inttoptr i64 %M.sroa.0.189 to %struct.event*
  %cmp = icmp ugt %struct.event* %R.0, %15
  br i1 %cmp, label %if.end20, label %while.end

if.end20:                                         ; preds = %if.end
  %incdec.ptr21 = getelementptr inbounds %struct.event, %struct.event* %15, i64 1
  %16 = ptrtoint %struct.event* %incdec.ptr21 to i64
  %17 = bitcast %struct.event* %incdec.ptr21 to i64*
  %agg.tmp13.sroa.0.0.copyload = load i64, i64* %17, align 4
  %b.sroa.0.0.extract.trunc.i65 = trunc i64 %agg.tmp13.sroa.0.0.copyload to i32
  %18 = bitcast i32 %b.sroa.0.0.extract.trunc.i65 to float
  %cmp.i66 = fcmp olt float %4, %18
  br i1 %cmp.i66, label %while.end.loopexit.split.loop.exit, label %while.body15

while.end.loopexit.split.loop.exit:               ; preds = %if.end20
  %19 = ptrtoint %struct.event* %incdec.ptr21 to i64
  %20 = bitcast %struct.event* %incdec.ptr21 to i64*
  br label %while.end

while.end:                                        ; preds = %if.end, %while.end.loopexit.split.loop.exit, %while.cond
  %M.sroa.0.1.lcssa = phi i64 [ %M.sroa.0.0, %while.cond ], [ %19, %while.end.loopexit.split.loop.exit ], [ %M.sroa.0.189, %if.end ]
  %.lcssa83 = phi i64* [ %5, %while.cond ], [ %20, %while.end.loopexit.split.loop.exit ], [ %8, %if.end ]
  %L.sroa.0.3 = phi i64 [ %L.sroa.0.0, %while.cond ], [ %L.sroa.0.2, %while.end.loopexit.split.loop.exit ], [ %L.sroa.0.2, %if.end ]
  br label %while.cond22

while.cond22:                                     ; preds = %while.cond22, %while.end
  %R.1 = phi %struct.event* [ %R.0, %while.end ], [ %incdec.ptr27, %while.cond22 ]
  %agg.tmp24.sroa.0.0..sroa_cast = bitcast %struct.event* %R.1 to i64*
  %agg.tmp24.sroa.0.0.copyload = load i64, i64* %agg.tmp24.sroa.0.0..sroa_cast, align 4
  %b.sroa.0.0.extract.trunc.i59 = trunc i64 %agg.tmp24.sroa.0.0.copyload to i32
  %21 = bitcast i32 %b.sroa.0.0.extract.trunc.i59 to float
  %cmp.i60 = fcmp olt float %4, %21
  %incdec.ptr27 = getelementptr inbounds %struct.event, %struct.event* %R.1, i64 -1
  br i1 %cmp.i60, label %while.cond22, label %while.end28

while.end28:                                      ; preds = %while.cond22
  %22 = inttoptr i64 %M.sroa.0.1.lcssa to %struct.event*
  %cmp29 = icmp ugt %struct.event* %R.1, %22
  br i1 %cmp29, label %if.end31, label %while.end40

if.end31:                                         ; preds = %while.end28
  %agg.tmp24.sroa.0.0..sroa_cast.le = bitcast %struct.event* %R.1 to i64*
  %23 = inttoptr i64 %M.sroa.0.1.lcssa to i64*
  %24 = load i64, i64* %23, align 4
  store i64 %agg.tmp24.sroa.0.0.copyload, i64* %23, align 4
  store i64 %24, i64* %agg.tmp24.sroa.0.0..sroa_cast.le, align 4
  %agg.tmp33.sroa.0.0.copyload = load i64, i64* %.lcssa83, align 4
  %a.sroa.0.0.extract.trunc.i = trunc i64 %agg.tmp33.sroa.0.0.copyload to i32
  %25 = bitcast i32 %a.sroa.0.0.extract.trunc.i to float
  %cmp.i = fcmp olt float %25, %4
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end31
  %26 = inttoptr i64 %L.sroa.0.3 to %struct.event*
  %incdec.ptr37 = getelementptr inbounds %struct.event, %struct.event* %26, i64 1
  %27 = ptrtoint %struct.event* %incdec.ptr37 to i64
  %28 = load i64, i64* %23, align 4
  %29 = inttoptr i64 %L.sroa.0.3 to i64*
  %30 = load i64, i64* %29, align 4
  store i64 %30, i64* %23, align 4
  store i64 %28, i64* %29, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end31
  %L.sroa.0.4 = phi i64 [ %27, %if.then36 ], [ %L.sroa.0.3, %if.end31 ]
  %incdec.ptr39 = getelementptr inbounds %struct.event, %struct.event* %22, i64 1
  %31 = ptrtoint %struct.event* %incdec.ptr39 to i64
  br label %while.cond

while.end40:                                      ; preds = %while.end28
  %32 = inttoptr i64 %M.sroa.0.1.lcssa to %struct.event*
  %33 = inttoptr i64 %L.sroa.0.3 to %struct.event*
  %.fca.0.insert = insertvalue { %struct.event*, %struct.event* } undef, %struct.event* %33, 0
  %.fca.1.insert = insertvalue { %struct.event*, %struct.event* } %.fca.0.insert, %struct.event* %32, 1
  ret { %struct.event*, %struct.event* } %.fca.1.insert
}

; Function Attrs: noinline uwtable
define internal fastcc void @__cilk_spawn_helper.33(%struct.anon.23* nocapture readonly %__context) unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = tail call %__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %3, %__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %0, %__cilkrts_worker** %5 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %2 release, align 8
  %6 = load %__cilkrts_worker*, %__cilkrts_worker** %5, align 8
  %7 = load %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %4, align 8
  %8 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 0
  %9 = load atomic %__cilkrts_stack_frame**, %__cilkrts_stack_frame*** %8 acquire, align 8
  %.elt.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 0
  %.unpack.i.i = load i64, i64* %.elt.i.i, align 8
  %.elt1.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 1
  %10 = bitcast %__cilkrts_pedigree** %.elt1.i.i to i64*
  %.unpack26.i.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9
  %.repack.i.i = getelementptr inbounds %__cilkrts_pedigree, %__cilkrts_pedigree* %11, i64 0, i32 0
  store i64 %.unpack.i.i, i64* %.repack.i.i, align 8
  %.repack4.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 1
  %12 = bitcast %__cilkrts_pedigree** %.repack4.i.i to i64*
  store i64 %.unpack26.i.i, i64* %12, align 8
  %.repack11.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 0
  store i64 %.unpack.i.i, i64* %.repack11.i.i, align 8
  %.repack13.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 1
  %13 = bitcast %__cilkrts_pedigree** %.repack13.i.i to i64*
  store i64 %.unpack26.i.i, i64* %13, align 8
  store atomic i64 0, i64* %.elt.i.i release, align 8
  store atomic %__cilkrts_pedigree* %11, %__cilkrts_pedigree** %.elt1.i.i release, align 8
  fence release
  store volatile %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %9, align 8
  %14 = getelementptr %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %9, i64 1
  store atomic %__cilkrts_stack_frame** %14, %__cilkrts_stack_frame*** %8 release, align 8
  %15 = load atomic i32, i32* %1 acquire, align 8
  %16 = or i32 %15, 4
  store atomic i32 %16, i32* %1 release, align 8
  %17 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %__context, i64 0, i32 0
  %18 = load %struct.event**, %struct.event*** %17, align 8, !tbaa !262
  %19 = load %struct.event*, %struct.event** %18, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %__context, i64 0, i32 1
  %21 = bitcast %"struct.std::pair.22"** %20 to i64**
  %22 = load i64*, i64** %21, align 8, !tbaa !264
  %23 = load i64, i64* %22, align 8, !tbaa !265
  %sub.ptr.rhs.cast = ptrtoint %struct.event* %19 to i64
  %sub.ptr.sub = sub i64 %23, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  invoke void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %19, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %24 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %25 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %24, i64 0, i32 9
  %28 = bitcast %__cilkrts_stack_frame** %27 to i64*
  store atomic i64 %26, i64* %28 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %29 = load atomic i32, i32* %1 acquire, align 8
  %30 = icmp eq i32 %29, 16777216
  br i1 %30, label %__cilk_parent_epilogue.exit, label %31

; <label>:31:                                     ; preds = %invoke.cont
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont, %31
  ret void

lpad:                                             ; preds = %entry
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  %34 = load atomic i32, i32* %1 acquire, align 8
  %35 = or i32 %34, 16
  store atomic i32 %35, i32* %1 release, align 8
  %36 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %33, i8** %36 release, align 8
  %37 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %38 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %37, i64 0, i32 9
  %41 = bitcast %__cilkrts_stack_frame** %40 to i64*
  store atomic i64 %39, i64* %41 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %42 = load atomic i32, i32* %1 acquire, align 8
  %43 = icmp eq i32 %42, 16777216
  br i1 %43, label %__cilk_parent_epilogue.exit3, label %44

; <label>:44:                                     ; preds = %lpad
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit3

__cilk_parent_epilogue.exit3:                     ; preds = %lpad, %44
  resume { i8*, i32 } %32
}

; Function Attrs: uwtable
define linkonce_odr void @_Z15quickSortSerialI5event6cmpVallEvPT_T1_T0_(%struct.event* %A, i64 %n) local_unnamed_addr #6 comdat {
entry:
  %cmp19 = icmp sgt i64 %n, 20
  br i1 %cmp19, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.rhs.cast4 = ptrtoint %struct.event* %A to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %n.addr.020 = phi i64 [ %n, %while.body.lr.ph ], [ %sub.ptr.div6, %while.body ]
  %call = tail call { %struct.event*, %struct.event* } @_Z5splitI5event6cmpVallESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i64 %n.addr.020)
  %0 = extractvalue { %struct.event*, %struct.event* } %call, 0
  %1 = extractvalue { %struct.event*, %struct.event* } %call, 1
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %A, i64 %n.addr.020
  %sub.ptr.lhs.cast = ptrtoint %struct.event* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.event* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  tail call void @_Z15quickSortSerialI5event6cmpVallEvPT_T1_T0_(%struct.event* %1, i64 %sub.ptr.div)
  %sub.ptr.lhs.cast3 = ptrtoint %struct.event* %0 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %sub.ptr.div6 = ashr exact i64 %sub.ptr.sub5, 3
  %cmp = icmp sgt i64 %sub.ptr.sub5, 160
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %n.addr.0.lcssa = phi i64 [ %n, %entry ], [ %sub.ptr.div6, %while.body ]
  %cmp24.i = icmp sgt i64 %n.addr.0.lcssa, 0
  br i1 %cmp24.i, label %for.body.i.preheader, label %_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit

for.body.i.preheader:                             ; preds = %while.end
  %xtraiter = and i64 %n.addr.0.lcssa, 1
  %2 = icmp eq i64 %n.addr.0.lcssa, 1
  br i1 %2, label %for.body.i.epil, label %for.body.i.preheader.new

for.body.i.preheader.new:                         ; preds = %for.body.i.preheader
  %unroll_iter = sub i64 %n.addr.0.lcssa, %xtraiter
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.1, %for.body.i.preheader.new
  %i.025.i = phi i64 [ 0, %for.body.i.preheader.new ], [ %inc.i.1, %while.end.i.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body.i.preheader.new ], [ %niter.nsub.1, %while.end.i.1 ]
  %arrayidx.i = getelementptr inbounds %struct.event, %struct.event* %A, i64 %i.025.i
  %v.sroa.0.0..sroa_cast9.i = bitcast %struct.event* %arrayidx.i to i64*
  %v.sroa.0.0.copyload.i = load i64, i64* %v.sroa.0.0..sroa_cast9.i, align 4
  %incdec.ptr19.i = getelementptr inbounds %struct.event, %struct.event* %arrayidx.i, i64 -1
  %cmp120.i = icmp ult %struct.event* %incdec.ptr19.i, %A
  br i1 %cmp120.i, label %while.end.i, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %for.body.i
  %a.sroa.0.0.extract.trunc.i.i = trunc i64 %v.sroa.0.0.copyload.i to i32
  %3 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i to float
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.lr.ph.i
  %incdec.ptr22.i = phi %struct.event* [ %incdec.ptr19.i, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %while.body.i ]
  %B.021.i = phi %struct.event* [ %arrayidx.i, %land.rhs.lr.ph.i ], [ %incdec.ptr22.i, %while.body.i ]
  %agg.tmp2.sroa.0.0..sroa_cast.i = bitcast %struct.event* %incdec.ptr22.i to i64*
  %agg.tmp2.sroa.0.0.copyload.i = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i, align 4
  %b.sroa.0.0.extract.trunc.i.i = trunc i64 %agg.tmp2.sroa.0.0.copyload.i to i32
  %4 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i to float
  %cmp.i.i = fcmp olt float %3, %4
  %5 = bitcast %struct.event* %B.021.i to i64*
  br i1 %cmp.i.i, label %while.body.i, label %while.end.i.loopexit67

while.body.i:                                     ; preds = %land.rhs.i
  store i64 %agg.tmp2.sroa.0.0.copyload.i, i64* %5, align 4
  %incdec.ptr.i = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i, i64 -1
  %cmp1.i = icmp ult %struct.event* %incdec.ptr.i, %A
  br i1 %cmp1.i, label %while.end.i.loopexit, label %land.rhs.i

while.end.i.loopexit:                             ; preds = %while.body.i
  %agg.tmp2.sroa.0.0..sroa_cast.i.le = bitcast %struct.event* %incdec.ptr22.i to i64*
  br label %while.end.i

while.end.i.loopexit67:                           ; preds = %land.rhs.i
  %6 = bitcast %struct.event* %B.021.i to i64*
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit67, %while.end.i.loopexit, %for.body.i
  %v.sroa.0.0..sroa_cast10.pre-phi.i = phi i64* [ %v.sroa.0.0..sroa_cast9.i, %for.body.i ], [ %agg.tmp2.sroa.0.0..sroa_cast.i.le, %while.end.i.loopexit ], [ %6, %while.end.i.loopexit67 ]
  store i64 %v.sroa.0.0.copyload.i, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i, align 4
  %inc.i = or i64 %i.025.i, 1
  %arrayidx.i.1 = getelementptr inbounds %struct.event, %struct.event* %A, i64 %inc.i
  %v.sroa.0.0..sroa_cast9.i.1 = bitcast %struct.event* %arrayidx.i.1 to i64*
  %v.sroa.0.0.copyload.i.1 = load i64, i64* %v.sroa.0.0..sroa_cast9.i.1, align 4
  %a.sroa.0.0.extract.trunc.i.i.1 = trunc i64 %v.sroa.0.0.copyload.i.1 to i32
  %7 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.1 to float
  br label %land.rhs.i.1

_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit.loopexit.unr-lcssa: ; preds = %while.end.i.1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.body.i.preheader, %_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit.loopexit.unr-lcssa
  %i.025.i.unr45 = phi i64 [ %inc.i.1, %_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit.loopexit.unr-lcssa ], [ 0, %for.body.i.preheader ]
  %arrayidx.i.epil = getelementptr inbounds %struct.event, %struct.event* %A, i64 %i.025.i.unr45
  %v.sroa.0.0..sroa_cast9.i.epil = bitcast %struct.event* %arrayidx.i.epil to i64*
  %v.sroa.0.0.copyload.i.epil = load i64, i64* %v.sroa.0.0..sroa_cast9.i.epil, align 4
  %incdec.ptr19.i.epil = getelementptr inbounds %struct.event, %struct.event* %arrayidx.i.epil, i64 -1
  %cmp120.i.epil = icmp ult %struct.event* %incdec.ptr19.i.epil, %A
  br i1 %cmp120.i.epil, label %while.end.i.epil, label %land.rhs.lr.ph.i.epil

land.rhs.lr.ph.i.epil:                            ; preds = %for.body.i.epil
  %a.sroa.0.0.extract.trunc.i.i.epil = trunc i64 %v.sroa.0.0.copyload.i.epil to i32
  %8 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.epil to float
  br label %land.rhs.i.epil

land.rhs.i.epil:                                  ; preds = %while.body.i.epil, %land.rhs.lr.ph.i.epil
  %incdec.ptr22.i.epil = phi %struct.event* [ %incdec.ptr19.i.epil, %land.rhs.lr.ph.i.epil ], [ %incdec.ptr.i.epil, %while.body.i.epil ]
  %B.021.i.epil = phi %struct.event* [ %arrayidx.i.epil, %land.rhs.lr.ph.i.epil ], [ %incdec.ptr22.i.epil, %while.body.i.epil ]
  %agg.tmp2.sroa.0.0..sroa_cast.i.epil = bitcast %struct.event* %incdec.ptr22.i.epil to i64*
  %agg.tmp2.sroa.0.0.copyload.i.epil = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i.epil, align 4
  %b.sroa.0.0.extract.trunc.i.i.epil = trunc i64 %agg.tmp2.sroa.0.0.copyload.i.epil to i32
  %9 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i.epil to float
  %cmp.i.i.epil = fcmp olt float %8, %9
  %10 = bitcast %struct.event* %B.021.i.epil to i64*
  br i1 %cmp.i.i.epil, label %while.body.i.epil, label %while.end.i.epil.loopexit66

while.body.i.epil:                                ; preds = %land.rhs.i.epil
  store i64 %agg.tmp2.sroa.0.0.copyload.i.epil, i64* %10, align 4
  %incdec.ptr.i.epil = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.epil, i64 -1
  %cmp1.i.epil = icmp ult %struct.event* %incdec.ptr.i.epil, %A
  br i1 %cmp1.i.epil, label %while.end.i.epil.loopexit, label %land.rhs.i.epil

while.end.i.epil.loopexit:                        ; preds = %while.body.i.epil
  %agg.tmp2.sroa.0.0..sroa_cast.i.epil.le = bitcast %struct.event* %incdec.ptr22.i.epil to i64*
  br label %while.end.i.epil

while.end.i.epil.loopexit66:                      ; preds = %land.rhs.i.epil
  %11 = bitcast %struct.event* %B.021.i.epil to i64*
  br label %while.end.i.epil

while.end.i.epil:                                 ; preds = %while.end.i.epil.loopexit66, %while.end.i.epil.loopexit, %for.body.i.epil
  %v.sroa.0.0..sroa_cast10.pre-phi.i.epil = phi i64* [ %v.sroa.0.0..sroa_cast9.i.epil, %for.body.i.epil ], [ %agg.tmp2.sroa.0.0..sroa_cast.i.epil.le, %while.end.i.epil.loopexit ], [ %11, %while.end.i.epil.loopexit66 ]
  store i64 %v.sroa.0.0.copyload.i.epil, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.epil, align 4
  br label %_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit

_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit: ; preds = %while.end.i.epil, %_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit.loopexit.unr-lcssa, %while.end
  ret void

land.rhs.i.1:                                     ; preds = %while.body.i.1, %while.end.i
  %incdec.ptr22.i.1 = phi %struct.event* [ %arrayidx.i, %while.end.i ], [ %incdec.ptr.i.1, %while.body.i.1 ]
  %B.021.i.1 = phi %struct.event* [ %arrayidx.i.1, %while.end.i ], [ %incdec.ptr22.i.1, %while.body.i.1 ]
  %agg.tmp2.sroa.0.0..sroa_cast.i.1 = bitcast %struct.event* %incdec.ptr22.i.1 to i64*
  %agg.tmp2.sroa.0.0.copyload.i.1 = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i.1, align 4
  %b.sroa.0.0.extract.trunc.i.i.1 = trunc i64 %agg.tmp2.sroa.0.0.copyload.i.1 to i32
  %12 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i.1 to float
  %cmp.i.i.1 = fcmp olt float %7, %12
  br i1 %cmp.i.i.1, label %while.body.i.1, label %while.end.i.1

while.body.i.1:                                   ; preds = %land.rhs.i.1
  %13 = bitcast %struct.event* %B.021.i.1 to i64*
  store i64 %agg.tmp2.sroa.0.0.copyload.i.1, i64* %13, align 4
  %incdec.ptr.i.1 = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.1, i64 -1
  %cmp1.i.1 = icmp ult %struct.event* %incdec.ptr.i.1, %A
  br i1 %cmp1.i.1, label %while.end.i.1, label %land.rhs.i.1

while.end.i.1:                                    ; preds = %while.body.i.1, %land.rhs.i.1
  %v.sroa.0.0..sroa_cast10.pre-phi.i.1.pre-phi.in = phi %struct.event* [ %B.021.i.1, %land.rhs.i.1 ], [ %incdec.ptr22.i.1, %while.body.i.1 ]
  %v.sroa.0.0..sroa_cast10.pre-phi.i.1.pre-phi = bitcast %struct.event* %v.sroa.0.0..sroa_cast10.pre-phi.i.1.pre-phi.in to i64*
  store i64 %v.sroa.0.0.copyload.i.1, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.1.pre-phi, align 4
  %inc.i.1 = add nuw nsw i64 %i.025.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %_Z13insertionSortI5event6cmpVallEvPT_T1_T0_.exit.loopexit.unr-lcssa, label %for.body.i
}

; Function Attrs: uwtable
define linkonce_odr { %struct.event*, %struct.event* } @_Z5splitI5event6cmpVallESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i64 %n) local_unnamed_addr #6 comdat {
entry:
  %a.i = alloca i64, align 8
  %b.i = alloca i64, align 8
  %c.i = alloca i64, align 8
  %div = sdiv i64 %n, 4
  %arrayidx = getelementptr inbounds %struct.event, %struct.event* %A, i64 %div
  %agg.tmp.sroa.0.0..sroa_cast = bitcast %struct.event* %arrayidx to i64*
  %agg.tmp.sroa.0.0.copyload = load i64, i64* %agg.tmp.sroa.0.0..sroa_cast, align 4
  %div2 = sdiv i64 %n, 2
  %arrayidx3 = getelementptr inbounds %struct.event, %struct.event* %A, i64 %div2
  %agg.tmp1.sroa.0.0..sroa_cast = bitcast %struct.event* %arrayidx3 to i64*
  %agg.tmp1.sroa.0.0.copyload = load i64, i64* %agg.tmp1.sroa.0.0..sroa_cast, align 4
  %mul = mul nsw i64 %n, 3
  %div5 = sdiv i64 %mul, 4
  %arrayidx6 = getelementptr inbounds %struct.event, %struct.event* %A, i64 %div5
  %agg.tmp4.sroa.0.0..sroa_cast = bitcast %struct.event* %arrayidx6 to i64*
  %agg.tmp4.sroa.0.0.copyload = load i64, i64* %agg.tmp4.sroa.0.0..sroa_cast, align 4
  %a.i.0.a.i.0..sroa_cast = bitcast i64* %a.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %a.i.0.a.i.0..sroa_cast)
  %b.i.0.b.i.0..sroa_cast = bitcast i64* %b.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %b.i.0.b.i.0..sroa_cast)
  %c.i.0.c.i.0..sroa_cast = bitcast i64* %c.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %c.i.0.c.i.0..sroa_cast)
  %a.i.0.a.i.0.a.0.tmpcast.sroa_cast = bitcast i64* %a.i to %struct.event*
  %b.i.0.b.i.0.b.0.tmpcast30.sroa_cast = bitcast i64* %b.i to %struct.event*
  store i64 %agg.tmp.sroa.0.0.copyload, i64* %a.i, align 8
  store i64 %agg.tmp1.sroa.0.0.copyload, i64* %b.i, align 8
  store i64 %agg.tmp4.sroa.0.0.copyload, i64* %c.i, align 8
  %a.sroa.0.0.extract.trunc.i.i = trunc i64 %agg.tmp.sroa.0.0.copyload to i32
  %0 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i to float
  %b.sroa.0.0.extract.trunc.i.i = trunc i64 %agg.tmp1.sroa.0.0.copyload to i32
  %1 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i to float
  %cmp.i.i = fcmp olt float %0, %1
  %b.sroa.0.0.extract.trunc.i42.i = trunc i64 %agg.tmp4.sroa.0.0.copyload to i32
  %2 = bitcast i32 %b.sroa.0.0.extract.trunc.i42.i to float
  br i1 %cmp.i.i, label %cond.true.i, label %cond.false13.i

cond.true.i:                                      ; preds = %entry
  %cmp.i43.i = fcmp olt float %1, %2
  br i1 %cmp.i43.i, label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit, label %cond.false.i

cond.false.i:                                     ; preds = %cond.true.i
  %cmp.i40.i = fcmp olt float %0, %2
  %c.i.0.c.i.0.c.0.tmpcast31.sroa_cast118 = bitcast i64* %c.i to %struct.event*
  %c.a.i = select i1 %cmp.i40.i, %struct.event* %c.i.0.c.i.0.c.0.tmpcast31.sroa_cast118, %struct.event* %a.i.0.a.i.0.a.0.tmpcast.sroa_cast
  br label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit

cond.false13.i:                                   ; preds = %entry
  %cmp.i37.i = fcmp olt float %0, %2
  br i1 %cmp.i37.i, label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit, label %cond.false18.i

cond.false18.i:                                   ; preds = %cond.false13.i
  %cmp.i34.i = fcmp olt float %1, %2
  %c.i.0.c.i.0.c.0.tmpcast31.sroa_cast = bitcast i64* %c.i to %struct.event*
  %c.b.i = select i1 %cmp.i34.i, %struct.event* %c.i.0.c.i.0.c.0.tmpcast31.sroa_cast, %struct.event* %b.i.0.b.i.0.b.0.tmpcast30.sroa_cast
  br label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit

_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit: ; preds = %cond.true.i, %cond.false.i, %cond.false13.i, %cond.false18.i
  %cond-lvalue29.i = phi %struct.event* [ %c.a.i, %cond.false.i ], [ %b.i.0.b.i.0.b.0.tmpcast30.sroa_cast, %cond.true.i ], [ %c.b.i, %cond.false18.i ], [ %a.i.0.a.i.0.a.0.tmpcast.sroa_cast, %cond.false13.i ]
  %retval.sroa.0.0..sroa_cast.i = bitcast %struct.event* %cond-lvalue29.i to i64*
  %retval.sroa.0.0.copyload.i = load i64, i64* %retval.sroa.0.0..sroa_cast.i, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %a.i.0.a.i.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %b.i.0.b.i.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %c.i.0.c.i.0..sroa_cast)
  %3 = ptrtoint %struct.event* %A to i64
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %A, i64 %n
  %a.sroa.0.0.extract.trunc.i62 = trunc i64 %retval.sroa.0.0.copyload.i to i32
  %4 = bitcast i32 %a.sroa.0.0.extract.trunc.i62 to float
  br label %while.cond

while.cond:                                       ; preds = %if.end36, %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit
  %L.sroa.0.0 = phi i64 [ %3, %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit ], [ %L.sroa.0.4, %if.end36 ]
  %M.sroa.0.0 = phi i64 [ %3, %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit ], [ %31, %if.end36 ]
  %add.ptr.pn = phi %struct.event* [ %add.ptr, %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit ], [ %R.1, %if.end36 ]
  %R.0 = getelementptr inbounds %struct.event, %struct.event* %add.ptr.pn, i64 -1
  %5 = inttoptr i64 %M.sroa.0.0 to i64*
  %agg.tmp11.sroa.0.0.copyload83 = load i64, i64* %5, align 4
  %b.sroa.0.0.extract.trunc.i6384 = trunc i64 %agg.tmp11.sroa.0.0.copyload83 to i32
  %6 = bitcast i32 %b.sroa.0.0.extract.trunc.i6384 to float
  %cmp.i6485 = fcmp olt float %4, %6
  br i1 %cmp.i6485, label %while.end, label %while.body13.preheader

while.body13.preheader:                           ; preds = %while.cond
  br label %while.body13

while.body13:                                     ; preds = %while.body13.preheader, %if.end18
  %7 = phi float [ %18, %if.end18 ], [ %6, %while.body13.preheader ]
  %8 = phi i64* [ %17, %if.end18 ], [ %5, %while.body13.preheader ]
  %M.sroa.0.187 = phi i64 [ %16, %if.end18 ], [ %M.sroa.0.0, %while.body13.preheader ]
  %L.sroa.0.186 = phi i64 [ %L.sroa.0.2, %if.end18 ], [ %L.sroa.0.0, %while.body13.preheader ]
  %cmp.i61 = fcmp olt float %7, %4
  br i1 %cmp.i61, label %if.then, label %if.end

if.then:                                          ; preds = %while.body13
  %9 = inttoptr i64 %L.sroa.0.186 to %struct.event*
  %incdec.ptr = getelementptr inbounds %struct.event, %struct.event* %9, i64 1
  %10 = ptrtoint %struct.event* %incdec.ptr to i64
  %11 = inttoptr i64 %M.sroa.0.187 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = inttoptr i64 %L.sroa.0.186 to i64*
  %14 = load i64, i64* %13, align 4
  store i64 %14, i64* %11, align 4
  store i64 %12, i64* %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body13
  %L.sroa.0.2 = phi i64 [ %10, %if.then ], [ %L.sroa.0.186, %while.body13 ]
  %15 = inttoptr i64 %M.sroa.0.187 to %struct.event*
  %cmp = icmp ugt %struct.event* %R.0, %15
  br i1 %cmp, label %if.end18, label %while.end

if.end18:                                         ; preds = %if.end
  %incdec.ptr19 = getelementptr inbounds %struct.event, %struct.event* %15, i64 1
  %16 = ptrtoint %struct.event* %incdec.ptr19 to i64
  %17 = bitcast %struct.event* %incdec.ptr19 to i64*
  %agg.tmp11.sroa.0.0.copyload = load i64, i64* %17, align 4
  %b.sroa.0.0.extract.trunc.i63 = trunc i64 %agg.tmp11.sroa.0.0.copyload to i32
  %18 = bitcast i32 %b.sroa.0.0.extract.trunc.i63 to float
  %cmp.i64 = fcmp olt float %4, %18
  br i1 %cmp.i64, label %while.end.loopexit.split.loop.exit, label %while.body13

while.end.loopexit.split.loop.exit:               ; preds = %if.end18
  %19 = ptrtoint %struct.event* %incdec.ptr19 to i64
  %20 = bitcast %struct.event* %incdec.ptr19 to i64*
  br label %while.end

while.end:                                        ; preds = %if.end, %while.end.loopexit.split.loop.exit, %while.cond
  %M.sroa.0.1.lcssa = phi i64 [ %M.sroa.0.0, %while.cond ], [ %19, %while.end.loopexit.split.loop.exit ], [ %M.sroa.0.187, %if.end ]
  %.lcssa81 = phi i64* [ %5, %while.cond ], [ %20, %while.end.loopexit.split.loop.exit ], [ %8, %if.end ]
  %L.sroa.0.3 = phi i64 [ %L.sroa.0.0, %while.cond ], [ %L.sroa.0.2, %while.end.loopexit.split.loop.exit ], [ %L.sroa.0.2, %if.end ]
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20, %while.end
  %R.1 = phi %struct.event* [ %R.0, %while.end ], [ %incdec.ptr25, %while.cond20 ]
  %agg.tmp22.sroa.0.0..sroa_cast = bitcast %struct.event* %R.1 to i64*
  %agg.tmp22.sroa.0.0.copyload = load i64, i64* %agg.tmp22.sroa.0.0..sroa_cast, align 4
  %b.sroa.0.0.extract.trunc.i57 = trunc i64 %agg.tmp22.sroa.0.0.copyload to i32
  %21 = bitcast i32 %b.sroa.0.0.extract.trunc.i57 to float
  %cmp.i58 = fcmp olt float %4, %21
  %incdec.ptr25 = getelementptr inbounds %struct.event, %struct.event* %R.1, i64 -1
  br i1 %cmp.i58, label %while.cond20, label %while.end26

while.end26:                                      ; preds = %while.cond20
  %22 = inttoptr i64 %M.sroa.0.1.lcssa to %struct.event*
  %cmp27 = icmp ugt %struct.event* %R.1, %22
  br i1 %cmp27, label %if.end29, label %while.end38

if.end29:                                         ; preds = %while.end26
  %agg.tmp22.sroa.0.0..sroa_cast.le = bitcast %struct.event* %R.1 to i64*
  %23 = inttoptr i64 %M.sroa.0.1.lcssa to i64*
  %24 = load i64, i64* %23, align 4
  store i64 %agg.tmp22.sroa.0.0.copyload, i64* %23, align 4
  store i64 %24, i64* %agg.tmp22.sroa.0.0..sroa_cast.le, align 4
  %agg.tmp31.sroa.0.0.copyload = load i64, i64* %.lcssa81, align 4
  %a.sroa.0.0.extract.trunc.i = trunc i64 %agg.tmp31.sroa.0.0.copyload to i32
  %25 = bitcast i32 %a.sroa.0.0.extract.trunc.i to float
  %cmp.i = fcmp olt float %25, %4
  br i1 %cmp.i, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end29
  %26 = inttoptr i64 %L.sroa.0.3 to %struct.event*
  %incdec.ptr35 = getelementptr inbounds %struct.event, %struct.event* %26, i64 1
  %27 = ptrtoint %struct.event* %incdec.ptr35 to i64
  %28 = load i64, i64* %23, align 4
  %29 = inttoptr i64 %L.sroa.0.3 to i64*
  %30 = load i64, i64* %29, align 4
  store i64 %30, i64* %23, align 4
  store i64 %28, i64* %29, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end29
  %L.sroa.0.4 = phi i64 [ %27, %if.then34 ], [ %L.sroa.0.3, %if.end29 ]
  %incdec.ptr37 = getelementptr inbounds %struct.event, %struct.event* %22, i64 1
  %31 = ptrtoint %struct.event* %incdec.ptr37 to i64
  br label %while.cond

while.end38:                                      ; preds = %while.end26
  %32 = inttoptr i64 %M.sroa.0.1.lcssa to %struct.event*
  %33 = inttoptr i64 %L.sroa.0.3 to %struct.event*
  %.fca.0.insert = insertvalue { %struct.event*, %struct.event* } undef, %struct.event* %33, 0
  %.fca.1.insert = insertvalue { %struct.event*, %struct.event* } %.fca.0.insert, %struct.event* %32, 1
  ret { %struct.event*, %struct.event* } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb(i32* %Out, i64 %s, i64 %e, i32* %g.coerce, i32 %zero, i1 zeroext %inclusive, i1 zeroext %back) local_unnamed_addr #6 comdat {
entry:
  %f = alloca %"struct.std::plus", align 1
  %g = alloca %"struct.sequence::getA.25", align 8
  %Out.addr = alloca i32*, align 8
  %inclusive.addr = alloca i8, align 1
  %back.addr = alloca i8, align 1
  %Sums = alloca i32*, align 8
  %_ss = alloca i64, align 8
  %_ee = alloca i64, align 8
  %i = alloca i64, align 8
  %agg.captured = alloca %struct.anon.26, align 8
  %_ss26 = alloca i64, align 8
  %_ee27 = alloca i64, align 8
  %i34 = alloca i64, align 8
  %agg.captured41 = alloca %struct.anon.27, align 8
  %coerce.dive = getelementptr inbounds %"struct.sequence::getA.25", %"struct.sequence::getA.25"* %g, i64 0, i32 0
  store i32* %g.coerce, i32** %coerce.dive, align 8
  store i32* %Out, i32** %Out.addr, align 8, !tbaa !24
  %frombool = zext i1 %inclusive to i8
  store i8 %frombool, i8* %inclusive.addr, align 1, !tbaa !77
  %frombool1 = zext i1 %back to i8
  store i8 %frombool1, i8* %back.addr, align 1, !tbaa !77
  %sub = sub i64 %e, %s
  %sub2 = add nsw i64 %sub, -1
  %div = sdiv i64 %sub2, 1024
  %add = add nsw i64 %div, 1
  %cmp = icmp slt i64 %sub, 2049
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  %cmp98.i = icmp sgt i64 %e, %s
  br i1 %inclusive, label %if.then.i, label %if.else16.i

if.then.i:                                        ; preds = %if.then
  br i1 %back, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  br i1 %cmp98.i, label %for.body.i.preheader, label %cleanup

for.body.i.preheader:                             ; preds = %if.then3.i
  %0 = add i64 %e, -1
  %1 = sub i64 %0, %s
  %xtraiter = and i64 %sub, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.i.prol.loopexit, label %for.body.i.prol.preheader

for.body.i.prol.preheader:                        ; preds = %for.body.i.preheader
  br label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.prol.preheader, %for.body.i.prol
  %i.0100.in.i.prol = phi i64 [ %i.0100.i.prol, %for.body.i.prol ], [ %e, %for.body.i.prol.preheader ]
  %r.099.i.prol = phi i32 [ %add.i79.i.prol, %for.body.i.prol ], [ %zero, %for.body.i.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body.i.prol ], [ %xtraiter, %for.body.i.prol.preheader ]
  %i.0100.i.prol = add nsw i64 %i.0100.in.i.prol, -1
  %arrayidx.i.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.prol
  %2 = load i32, i32* %arrayidx.i.i.prol, align 4, !tbaa !26
  %add.i79.i.prol = add nsw i32 %2, %r.099.i.prol
  %arrayidx.i.prol = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.prol
  store i32 %add.i79.i.prol, i32* %arrayidx.i.prol, align 4, !tbaa !26
  %prol.iter.sub = add nsw i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.i.prol.loopexit.loopexit, label %for.body.i.prol, !llvm.loop !266

for.body.i.prol.loopexit.loopexit:                ; preds = %for.body.i.prol
  %3 = sub i64 %e, %xtraiter
  br label %for.body.i.prol.loopexit

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol.loopexit.loopexit, %for.body.i.preheader
  %i.0100.in.i.unr = phi i64 [ %e, %for.body.i.preheader ], [ %3, %for.body.i.prol.loopexit.loopexit ]
  %r.099.i.unr = phi i32 [ %zero, %for.body.i.preheader ], [ %add.i79.i.prol, %for.body.i.prol.loopexit.loopexit ]
  %add.i79.i.lcssa.unr = phi i32 [ undef, %for.body.i.preheader ], [ %add.i79.i.prol, %for.body.i.prol.loopexit.loopexit ]
  %4 = icmp ult i64 %1, 7
  br i1 %4, label %cleanup, label %for.body.i.preheader101

for.body.i.preheader101:                          ; preds = %for.body.i.prol.loopexit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader101, %for.body.i
  %i.0100.in.i = phi i64 [ %i.0100.i.7, %for.body.i ], [ %i.0100.in.i.unr, %for.body.i.preheader101 ]
  %r.099.i = phi i32 [ %add.i79.i.7, %for.body.i ], [ %r.099.i.unr, %for.body.i.preheader101 ]
  %i.0100.i = add nsw i64 %i.0100.in.i, -1
  %arrayidx.i.i = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i
  %5 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !26
  %add.i79.i = add nsw i32 %5, %r.099.i
  %arrayidx.i = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i
  store i32 %add.i79.i, i32* %arrayidx.i, align 4, !tbaa !26
  %i.0100.i.1 = add nsw i64 %i.0100.in.i, -2
  %arrayidx.i.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.1
  %6 = load i32, i32* %arrayidx.i.i.1, align 4, !tbaa !26
  %add.i79.i.1 = add nsw i32 %6, %add.i79.i
  %arrayidx.i.1 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.1
  store i32 %add.i79.i.1, i32* %arrayidx.i.1, align 4, !tbaa !26
  %i.0100.i.2 = add nsw i64 %i.0100.in.i, -3
  %arrayidx.i.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.2
  %7 = load i32, i32* %arrayidx.i.i.2, align 4, !tbaa !26
  %add.i79.i.2 = add nsw i32 %7, %add.i79.i.1
  %arrayidx.i.2 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.2
  store i32 %add.i79.i.2, i32* %arrayidx.i.2, align 4, !tbaa !26
  %i.0100.i.3 = add nsw i64 %i.0100.in.i, -4
  %arrayidx.i.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.3
  %8 = load i32, i32* %arrayidx.i.i.3, align 4, !tbaa !26
  %add.i79.i.3 = add nsw i32 %8, %add.i79.i.2
  %arrayidx.i.3 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.3
  store i32 %add.i79.i.3, i32* %arrayidx.i.3, align 4, !tbaa !26
  %i.0100.i.4 = add nsw i64 %i.0100.in.i, -5
  %arrayidx.i.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.4
  %9 = load i32, i32* %arrayidx.i.i.4, align 4, !tbaa !26
  %add.i79.i.4 = add nsw i32 %9, %add.i79.i.3
  %arrayidx.i.4 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.4
  store i32 %add.i79.i.4, i32* %arrayidx.i.4, align 4, !tbaa !26
  %i.0100.i.5 = add nsw i64 %i.0100.in.i, -6
  %arrayidx.i.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.5
  %10 = load i32, i32* %arrayidx.i.i.5, align 4, !tbaa !26
  %add.i79.i.5 = add nsw i32 %10, %add.i79.i.4
  %arrayidx.i.5 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.5
  store i32 %add.i79.i.5, i32* %arrayidx.i.5, align 4, !tbaa !26
  %i.0100.i.6 = add nsw i64 %i.0100.in.i, -7
  %arrayidx.i.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.6
  %11 = load i32, i32* %arrayidx.i.i.6, align 4, !tbaa !26
  %add.i79.i.6 = add nsw i32 %11, %add.i79.i.5
  %arrayidx.i.6 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.6
  store i32 %add.i79.i.6, i32* %arrayidx.i.6, align 4, !tbaa !26
  %i.0100.i.7 = add nsw i64 %i.0100.in.i, -8
  %arrayidx.i.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.7
  %12 = load i32, i32* %arrayidx.i.i.7, align 4, !tbaa !26
  %add.i79.i.7 = add nsw i32 %12, %add.i79.i.6
  %arrayidx.i.7 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.7
  store i32 %add.i79.i.7, i32* %arrayidx.i.7, align 4, !tbaa !26
  %cmp.i.7 = icmp sgt i64 %i.0100.i.7, %s
  br i1 %cmp.i.7, label %for.body.i, label %cleanup

if.else.i:                                        ; preds = %if.then.i
  br i1 %cmp98.i, label %for.body9.i.preheader, label %cleanup

for.body9.i.preheader:                            ; preds = %if.else.i
  %13 = add i64 %e, -1
  %14 = sub i64 %13, %s
  %xtraiter77 = and i64 %sub, 7
  %lcmp.mod78 = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78, label %for.body9.i.prol.loopexit, label %for.body9.i.prol.preheader

for.body9.i.prol.preheader:                       ; preds = %for.body9.i.preheader
  br label %for.body9.i.prol

for.body9.i.prol:                                 ; preds = %for.body9.i.prol.preheader, %for.body9.i.prol
  %i5.0103.i.prol = phi i64 [ %inc.i.prol, %for.body9.i.prol ], [ %s, %for.body9.i.prol.preheader ]
  %r.1102.i.prol = phi i32 [ %add.i76.i.prol, %for.body9.i.prol ], [ %zero, %for.body9.i.prol.preheader ]
  %prol.iter79 = phi i64 [ %prol.iter79.sub, %for.body9.i.prol ], [ %xtraiter77, %for.body9.i.prol.preheader ]
  %arrayidx.i78.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %i5.0103.i.prol
  %15 = load i32, i32* %arrayidx.i78.i.prol, align 4, !tbaa !26
  %add.i76.i.prol = add nsw i32 %15, %r.1102.i.prol
  %arrayidx13.i.prol = getelementptr inbounds i32, i32* %Out, i64 %i5.0103.i.prol
  store i32 %add.i76.i.prol, i32* %arrayidx13.i.prol, align 4, !tbaa !26
  %inc.i.prol = add nsw i64 %i5.0103.i.prol, 1
  %prol.iter79.sub = add nsw i64 %prol.iter79, -1
  %prol.iter79.cmp = icmp eq i64 %prol.iter79.sub, 0
  br i1 %prol.iter79.cmp, label %for.body9.i.prol.loopexit.loopexit, label %for.body9.i.prol, !llvm.loop !267

for.body9.i.prol.loopexit.loopexit:               ; preds = %for.body9.i.prol
  %16 = add i64 %xtraiter77, %s
  br label %for.body9.i.prol.loopexit

for.body9.i.prol.loopexit:                        ; preds = %for.body9.i.prol.loopexit.loopexit, %for.body9.i.preheader
  %add.i76.i.lcssa.unr = phi i32 [ undef, %for.body9.i.preheader ], [ %add.i76.i.prol, %for.body9.i.prol.loopexit.loopexit ]
  %i5.0103.i.unr = phi i64 [ %s, %for.body9.i.preheader ], [ %16, %for.body9.i.prol.loopexit.loopexit ]
  %r.1102.i.unr = phi i32 [ %zero, %for.body9.i.preheader ], [ %add.i76.i.prol, %for.body9.i.prol.loopexit.loopexit ]
  %17 = icmp ult i64 %14, 7
  br i1 %17, label %cleanup, label %for.body9.i.preheader102

for.body9.i.preheader102:                         ; preds = %for.body9.i.prol.loopexit
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.preheader102, %for.body9.i
  %i5.0103.i = phi i64 [ %inc.i.7, %for.body9.i ], [ %i5.0103.i.unr, %for.body9.i.preheader102 ]
  %r.1102.i = phi i32 [ %add.i76.i.7, %for.body9.i ], [ %r.1102.i.unr, %for.body9.i.preheader102 ]
  %arrayidx.i78.i = getelementptr inbounds i32, i32* %g.coerce, i64 %i5.0103.i
  %18 = load i32, i32* %arrayidx.i78.i, align 4, !tbaa !26
  %add.i76.i = add nsw i32 %18, %r.1102.i
  %arrayidx13.i = getelementptr inbounds i32, i32* %Out, i64 %i5.0103.i
  store i32 %add.i76.i, i32* %arrayidx13.i, align 4, !tbaa !26
  %inc.i = add nsw i64 %i5.0103.i, 1
  %arrayidx.i78.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i
  %19 = load i32, i32* %arrayidx.i78.i.1, align 4, !tbaa !26
  %add.i76.i.1 = add nsw i32 %19, %add.i76.i
  %arrayidx13.i.1 = getelementptr inbounds i32, i32* %Out, i64 %inc.i
  store i32 %add.i76.i.1, i32* %arrayidx13.i.1, align 4, !tbaa !26
  %inc.i.1 = add nsw i64 %i5.0103.i, 2
  %arrayidx.i78.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.1
  %20 = load i32, i32* %arrayidx.i78.i.2, align 4, !tbaa !26
  %add.i76.i.2 = add nsw i32 %20, %add.i76.i.1
  %arrayidx13.i.2 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.1
  store i32 %add.i76.i.2, i32* %arrayidx13.i.2, align 4, !tbaa !26
  %inc.i.2 = add nsw i64 %i5.0103.i, 3
  %arrayidx.i78.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.2
  %21 = load i32, i32* %arrayidx.i78.i.3, align 4, !tbaa !26
  %add.i76.i.3 = add nsw i32 %21, %add.i76.i.2
  %arrayidx13.i.3 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.2
  store i32 %add.i76.i.3, i32* %arrayidx13.i.3, align 4, !tbaa !26
  %inc.i.3 = add nsw i64 %i5.0103.i, 4
  %arrayidx.i78.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.3
  %22 = load i32, i32* %arrayidx.i78.i.4, align 4, !tbaa !26
  %add.i76.i.4 = add nsw i32 %22, %add.i76.i.3
  %arrayidx13.i.4 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.3
  store i32 %add.i76.i.4, i32* %arrayidx13.i.4, align 4, !tbaa !26
  %inc.i.4 = add nsw i64 %i5.0103.i, 5
  %arrayidx.i78.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.4
  %23 = load i32, i32* %arrayidx.i78.i.5, align 4, !tbaa !26
  %add.i76.i.5 = add nsw i32 %23, %add.i76.i.4
  %arrayidx13.i.5 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.4
  store i32 %add.i76.i.5, i32* %arrayidx13.i.5, align 4, !tbaa !26
  %inc.i.5 = add nsw i64 %i5.0103.i, 6
  %arrayidx.i78.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.5
  %24 = load i32, i32* %arrayidx.i78.i.6, align 4, !tbaa !26
  %add.i76.i.6 = add nsw i32 %24, %add.i76.i.5
  %arrayidx13.i.6 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.5
  store i32 %add.i76.i.6, i32* %arrayidx13.i.6, align 4, !tbaa !26
  %inc.i.6 = add nsw i64 %i5.0103.i, 7
  %arrayidx.i78.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.6
  %25 = load i32, i32* %arrayidx.i78.i.7, align 4, !tbaa !26
  %add.i76.i.7 = add nsw i32 %25, %add.i76.i.6
  %arrayidx13.i.7 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.6
  store i32 %add.i76.i.7, i32* %arrayidx13.i.7, align 4, !tbaa !26
  %inc.i.7 = add nsw i64 %i5.0103.i, 8
  %exitcond.i.7 = icmp eq i64 %inc.i.7, %e
  br i1 %exitcond.i.7, label %cleanup, label %for.body9.i

if.else16.i:                                      ; preds = %if.then
  br i1 %back, label %if.then18.i, label %if.else31.i

if.then18.i:                                      ; preds = %if.else16.i
  br i1 %cmp98.i, label %for.body24.i.preheader, label %cleanup

for.body24.i.preheader:                           ; preds = %if.then18.i
  %26 = add i64 %e, -1
  %27 = sub i64 %26, %s
  %xtraiter80 = and i64 %sub, 7
  %lcmp.mod81 = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81, label %for.body24.i.prol.loopexit, label %for.body24.i.prol.preheader

for.body24.i.prol.preheader:                      ; preds = %for.body24.i.preheader
  br label %for.body24.i.prol

for.body24.i.prol:                                ; preds = %for.body24.i.prol.preheader, %for.body24.i.prol
  %i19.0108.in.i.prol = phi i64 [ %i19.0108.i.prol, %for.body24.i.prol ], [ %e, %for.body24.i.prol.preheader ]
  %r.2107.i.prol = phi i32 [ %add.i73.i.prol, %for.body24.i.prol ], [ %zero, %for.body24.i.prol.preheader ]
  %prol.iter82 = phi i64 [ %prol.iter82.sub, %for.body24.i.prol ], [ %xtraiter80, %for.body24.i.prol.preheader ]
  %i19.0108.i.prol = add nsw i64 %i19.0108.in.i.prol, -1
  %arrayidx.i75.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.prol
  %28 = load i32, i32* %arrayidx.i75.i.prol, align 4, !tbaa !26
  %arrayidx26.i.prol = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.prol
  store i32 %r.2107.i.prol, i32* %arrayidx26.i.prol, align 4, !tbaa !26
  %add.i73.i.prol = add nsw i32 %28, %r.2107.i.prol
  %prol.iter82.sub = add nsw i64 %prol.iter82, -1
  %prol.iter82.cmp = icmp eq i64 %prol.iter82.sub, 0
  br i1 %prol.iter82.cmp, label %for.body24.i.prol.loopexit.loopexit, label %for.body24.i.prol, !llvm.loop !268

for.body24.i.prol.loopexit.loopexit:              ; preds = %for.body24.i.prol
  %29 = sub i64 %e, %xtraiter80
  br label %for.body24.i.prol.loopexit

for.body24.i.prol.loopexit:                       ; preds = %for.body24.i.prol.loopexit.loopexit, %for.body24.i.preheader
  %i19.0108.in.i.unr = phi i64 [ %e, %for.body24.i.preheader ], [ %29, %for.body24.i.prol.loopexit.loopexit ]
  %r.2107.i.unr = phi i32 [ %zero, %for.body24.i.preheader ], [ %add.i73.i.prol, %for.body24.i.prol.loopexit.loopexit ]
  %add.i73.i.lcssa.unr = phi i32 [ undef, %for.body24.i.preheader ], [ %add.i73.i.prol, %for.body24.i.prol.loopexit.loopexit ]
  %30 = icmp ult i64 %27, 7
  br i1 %30, label %cleanup, label %for.body24.i.preheader104

for.body24.i.preheader104:                        ; preds = %for.body24.i.prol.loopexit
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.preheader104, %for.body24.i
  %i19.0108.in.i = phi i64 [ %i19.0108.i.7, %for.body24.i ], [ %i19.0108.in.i.unr, %for.body24.i.preheader104 ]
  %r.2107.i = phi i32 [ %add.i73.i.7, %for.body24.i ], [ %r.2107.i.unr, %for.body24.i.preheader104 ]
  %i19.0108.i = add nsw i64 %i19.0108.in.i, -1
  %arrayidx.i75.i = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i
  %31 = load i32, i32* %arrayidx.i75.i, align 4, !tbaa !26
  %arrayidx26.i = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i
  store i32 %r.2107.i, i32* %arrayidx26.i, align 4, !tbaa !26
  %add.i73.i = add nsw i32 %31, %r.2107.i
  %i19.0108.i.1 = add nsw i64 %i19.0108.in.i, -2
  %arrayidx.i75.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.1
  %32 = load i32, i32* %arrayidx.i75.i.1, align 4, !tbaa !26
  %arrayidx26.i.1 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.1
  store i32 %add.i73.i, i32* %arrayidx26.i.1, align 4, !tbaa !26
  %add.i73.i.1 = add nsw i32 %32, %add.i73.i
  %i19.0108.i.2 = add nsw i64 %i19.0108.in.i, -3
  %arrayidx.i75.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.2
  %33 = load i32, i32* %arrayidx.i75.i.2, align 4, !tbaa !26
  %arrayidx26.i.2 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.2
  store i32 %add.i73.i.1, i32* %arrayidx26.i.2, align 4, !tbaa !26
  %add.i73.i.2 = add nsw i32 %33, %add.i73.i.1
  %i19.0108.i.3 = add nsw i64 %i19.0108.in.i, -4
  %arrayidx.i75.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.3
  %34 = load i32, i32* %arrayidx.i75.i.3, align 4, !tbaa !26
  %arrayidx26.i.3 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.3
  store i32 %add.i73.i.2, i32* %arrayidx26.i.3, align 4, !tbaa !26
  %add.i73.i.3 = add nsw i32 %34, %add.i73.i.2
  %i19.0108.i.4 = add nsw i64 %i19.0108.in.i, -5
  %arrayidx.i75.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.4
  %35 = load i32, i32* %arrayidx.i75.i.4, align 4, !tbaa !26
  %arrayidx26.i.4 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.4
  store i32 %add.i73.i.3, i32* %arrayidx26.i.4, align 4, !tbaa !26
  %add.i73.i.4 = add nsw i32 %35, %add.i73.i.3
  %i19.0108.i.5 = add nsw i64 %i19.0108.in.i, -6
  %arrayidx.i75.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.5
  %36 = load i32, i32* %arrayidx.i75.i.5, align 4, !tbaa !26
  %arrayidx26.i.5 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.5
  store i32 %add.i73.i.4, i32* %arrayidx26.i.5, align 4, !tbaa !26
  %add.i73.i.5 = add nsw i32 %36, %add.i73.i.4
  %i19.0108.i.6 = add nsw i64 %i19.0108.in.i, -7
  %arrayidx.i75.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.6
  %37 = load i32, i32* %arrayidx.i75.i.6, align 4, !tbaa !26
  %arrayidx26.i.6 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.6
  store i32 %add.i73.i.5, i32* %arrayidx26.i.6, align 4, !tbaa !26
  %add.i73.i.6 = add nsw i32 %37, %add.i73.i.5
  %i19.0108.i.7 = add nsw i64 %i19.0108.in.i, -8
  %arrayidx.i75.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.7
  %38 = load i32, i32* %arrayidx.i75.i.7, align 4, !tbaa !26
  %arrayidx26.i.7 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.7
  store i32 %add.i73.i.6, i32* %arrayidx26.i.7, align 4, !tbaa !26
  %add.i73.i.7 = add nsw i32 %38, %add.i73.i.6
  %cmp22.i.7 = icmp sgt i64 %i19.0108.i.7, %s
  br i1 %cmp22.i.7, label %for.body24.i, label %cleanup

if.else31.i:                                      ; preds = %if.else16.i
  br i1 %cmp98.i, label %for.body36.i.preheader, label %cleanup

for.body36.i.preheader:                           ; preds = %if.else31.i
  %39 = add i64 %e, -1
  %40 = sub i64 %39, %s
  %xtraiter83 = and i64 %sub, 7
  %lcmp.mod84 = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84, label %for.body36.i.prol.loopexit, label %for.body36.i.prol.preheader

for.body36.i.prol.preheader:                      ; preds = %for.body36.i.preheader
  br label %for.body36.i.prol

for.body36.i.prol:                                ; preds = %for.body36.i.prol.preheader, %for.body36.i.prol
  %i32.0112.i.prol = phi i64 [ %inc42.i.prol, %for.body36.i.prol ], [ %s, %for.body36.i.prol.preheader ]
  %r.3111.i.prol = phi i32 [ %add.i.i.prol, %for.body36.i.prol ], [ %zero, %for.body36.i.prol.preheader ]
  %prol.iter85 = phi i64 [ %prol.iter85.sub, %for.body36.i.prol ], [ %xtraiter83, %for.body36.i.prol.preheader ]
  %arrayidx.i72.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %i32.0112.i.prol
  %41 = load i32, i32* %arrayidx.i72.i.prol, align 4, !tbaa !26
  %arrayidx39.i.prol = getelementptr inbounds i32, i32* %Out, i64 %i32.0112.i.prol
  store i32 %r.3111.i.prol, i32* %arrayidx39.i.prol, align 4, !tbaa !26
  %add.i.i.prol = add nsw i32 %41, %r.3111.i.prol
  %inc42.i.prol = add nsw i64 %i32.0112.i.prol, 1
  %prol.iter85.sub = add nsw i64 %prol.iter85, -1
  %prol.iter85.cmp = icmp eq i64 %prol.iter85.sub, 0
  br i1 %prol.iter85.cmp, label %for.body36.i.prol.loopexit.loopexit, label %for.body36.i.prol, !llvm.loop !269

for.body36.i.prol.loopexit.loopexit:              ; preds = %for.body36.i.prol
  %42 = add i64 %xtraiter83, %s
  br label %for.body36.i.prol.loopexit

for.body36.i.prol.loopexit:                       ; preds = %for.body36.i.prol.loopexit.loopexit, %for.body36.i.preheader
  %add.i.i.lcssa.unr = phi i32 [ undef, %for.body36.i.preheader ], [ %add.i.i.prol, %for.body36.i.prol.loopexit.loopexit ]
  %i32.0112.i.unr = phi i64 [ %s, %for.body36.i.preheader ], [ %42, %for.body36.i.prol.loopexit.loopexit ]
  %r.3111.i.unr = phi i32 [ %zero, %for.body36.i.preheader ], [ %add.i.i.prol, %for.body36.i.prol.loopexit.loopexit ]
  %43 = icmp ult i64 %40, 7
  br i1 %43, label %cleanup, label %for.body36.i.preheader106

for.body36.i.preheader106:                        ; preds = %for.body36.i.prol.loopexit
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.body36.i.preheader106, %for.body36.i
  %i32.0112.i = phi i64 [ %inc42.i.7, %for.body36.i ], [ %i32.0112.i.unr, %for.body36.i.preheader106 ]
  %r.3111.i = phi i32 [ %add.i.i.7, %for.body36.i ], [ %r.3111.i.unr, %for.body36.i.preheader106 ]
  %arrayidx.i72.i = getelementptr inbounds i32, i32* %g.coerce, i64 %i32.0112.i
  %44 = load i32, i32* %arrayidx.i72.i, align 4, !tbaa !26
  %arrayidx39.i = getelementptr inbounds i32, i32* %Out, i64 %i32.0112.i
  store i32 %r.3111.i, i32* %arrayidx39.i, align 4, !tbaa !26
  %add.i.i = add nsw i32 %44, %r.3111.i
  %inc42.i = add nsw i64 %i32.0112.i, 1
  %arrayidx.i72.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i
  %45 = load i32, i32* %arrayidx.i72.i.1, align 4, !tbaa !26
  %arrayidx39.i.1 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i
  store i32 %add.i.i, i32* %arrayidx39.i.1, align 4, !tbaa !26
  %add.i.i.1 = add nsw i32 %45, %add.i.i
  %inc42.i.1 = add nsw i64 %i32.0112.i, 2
  %arrayidx.i72.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.1
  %46 = load i32, i32* %arrayidx.i72.i.2, align 4, !tbaa !26
  %arrayidx39.i.2 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.1
  store i32 %add.i.i.1, i32* %arrayidx39.i.2, align 4, !tbaa !26
  %add.i.i.2 = add nsw i32 %46, %add.i.i.1
  %inc42.i.2 = add nsw i64 %i32.0112.i, 3
  %arrayidx.i72.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.2
  %47 = load i32, i32* %arrayidx.i72.i.3, align 4, !tbaa !26
  %arrayidx39.i.3 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.2
  store i32 %add.i.i.2, i32* %arrayidx39.i.3, align 4, !tbaa !26
  %add.i.i.3 = add nsw i32 %47, %add.i.i.2
  %inc42.i.3 = add nsw i64 %i32.0112.i, 4
  %arrayidx.i72.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.3
  %48 = load i32, i32* %arrayidx.i72.i.4, align 4, !tbaa !26
  %arrayidx39.i.4 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.3
  store i32 %add.i.i.3, i32* %arrayidx39.i.4, align 4, !tbaa !26
  %add.i.i.4 = add nsw i32 %48, %add.i.i.3
  %inc42.i.4 = add nsw i64 %i32.0112.i, 5
  %arrayidx.i72.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.4
  %49 = load i32, i32* %arrayidx.i72.i.5, align 4, !tbaa !26
  %arrayidx39.i.5 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.4
  store i32 %add.i.i.4, i32* %arrayidx39.i.5, align 4, !tbaa !26
  %add.i.i.5 = add nsw i32 %49, %add.i.i.4
  %inc42.i.5 = add nsw i64 %i32.0112.i, 6
  %arrayidx.i72.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.5
  %50 = load i32, i32* %arrayidx.i72.i.6, align 4, !tbaa !26
  %arrayidx39.i.6 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.5
  store i32 %add.i.i.5, i32* %arrayidx39.i.6, align 4, !tbaa !26
  %add.i.i.6 = add nsw i32 %50, %add.i.i.5
  %inc42.i.6 = add nsw i64 %i32.0112.i, 7
  %arrayidx.i72.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.6
  %51 = load i32, i32* %arrayidx.i72.i.7, align 4, !tbaa !26
  %arrayidx39.i.7 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.6
  store i32 %add.i.i.6, i32* %arrayidx39.i.7, align 4, !tbaa !26
  %add.i.i.7 = add nsw i32 %51, %add.i.i.6
  %inc42.i.7 = add nsw i64 %i32.0112.i, 8
  %exitcond117.i.7 = icmp eq i64 %inc42.i.7, %e
  br i1 %exitcond117.i.7, label %cleanup, label %for.body36.i

if.end42:                                         ; preds = %entry
  %52 = bitcast i32** %Sums to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #2
  %mul = shl nsw i64 %add, 2
  %call9 = tail call noalias i8* @malloc(i64 %mul) #2
  %53 = bitcast i32** %Sums to i8**
  store i8* %call9, i8** %53, align 8, !tbaa !24
  %54 = bitcast i64* %_ss to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54) #2
  store i64 %s, i64* %_ss, align 8, !tbaa !120
  %55 = bitcast i64* %_ee to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55) #2
  store i64 %e, i64* %_ee, align 8, !tbaa !120
  %56 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #2
  store i64 0, i64* %i, align 8, !tbaa !120
  %57 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %agg.captured, i64 0, i32 0
  store i64* %i, i64** %57, align 8, !tbaa !24
  %58 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %agg.captured, i64 0, i32 1
  store i64* %_ss, i64** %58, align 8, !tbaa !24
  %59 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %agg.captured, i64 0, i32 2
  store i64* %_ee, i64** %59, align 8, !tbaa !24
  %60 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %agg.captured, i64 0, i32 3
  store i32** %Sums, i32*** %60, align 8, !tbaa !24
  %61 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %agg.captured, i64 0, i32 4
  store %"struct.std::plus"* %f, %"struct.std::plus"** %61, align 8, !tbaa !24
  %62 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %agg.captured, i64 0, i32 5
  store %"struct.sequence::getA.25"* %g, %"struct.sequence::getA.25"** %62, align 8, !tbaa !24
  %63 = bitcast %struct.anon.26* %agg.captured to i8*
  call void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void (%struct.anon.26*, i64, i64)* @__cilk_for_helper.35 to void (i8*, i64, i64)*), i8* nonnull %63, i64 %add, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54) #2
  %64 = load i32*, i32** %Sums, align 8, !tbaa !24
  %call25 = call i32 @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb(i32* %64, i64 0, i64 %add, i32* %64, i32 %zero, i1 zeroext false, i1 zeroext %back)
  %65 = bitcast i64* %_ss26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #2
  store i64 %s, i64* %_ss26, align 8, !tbaa !120
  %66 = bitcast i64* %_ee27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #2
  store i64 %e, i64* %_ee27, align 8, !tbaa !120
  %67 = bitcast i64* %i34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #2
  store i64 0, i64* %i34, align 8, !tbaa !120
  %68 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 0
  store i64* %i34, i64** %68, align 8, !tbaa !24
  %69 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 1
  store i64* %_ss26, i64** %69, align 8, !tbaa !24
  %70 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 2
  store i64* %_ee27, i64** %70, align 8, !tbaa !24
  %71 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 3
  store i32** %Out.addr, i32*** %71, align 8, !tbaa !24
  %72 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 4
  store %"struct.std::plus"* %f, %"struct.std::plus"** %72, align 8, !tbaa !24
  %73 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 5
  store %"struct.sequence::getA.25"* %g, %"struct.sequence::getA.25"** %73, align 8, !tbaa !24
  %74 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 6
  store i32** %Sums, i32*** %74, align 8, !tbaa !24
  %75 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 7
  store i8* %inclusive.addr, i8** %75, align 8, !tbaa !24
  %76 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %agg.captured41, i64 0, i32 8
  store i8* %back.addr, i8** %76, align 8, !tbaa !24
  %77 = bitcast %struct.anon.27* %agg.captured41 to i8*
  call void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void (%struct.anon.27*, i64, i64)* @__cilk_for_helper.36 to void (i8*, i64, i64)*), i8* nonnull %77, i64 %add, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #2
  %78 = load i8*, i8** %53, align 8, !tbaa !24
  call void @free(i8* %78) #2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #2
  br label %cleanup

cleanup:                                          ; preds = %for.body36.i, %for.body24.i, %for.body9.i, %for.body.i, %for.body36.i.prol.loopexit, %for.body24.i.prol.loopexit, %for.body9.i.prol.loopexit, %for.body.i.prol.loopexit, %if.else31.i, %if.then18.i, %if.else.i, %if.then3.i, %if.end42
  %retval.0 = phi i32 [ %call25, %if.end42 ], [ %zero, %if.then3.i ], [ %zero, %if.else.i ], [ %zero, %if.then18.i ], [ %zero, %if.else31.i ], [ %add.i79.i.lcssa.unr, %for.body.i.prol.loopexit ], [ %add.i76.i.lcssa.unr, %for.body9.i.prol.loopexit ], [ %add.i73.i.lcssa.unr, %for.body24.i.prol.loopexit ], [ %add.i.i.lcssa.unr, %for.body36.i.prol.loopexit ], [ %add.i79.i.7, %for.body.i ], [ %add.i76.i.7, %for.body9.i ], [ %add.i73.i.7, %for.body24.i ], [ %add.i.i.7, %for.body36.i ]
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.35(%struct.anon.26* nocapture readonly %__context, i64 %__low, i64 %__high) #7 {
entry:
  %0 = icmp ult i64 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %__context, i64 0, i32 0
  %2 = load i64*, i64** %1, align 8, !tbaa !270
  %3 = load i64, i64* %2, align 8, !tbaa !120
  %add = add nsw i64 %3, %__low
  %4 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %__context, i64 0, i32 5
  %7 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %__context, i64 0, i32 3
  %.pre = load i64*, i64** %4, align 8, !tbaa !272
  %.pre21 = load i64, i64* %.pre, align 8, !tbaa !120
  %.pre22 = load i64*, i64** %5, align 8, !tbaa !273
  %.pre23 = load i64, i64* %.pre22, align 8, !tbaa !120
  %.pre24 = load %"struct.sequence::getA.25"*, %"struct.sequence::getA.25"** %6, align 8, !tbaa !274
  %agg.tmp4.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.sequence::getA.25", %"struct.sequence::getA.25"* %.pre24, i64 0, i32 0
  %8 = sub i64 -2, %.pre21
  %9 = shl i64 %add, 10
  %10 = sub i64 %8, %9
  %11 = sub i64 -1025, %.pre21
  %12 = sub i64 %11, %9
  %13 = xor i64 %.pre23, -1
  br label %loop.body

loop.cond.cleanup:                                ; preds = %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit, %entry
  ret void

loop.body:                                        ; preds = %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit, %loop.body.lr.ph
  %indvar = phi i64 [ %indvar.next, %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit ], [ 0, %loop.body.lr.ph ]
  %__index.addr.020 = phi i64 [ %94, %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit ], [ %__low, %loop.body.lr.ph ]
  %__cv_i.019 = phi i64 [ %inc, %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit ], [ %add, %loop.body.lr.ph ]
  %14 = mul i64 %indvar, -1024
  %15 = add i64 %10, %14
  %16 = add i64 %12, %14
  %17 = icmp sgt i64 %16, %13
  %smax44 = select i1 %17, i64 %16, i64 %13
  %18 = sub i64 %15, %smax44
  %19 = add i64 %18, -32
  %20 = lshr i64 %19, 5
  %21 = add nuw nsw i64 %20, 1
  %mul1 = shl nsw i64 %__cv_i.019, 10
  %add2 = add nsw i64 %mul1, %.pre21
  %add3 = add nsw i64 %add2, 1024
  %cmp.i = icmp slt i64 %.pre23, %add3
  %.sroa.speculated = select i1 %cmp.i, i64 %.pre23, i64 %add3
  %agg.tmp4.sroa.0.0.copyload = load i32*, i32** %agg.tmp4.sroa.0.0..sroa_idx, align 8
  %arrayidx.i.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %add2
  %22 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !26
  %j.013.i = add nsw i64 %add2, 1
  %cmp14.i = icmp slt i64 %j.013.i, %.sroa.speculated
  br i1 %cmp14.i, label %for.body.lr.ph.i, label %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit

for.body.lr.ph.i:                                 ; preds = %loop.body
  %min.iters.check = icmp ult i64 %18, 32
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph.i
  %n.vec = and i64 %18, -32
  %ind.end = add i64 %n.vec, %j.013.i
  %23 = insertelement <8 x i32> <i32 undef, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %22, i32 0
  %xtraiter = and i64 %21, 3
  %24 = icmp ult i64 %19, 96
  br i1 %24, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %21, %xtraiter
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.phi = phi <8 x i32> [ %23, %vector.ph.new ], [ %73, %vector.body ]
  %vec.phi28 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %74, %vector.body ]
  %vec.phi29 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %75, %vector.body ]
  %vec.phi30 = phi <8 x i32> [ zeroinitializer, %vector.ph.new ], [ %76, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %25 = add i64 %index, %j.013.i
  %26 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %25
  %27 = bitcast i32* %26 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %27, align 4, !tbaa !26
  %28 = getelementptr i32, i32* %26, i64 8
  %29 = bitcast i32* %28 to <8 x i32>*
  %wide.load31 = load <8 x i32>, <8 x i32>* %29, align 4, !tbaa !26
  %30 = getelementptr i32, i32* %26, i64 16
  %31 = bitcast i32* %30 to <8 x i32>*
  %wide.load32 = load <8 x i32>, <8 x i32>* %31, align 4, !tbaa !26
  %32 = getelementptr i32, i32* %26, i64 24
  %33 = bitcast i32* %32 to <8 x i32>*
  %wide.load33 = load <8 x i32>, <8 x i32>* %33, align 4, !tbaa !26
  %34 = add nsw <8 x i32> %wide.load, %vec.phi
  %35 = add nsw <8 x i32> %wide.load31, %vec.phi28
  %36 = add nsw <8 x i32> %wide.load32, %vec.phi29
  %37 = add nsw <8 x i32> %wide.load33, %vec.phi30
  %index.next = or i64 %index, 32
  %38 = add i64 %index.next, %j.013.i
  %39 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %38
  %40 = bitcast i32* %39 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %40, align 4, !tbaa !26
  %41 = getelementptr i32, i32* %39, i64 8
  %42 = bitcast i32* %41 to <8 x i32>*
  %wide.load31.1 = load <8 x i32>, <8 x i32>* %42, align 4, !tbaa !26
  %43 = getelementptr i32, i32* %39, i64 16
  %44 = bitcast i32* %43 to <8 x i32>*
  %wide.load32.1 = load <8 x i32>, <8 x i32>* %44, align 4, !tbaa !26
  %45 = getelementptr i32, i32* %39, i64 24
  %46 = bitcast i32* %45 to <8 x i32>*
  %wide.load33.1 = load <8 x i32>, <8 x i32>* %46, align 4, !tbaa !26
  %47 = add nsw <8 x i32> %34, %wide.load.1
  %48 = add nsw <8 x i32> %35, %wide.load31.1
  %49 = add nsw <8 x i32> %36, %wide.load32.1
  %50 = add nsw <8 x i32> %37, %wide.load33.1
  %index.next.1 = or i64 %index, 64
  %51 = add i64 %index.next.1, %j.013.i
  %52 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %51
  %53 = bitcast i32* %52 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %53, align 4, !tbaa !26
  %54 = getelementptr i32, i32* %52, i64 8
  %55 = bitcast i32* %54 to <8 x i32>*
  %wide.load31.2 = load <8 x i32>, <8 x i32>* %55, align 4, !tbaa !26
  %56 = getelementptr i32, i32* %52, i64 16
  %57 = bitcast i32* %56 to <8 x i32>*
  %wide.load32.2 = load <8 x i32>, <8 x i32>* %57, align 4, !tbaa !26
  %58 = getelementptr i32, i32* %52, i64 24
  %59 = bitcast i32* %58 to <8 x i32>*
  %wide.load33.2 = load <8 x i32>, <8 x i32>* %59, align 4, !tbaa !26
  %60 = add nsw <8 x i32> %47, %wide.load.2
  %61 = add nsw <8 x i32> %48, %wide.load31.2
  %62 = add nsw <8 x i32> %49, %wide.load32.2
  %63 = add nsw <8 x i32> %50, %wide.load33.2
  %index.next.2 = or i64 %index, 96
  %64 = add i64 %index.next.2, %j.013.i
  %65 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %64
  %66 = bitcast i32* %65 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %66, align 4, !tbaa !26
  %67 = getelementptr i32, i32* %65, i64 8
  %68 = bitcast i32* %67 to <8 x i32>*
  %wide.load31.3 = load <8 x i32>, <8 x i32>* %68, align 4, !tbaa !26
  %69 = getelementptr i32, i32* %65, i64 16
  %70 = bitcast i32* %69 to <8 x i32>*
  %wide.load32.3 = load <8 x i32>, <8 x i32>* %70, align 4, !tbaa !26
  %71 = getelementptr i32, i32* %65, i64 24
  %72 = bitcast i32* %71 to <8 x i32>*
  %wide.load33.3 = load <8 x i32>, <8 x i32>* %72, align 4, !tbaa !26
  %73 = add nsw <8 x i32> %60, %wide.load.3
  %74 = add nsw <8 x i32> %61, %wide.load31.3
  %75 = add nsw <8 x i32> %62, %wide.load32.3
  %76 = add nsw <8 x i32> %63, %wide.load33.3
  %index.next.3 = add i64 %index, 128
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !275

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa43.ph = phi <8 x i32> [ undef, %vector.ph ], [ %73, %vector.body ]
  %.lcssa42.ph = phi <8 x i32> [ undef, %vector.ph ], [ %74, %vector.body ]
  %.lcssa41.ph = phi <8 x i32> [ undef, %vector.ph ], [ %75, %vector.body ]
  %.lcssa.ph = phi <8 x i32> [ undef, %vector.ph ], [ %76, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.phi.unr = phi <8 x i32> [ %23, %vector.ph ], [ %73, %vector.body ]
  %vec.phi28.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %74, %vector.body ]
  %vec.phi29.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %75, %vector.body ]
  %vec.phi30.unr = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %76, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil.preheader

vector.body.epil.preheader:                       ; preds = %middle.block.unr-lcssa
  br label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil.preheader, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %vector.body.epil.preheader ]
  %vec.phi.epil = phi <8 x i32> [ %86, %vector.body.epil ], [ %vec.phi.unr, %vector.body.epil.preheader ]
  %vec.phi28.epil = phi <8 x i32> [ %87, %vector.body.epil ], [ %vec.phi28.unr, %vector.body.epil.preheader ]
  %vec.phi29.epil = phi <8 x i32> [ %88, %vector.body.epil ], [ %vec.phi29.unr, %vector.body.epil.preheader ]
  %vec.phi30.epil = phi <8 x i32> [ %89, %vector.body.epil ], [ %vec.phi30.unr, %vector.body.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %vector.body.epil.preheader ]
  %77 = add i64 %index.epil, %j.013.i
  %78 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %77
  %79 = bitcast i32* %78 to <8 x i32>*
  %wide.load.epil = load <8 x i32>, <8 x i32>* %79, align 4, !tbaa !26
  %80 = getelementptr i32, i32* %78, i64 8
  %81 = bitcast i32* %80 to <8 x i32>*
  %wide.load31.epil = load <8 x i32>, <8 x i32>* %81, align 4, !tbaa !26
  %82 = getelementptr i32, i32* %78, i64 16
  %83 = bitcast i32* %82 to <8 x i32>*
  %wide.load32.epil = load <8 x i32>, <8 x i32>* %83, align 4, !tbaa !26
  %84 = getelementptr i32, i32* %78, i64 24
  %85 = bitcast i32* %84 to <8 x i32>*
  %wide.load33.epil = load <8 x i32>, <8 x i32>* %85, align 4, !tbaa !26
  %86 = add nsw <8 x i32> %wide.load.epil, %vec.phi.epil
  %87 = add nsw <8 x i32> %wide.load31.epil, %vec.phi28.epil
  %88 = add nsw <8 x i32> %wide.load32.epil, %vec.phi29.epil
  %89 = add nsw <8 x i32> %wide.load33.epil, %vec.phi30.epil
  %index.next.epil = add i64 %index.epil, 32
  %epil.iter.sub = add nsw i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !276

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa43 = phi <8 x i32> [ %.lcssa43.ph, %middle.block.unr-lcssa ], [ %86, %vector.body.epil ]
  %.lcssa42 = phi <8 x i32> [ %.lcssa42.ph, %middle.block.unr-lcssa ], [ %87, %vector.body.epil ]
  %.lcssa41 = phi <8 x i32> [ %.lcssa41.ph, %middle.block.unr-lcssa ], [ %88, %vector.body.epil ]
  %.lcssa = phi <8 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %89, %vector.body.epil ]
  %bin.rdx = add <8 x i32> %.lcssa42, %.lcssa43
  %bin.rdx34 = add <8 x i32> %bin.rdx, %.lcssa41
  %bin.rdx35 = add <8 x i32> %bin.rdx34, %.lcssa
  %rdx.shuf = shufflevector <8 x i32> %bin.rdx35, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx36 = add <8 x i32> %rdx.shuf, %bin.rdx35
  %rdx.shuf37 = shufflevector <8 x i32> %bin.rdx36, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx38 = add <8 x i32> %rdx.shuf37, %bin.rdx36
  %rdx.shuf39 = shufflevector <8 x i32> %bin.rdx38, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx40 = add <8 x i32> %rdx.shuf39, %bin.rdx38
  %90 = extractelement <8 x i32> %bin.rdx40, i32 0
  %cmp.n = icmp eq i64 %18, %n.vec
  br i1 %cmp.n, label %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %middle.block, %for.body.lr.ph.i
  %j.016.i.ph = phi i64 [ %ind.end, %middle.block ], [ %j.013.i, %for.body.lr.ph.i ]
  %r.015.i.ph = phi i32 [ %90, %middle.block ], [ %22, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %j.016.i = phi i64 [ %j.0.i, %for.body.i ], [ %j.016.i.ph, %for.body.i.preheader ]
  %r.015.i = phi i32 [ %add.i.i, %for.body.i ], [ %r.015.i.ph, %for.body.i.preheader ]
  %arrayidx.i8.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %j.016.i
  %91 = load i32, i32* %arrayidx.i8.i, align 4, !tbaa !26
  %add.i.i = add nsw i32 %91, %r.015.i
  %j.0.i = add nsw i64 %j.016.i, 1
  %exitcond.i = icmp eq i64 %j.0.i, %.sroa.speculated
  br i1 %exitcond.i, label %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit, label %for.body.i, !llvm.loop !277

_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit: ; preds = %for.body.i, %middle.block, %loop.body
  %r.0.lcssa.i = phi i32 [ %22, %loop.body ], [ %90, %middle.block ], [ %add.i.i, %for.body.i ]
  %92 = load i32**, i32*** %7, align 8, !tbaa !278
  %93 = load i32*, i32** %92, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds i32, i32* %93, i64 %__cv_i.019
  store i32 %r.0.lcssa.i, i32* %arrayidx, align 4, !tbaa !26
  %inc = add nsw i64 %__cv_i.019, 1
  %94 = add nuw i64 %__index.addr.020, 1
  %exitcond = icmp eq i64 %94, %__high
  %indvar.next = add nuw i64 %indvar, 1
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__cilk_for_helper.36(%struct.anon.27* nocapture readonly %__context, i64 %__low, i64 %__high) #7 {
entry:
  %0 = icmp ult i64 %__low, %__high
  br i1 %0, label %loop.body.lr.ph, label %loop.cond.cleanup

loop.body.lr.ph:                                  ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %__context, i64 0, i32 0
  %2 = load i64*, i64** %1, align 8, !tbaa !279
  %3 = load i64, i64* %2, align 8, !tbaa !120
  %add = add nsw i64 %3, %__low
  %4 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %__context, i64 0, i32 1
  %5 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %__context, i64 0, i32 2
  %6 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %__context, i64 0, i32 3
  %7 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %__context, i64 0, i32 5
  %8 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %__context, i64 0, i32 6
  %9 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %__context, i64 0, i32 7
  %10 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %__context, i64 0, i32 8
  %.pre = load i64*, i64** %4, align 8, !tbaa !281
  %.pre29 = load i64, i64* %.pre, align 8, !tbaa !120
  %.pre30 = load i64*, i64** %5, align 8, !tbaa !282
  %.pre31 = load i64, i64* %.pre30, align 8, !tbaa !120
  %.pre32 = load i32**, i32*** %6, align 8, !tbaa !283
  %.pre33 = load i32*, i32** %.pre32, align 8, !tbaa !24
  %.pre34 = load %"struct.sequence::getA.25"*, %"struct.sequence::getA.25"** %7, align 8, !tbaa !284
  %.pre35 = load i32**, i32*** %8, align 8, !tbaa !285
  %.pre36 = load i32*, i32** %.pre35, align 8, !tbaa !24
  %.pre37 = load i8*, i8** %9, align 8, !tbaa !286
  %.pre38 = load i8, i8* %.pre37, align 1, !tbaa !77, !range !153
  %.pre39 = load i8*, i8** %10, align 8, !tbaa !287
  %.pre40 = load i8, i8* %.pre39, align 1, !tbaa !77, !range !153
  %agg.tmp4.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.sequence::getA.25", %"struct.sequence::getA.25"* %.pre34, i64 0, i32 0
  %tobool = icmp eq i8 %.pre38, 0
  %tobool5 = icmp ne i8 %.pre40, 0
  %11 = xor i64 %.pre29, 7
  %12 = shl i64 %add, 10
  %13 = sub i64 -1025, %.pre29
  %14 = sub i64 %13, %12
  %15 = xor i64 %.pre31, -1
  %16 = sub i64 -2, %.pre29
  %17 = sub i64 %16, %12
  %18 = xor i64 %.pre29, -1
  %19 = sub i64 %18, %12
  br label %loop.body

loop.cond.cleanup:                                ; preds = %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit, %entry
  ret void

loop.body:                                        ; preds = %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit, %loop.body.lr.ph
  %indvar = phi i64 [ %indvar.next, %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit ], [ 0, %loop.body.lr.ph ]
  %__index.addr.025 = phi i64 [ %68, %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit ], [ %__low, %loop.body.lr.ph ]
  %__cv_i.024 = phi i64 [ %inc, %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit ], [ %add, %loop.body.lr.ph ]
  %20 = mul i64 %indvar, -1024
  %21 = add i64 %14, %20
  %22 = icmp sgt i64 %21, %15
  %smax58 = select i1 %22, i64 %21, i64 %15
  %23 = sub i64 %19, %smax58
  %24 = add i64 %17, %20
  %25 = sub i64 %24, %smax58
  %26 = sub i64 %11, %smax58
  %mul1 = shl nsw i64 %__cv_i.024, 10
  %add2 = add nsw i64 %mul1, %.pre29
  %add3 = add nsw i64 %add2, 1024
  %cmp.i = icmp slt i64 %.pre31, %add3
  %.sroa.speculated = select i1 %cmp.i, i64 %.pre31, i64 %add3
  %agg.tmp4.sroa.0.0.copyload = load i32*, i32** %agg.tmp4.sroa.0.0..sroa_idx, align 8
  %arrayidx = getelementptr inbounds i32, i32* %.pre36, i64 %__cv_i.024
  %27 = load i32, i32* %arrayidx, align 4, !tbaa !26
  br i1 %tobool, label %if.else16.i, label %if.then.i

if.then.i:                                        ; preds = %loop.body
  br i1 %tobool5, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %cmp98.i = icmp sgt i64 %.sroa.speculated, %add2
  br i1 %cmp98.i, label %for.body.i.preheader, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit

for.body.i.preheader:                             ; preds = %if.then3.i
  %xtraiter51 = and i64 %23, 7
  %lcmp.mod52 = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52, label %for.body.i.prol.loopexit, label %for.body.i.prol.preheader

for.body.i.prol.preheader:                        ; preds = %for.body.i.preheader
  br label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.prol.preheader, %for.body.i.prol
  %i.0100.in.i.prol = phi i64 [ %i.0100.i.prol, %for.body.i.prol ], [ %.sroa.speculated, %for.body.i.prol.preheader ]
  %r.099.i.prol = phi i32 [ %add.i79.i.prol, %for.body.i.prol ], [ %27, %for.body.i.prol.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.sub, %for.body.i.prol ], [ %xtraiter51, %for.body.i.prol.preheader ]
  %i.0100.i.prol = add nsw i64 %i.0100.in.i.prol, -1
  %arrayidx.i.i.prol = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i.prol
  %28 = load i32, i32* %arrayidx.i.i.prol, align 4, !tbaa !26
  %add.i79.i.prol = add nsw i32 %28, %r.099.i.prol
  %arrayidx.i.prol = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i.prol
  store i32 %add.i79.i.prol, i32* %arrayidx.i.prol, align 4, !tbaa !26
  %prol.iter53.sub = add nsw i64 %prol.iter53, -1
  %prol.iter53.cmp = icmp eq i64 %prol.iter53.sub, 0
  br i1 %prol.iter53.cmp, label %for.body.i.prol.loopexit, label %for.body.i.prol, !llvm.loop !288

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.i.preheader
  %i.0100.in.i.unr = phi i64 [ %.sroa.speculated, %for.body.i.preheader ], [ %i.0100.i.prol, %for.body.i.prol ]
  %r.099.i.unr = phi i32 [ %27, %for.body.i.preheader ], [ %add.i79.i.prol, %for.body.i.prol ]
  %29 = icmp ult i64 %25, 7
  br i1 %29, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit, label %for.body.i.preheader88

for.body.i.preheader88:                           ; preds = %for.body.i.prol.loopexit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader88, %for.body.i
  %i.0100.in.i = phi i64 [ %i.0100.i.7, %for.body.i ], [ %i.0100.in.i.unr, %for.body.i.preheader88 ]
  %r.099.i = phi i32 [ %add.i79.i.7, %for.body.i ], [ %r.099.i.unr, %for.body.i.preheader88 ]
  %i.0100.i = add nsw i64 %i.0100.in.i, -1
  %arrayidx.i.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i
  %30 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !26
  %add.i79.i = add nsw i32 %30, %r.099.i
  %arrayidx.i = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i
  store i32 %add.i79.i, i32* %arrayidx.i, align 4, !tbaa !26
  %i.0100.i.1 = add nsw i64 %i.0100.in.i, -2
  %arrayidx.i.i.1 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i.1
  %31 = load i32, i32* %arrayidx.i.i.1, align 4, !tbaa !26
  %add.i79.i.1 = add nsw i32 %31, %add.i79.i
  %arrayidx.i.1 = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i.1
  store i32 %add.i79.i.1, i32* %arrayidx.i.1, align 4, !tbaa !26
  %i.0100.i.2 = add nsw i64 %i.0100.in.i, -3
  %arrayidx.i.i.2 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i.2
  %32 = load i32, i32* %arrayidx.i.i.2, align 4, !tbaa !26
  %add.i79.i.2 = add nsw i32 %32, %add.i79.i.1
  %arrayidx.i.2 = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i.2
  store i32 %add.i79.i.2, i32* %arrayidx.i.2, align 4, !tbaa !26
  %i.0100.i.3 = add nsw i64 %i.0100.in.i, -4
  %arrayidx.i.i.3 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i.3
  %33 = load i32, i32* %arrayidx.i.i.3, align 4, !tbaa !26
  %add.i79.i.3 = add nsw i32 %33, %add.i79.i.2
  %arrayidx.i.3 = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i.3
  store i32 %add.i79.i.3, i32* %arrayidx.i.3, align 4, !tbaa !26
  %i.0100.i.4 = add nsw i64 %i.0100.in.i, -5
  %arrayidx.i.i.4 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i.4
  %34 = load i32, i32* %arrayidx.i.i.4, align 4, !tbaa !26
  %add.i79.i.4 = add nsw i32 %34, %add.i79.i.3
  %arrayidx.i.4 = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i.4
  store i32 %add.i79.i.4, i32* %arrayidx.i.4, align 4, !tbaa !26
  %i.0100.i.5 = add nsw i64 %i.0100.in.i, -6
  %arrayidx.i.i.5 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i.5
  %35 = load i32, i32* %arrayidx.i.i.5, align 4, !tbaa !26
  %add.i79.i.5 = add nsw i32 %35, %add.i79.i.4
  %arrayidx.i.5 = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i.5
  store i32 %add.i79.i.5, i32* %arrayidx.i.5, align 4, !tbaa !26
  %i.0100.i.6 = add nsw i64 %i.0100.in.i, -7
  %arrayidx.i.i.6 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i.6
  %36 = load i32, i32* %arrayidx.i.i.6, align 4, !tbaa !26
  %add.i79.i.6 = add nsw i32 %36, %add.i79.i.5
  %arrayidx.i.6 = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i.6
  store i32 %add.i79.i.6, i32* %arrayidx.i.6, align 4, !tbaa !26
  %i.0100.i.7 = add nsw i64 %i.0100.in.i, -8
  %arrayidx.i.i.7 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i.0100.i.7
  %37 = load i32, i32* %arrayidx.i.i.7, align 4, !tbaa !26
  %add.i79.i.7 = add nsw i32 %37, %add.i79.i.6
  %arrayidx.i.7 = getelementptr inbounds i32, i32* %.pre33, i64 %i.0100.i.7
  store i32 %add.i79.i.7, i32* %arrayidx.i.7, align 4, !tbaa !26
  %cmp.i17.7 = icmp sgt i64 %i.0100.i.7, %add2
  br i1 %cmp.i17.7, label %for.body.i, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit

if.else.i:                                        ; preds = %if.then.i
  %cmp7101.i = icmp slt i64 %add2, %.sroa.speculated
  br i1 %cmp7101.i, label %for.body9.i.preheader, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit

for.body9.i.preheader:                            ; preds = %if.else.i
  %xtraiter = and i64 %26, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body9.i.prol.loopexit, label %for.body9.i.prol.preheader

for.body9.i.prol.preheader:                       ; preds = %for.body9.i.preheader
  br label %for.body9.i.prol

for.body9.i.prol:                                 ; preds = %for.body9.i.prol.preheader, %for.body9.i.prol
  %i5.0103.i.prol = phi i64 [ %inc.i.prol, %for.body9.i.prol ], [ %add2, %for.body9.i.prol.preheader ]
  %r.1102.i.prol = phi i32 [ %add.i76.i.prol, %for.body9.i.prol ], [ %27, %for.body9.i.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body9.i.prol ], [ %xtraiter, %for.body9.i.prol.preheader ]
  %arrayidx.i78.i.prol = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i5.0103.i.prol
  %38 = load i32, i32* %arrayidx.i78.i.prol, align 4, !tbaa !26
  %add.i76.i.prol = add nsw i32 %38, %r.1102.i.prol
  %arrayidx13.i.prol = getelementptr inbounds i32, i32* %.pre33, i64 %i5.0103.i.prol
  store i32 %add.i76.i.prol, i32* %arrayidx13.i.prol, align 4, !tbaa !26
  %inc.i.prol = add nsw i64 %i5.0103.i.prol, 1
  %prol.iter.sub = add nsw i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body9.i.prol.loopexit, label %for.body9.i.prol, !llvm.loop !289

for.body9.i.prol.loopexit:                        ; preds = %for.body9.i.prol, %for.body9.i.preheader
  %i5.0103.i.unr = phi i64 [ %add2, %for.body9.i.preheader ], [ %inc.i.prol, %for.body9.i.prol ]
  %r.1102.i.unr = phi i32 [ %27, %for.body9.i.preheader ], [ %add.i76.i.prol, %for.body9.i.prol ]
  %39 = icmp ult i64 %25, 7
  br i1 %39, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit, label %for.body9.i.preheader90

for.body9.i.preheader90:                          ; preds = %for.body9.i.prol.loopexit
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.preheader90, %for.body9.i
  %i5.0103.i = phi i64 [ %inc.i.7, %for.body9.i ], [ %i5.0103.i.unr, %for.body9.i.preheader90 ]
  %r.1102.i = phi i32 [ %add.i76.i.7, %for.body9.i ], [ %r.1102.i.unr, %for.body9.i.preheader90 ]
  %arrayidx.i78.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i5.0103.i
  %40 = load i32, i32* %arrayidx.i78.i, align 4, !tbaa !26
  %add.i76.i = add nsw i32 %40, %r.1102.i
  %arrayidx13.i = getelementptr inbounds i32, i32* %.pre33, i64 %i5.0103.i
  store i32 %add.i76.i, i32* %arrayidx13.i, align 4, !tbaa !26
  %inc.i = add nsw i64 %i5.0103.i, 1
  %arrayidx.i78.i.1 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc.i
  %41 = load i32, i32* %arrayidx.i78.i.1, align 4, !tbaa !26
  %add.i76.i.1 = add nsw i32 %41, %add.i76.i
  %arrayidx13.i.1 = getelementptr inbounds i32, i32* %.pre33, i64 %inc.i
  store i32 %add.i76.i.1, i32* %arrayidx13.i.1, align 4, !tbaa !26
  %inc.i.1 = add nsw i64 %i5.0103.i, 2
  %arrayidx.i78.i.2 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc.i.1
  %42 = load i32, i32* %arrayidx.i78.i.2, align 4, !tbaa !26
  %add.i76.i.2 = add nsw i32 %42, %add.i76.i.1
  %arrayidx13.i.2 = getelementptr inbounds i32, i32* %.pre33, i64 %inc.i.1
  store i32 %add.i76.i.2, i32* %arrayidx13.i.2, align 4, !tbaa !26
  %inc.i.2 = add nsw i64 %i5.0103.i, 3
  %arrayidx.i78.i.3 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc.i.2
  %43 = load i32, i32* %arrayidx.i78.i.3, align 4, !tbaa !26
  %add.i76.i.3 = add nsw i32 %43, %add.i76.i.2
  %arrayidx13.i.3 = getelementptr inbounds i32, i32* %.pre33, i64 %inc.i.2
  store i32 %add.i76.i.3, i32* %arrayidx13.i.3, align 4, !tbaa !26
  %inc.i.3 = add nsw i64 %i5.0103.i, 4
  %arrayidx.i78.i.4 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc.i.3
  %44 = load i32, i32* %arrayidx.i78.i.4, align 4, !tbaa !26
  %add.i76.i.4 = add nsw i32 %44, %add.i76.i.3
  %arrayidx13.i.4 = getelementptr inbounds i32, i32* %.pre33, i64 %inc.i.3
  store i32 %add.i76.i.4, i32* %arrayidx13.i.4, align 4, !tbaa !26
  %inc.i.4 = add nsw i64 %i5.0103.i, 5
  %arrayidx.i78.i.5 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc.i.4
  %45 = load i32, i32* %arrayidx.i78.i.5, align 4, !tbaa !26
  %add.i76.i.5 = add nsw i32 %45, %add.i76.i.4
  %arrayidx13.i.5 = getelementptr inbounds i32, i32* %.pre33, i64 %inc.i.4
  store i32 %add.i76.i.5, i32* %arrayidx13.i.5, align 4, !tbaa !26
  %inc.i.5 = add nsw i64 %i5.0103.i, 6
  %arrayidx.i78.i.6 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc.i.5
  %46 = load i32, i32* %arrayidx.i78.i.6, align 4, !tbaa !26
  %add.i76.i.6 = add nsw i32 %46, %add.i76.i.5
  %arrayidx13.i.6 = getelementptr inbounds i32, i32* %.pre33, i64 %inc.i.5
  store i32 %add.i76.i.6, i32* %arrayidx13.i.6, align 4, !tbaa !26
  %inc.i.6 = add nsw i64 %i5.0103.i, 7
  %arrayidx.i78.i.7 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc.i.6
  %47 = load i32, i32* %arrayidx.i78.i.7, align 4, !tbaa !26
  %add.i76.i.7 = add nsw i32 %47, %add.i76.i.6
  %arrayidx13.i.7 = getelementptr inbounds i32, i32* %.pre33, i64 %inc.i.6
  store i32 %add.i76.i.7, i32* %arrayidx13.i.7, align 4, !tbaa !26
  %inc.i.7 = add nsw i64 %i5.0103.i, 8
  %exitcond.i.7 = icmp eq i64 %inc.i.7, %.sroa.speculated
  br i1 %exitcond.i.7, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit, label %for.body9.i

if.else16.i:                                      ; preds = %loop.body
  br i1 %tobool5, label %if.then18.i, label %if.else31.i

if.then18.i:                                      ; preds = %if.else16.i
  %cmp22106.i = icmp sgt i64 %.sroa.speculated, %add2
  br i1 %cmp22106.i, label %for.body24.i.preheader, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit

for.body24.i.preheader:                           ; preds = %if.then18.i
  %xtraiter59 = and i64 %23, 7
  %lcmp.mod60 = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60, label %for.body24.i.prol.loopexit, label %for.body24.i.prol.preheader

for.body24.i.prol.preheader:                      ; preds = %for.body24.i.preheader
  br label %for.body24.i.prol

for.body24.i.prol:                                ; preds = %for.body24.i.prol.preheader, %for.body24.i.prol
  %i19.0108.in.i.prol = phi i64 [ %i19.0108.i.prol, %for.body24.i.prol ], [ %.sroa.speculated, %for.body24.i.prol.preheader ]
  %r.2107.i.prol = phi i32 [ %add.i73.i.prol, %for.body24.i.prol ], [ %27, %for.body24.i.prol.preheader ]
  %prol.iter61 = phi i64 [ %prol.iter61.sub, %for.body24.i.prol ], [ %xtraiter59, %for.body24.i.prol.preheader ]
  %i19.0108.i.prol = add nsw i64 %i19.0108.in.i.prol, -1
  %arrayidx.i75.i.prol = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i.prol
  %48 = load i32, i32* %arrayidx.i75.i.prol, align 4, !tbaa !26
  %arrayidx26.i.prol = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i.prol
  store i32 %r.2107.i.prol, i32* %arrayidx26.i.prol, align 4, !tbaa !26
  %add.i73.i.prol = add nsw i32 %48, %r.2107.i.prol
  %prol.iter61.sub = add nsw i64 %prol.iter61, -1
  %prol.iter61.cmp = icmp eq i64 %prol.iter61.sub, 0
  br i1 %prol.iter61.cmp, label %for.body24.i.prol.loopexit, label %for.body24.i.prol, !llvm.loop !290

for.body24.i.prol.loopexit:                       ; preds = %for.body24.i.prol, %for.body24.i.preheader
  %i19.0108.in.i.unr = phi i64 [ %.sroa.speculated, %for.body24.i.preheader ], [ %i19.0108.i.prol, %for.body24.i.prol ]
  %r.2107.i.unr = phi i32 [ %27, %for.body24.i.preheader ], [ %add.i73.i.prol, %for.body24.i.prol ]
  %49 = icmp ult i64 %25, 7
  br i1 %49, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit, label %for.body24.i.preheader85

for.body24.i.preheader85:                         ; preds = %for.body24.i.prol.loopexit
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.preheader85, %for.body24.i
  %i19.0108.in.i = phi i64 [ %i19.0108.i.7, %for.body24.i ], [ %i19.0108.in.i.unr, %for.body24.i.preheader85 ]
  %r.2107.i = phi i32 [ %add.i73.i.7, %for.body24.i ], [ %r.2107.i.unr, %for.body24.i.preheader85 ]
  %i19.0108.i = add nsw i64 %i19.0108.in.i, -1
  %arrayidx.i75.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i
  %50 = load i32, i32* %arrayidx.i75.i, align 4, !tbaa !26
  %arrayidx26.i = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i
  store i32 %r.2107.i, i32* %arrayidx26.i, align 4, !tbaa !26
  %add.i73.i = add nsw i32 %50, %r.2107.i
  %i19.0108.i.1 = add nsw i64 %i19.0108.in.i, -2
  %arrayidx.i75.i.1 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i.1
  %51 = load i32, i32* %arrayidx.i75.i.1, align 4, !tbaa !26
  %arrayidx26.i.1 = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i.1
  store i32 %add.i73.i, i32* %arrayidx26.i.1, align 4, !tbaa !26
  %add.i73.i.1 = add nsw i32 %51, %add.i73.i
  %i19.0108.i.2 = add nsw i64 %i19.0108.in.i, -3
  %arrayidx.i75.i.2 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i.2
  %52 = load i32, i32* %arrayidx.i75.i.2, align 4, !tbaa !26
  %arrayidx26.i.2 = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i.2
  store i32 %add.i73.i.1, i32* %arrayidx26.i.2, align 4, !tbaa !26
  %add.i73.i.2 = add nsw i32 %52, %add.i73.i.1
  %i19.0108.i.3 = add nsw i64 %i19.0108.in.i, -4
  %arrayidx.i75.i.3 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i.3
  %53 = load i32, i32* %arrayidx.i75.i.3, align 4, !tbaa !26
  %arrayidx26.i.3 = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i.3
  store i32 %add.i73.i.2, i32* %arrayidx26.i.3, align 4, !tbaa !26
  %add.i73.i.3 = add nsw i32 %53, %add.i73.i.2
  %i19.0108.i.4 = add nsw i64 %i19.0108.in.i, -5
  %arrayidx.i75.i.4 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i.4
  %54 = load i32, i32* %arrayidx.i75.i.4, align 4, !tbaa !26
  %arrayidx26.i.4 = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i.4
  store i32 %add.i73.i.3, i32* %arrayidx26.i.4, align 4, !tbaa !26
  %add.i73.i.4 = add nsw i32 %54, %add.i73.i.3
  %i19.0108.i.5 = add nsw i64 %i19.0108.in.i, -6
  %arrayidx.i75.i.5 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i.5
  %55 = load i32, i32* %arrayidx.i75.i.5, align 4, !tbaa !26
  %arrayidx26.i.5 = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i.5
  store i32 %add.i73.i.4, i32* %arrayidx26.i.5, align 4, !tbaa !26
  %add.i73.i.5 = add nsw i32 %55, %add.i73.i.4
  %i19.0108.i.6 = add nsw i64 %i19.0108.in.i, -7
  %arrayidx.i75.i.6 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i.6
  %56 = load i32, i32* %arrayidx.i75.i.6, align 4, !tbaa !26
  %arrayidx26.i.6 = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i.6
  store i32 %add.i73.i.5, i32* %arrayidx26.i.6, align 4, !tbaa !26
  %add.i73.i.6 = add nsw i32 %56, %add.i73.i.5
  %i19.0108.i.7 = add nsw i64 %i19.0108.in.i, -8
  %arrayidx.i75.i.7 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i19.0108.i.7
  %57 = load i32, i32* %arrayidx.i75.i.7, align 4, !tbaa !26
  %arrayidx26.i.7 = getelementptr inbounds i32, i32* %.pre33, i64 %i19.0108.i.7
  store i32 %add.i73.i.6, i32* %arrayidx26.i.7, align 4, !tbaa !26
  %add.i73.i.7 = add nsw i32 %57, %add.i73.i.6
  %cmp22.i.7 = icmp sgt i64 %i19.0108.i.7, %add2
  br i1 %cmp22.i.7, label %for.body24.i, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit

if.else31.i:                                      ; preds = %if.else16.i
  %cmp34110.i = icmp slt i64 %add2, %.sroa.speculated
  br i1 %cmp34110.i, label %for.body36.i.preheader, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit

for.body36.i.preheader:                           ; preds = %if.else31.i
  %xtraiter55 = and i64 %23, 7
  %lcmp.mod56 = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56, label %for.body36.i.prol.loopexit, label %for.body36.i.prol.preheader

for.body36.i.prol.preheader:                      ; preds = %for.body36.i.preheader
  br label %for.body36.i.prol

for.body36.i.prol:                                ; preds = %for.body36.i.prol.preheader, %for.body36.i.prol
  %i32.0112.i.prol = phi i64 [ %inc42.i.prol, %for.body36.i.prol ], [ %add2, %for.body36.i.prol.preheader ]
  %r.3111.i.prol = phi i32 [ %add.i.i.prol, %for.body36.i.prol ], [ %27, %for.body36.i.prol.preheader ]
  %prol.iter57 = phi i64 [ %prol.iter57.sub, %for.body36.i.prol ], [ %xtraiter55, %for.body36.i.prol.preheader ]
  %arrayidx.i72.i.prol = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i32.0112.i.prol
  %58 = load i32, i32* %arrayidx.i72.i.prol, align 4, !tbaa !26
  %arrayidx39.i.prol = getelementptr inbounds i32, i32* %.pre33, i64 %i32.0112.i.prol
  store i32 %r.3111.i.prol, i32* %arrayidx39.i.prol, align 4, !tbaa !26
  %add.i.i.prol = add nsw i32 %58, %r.3111.i.prol
  %inc42.i.prol = add nsw i64 %i32.0112.i.prol, 1
  %prol.iter57.sub = add nsw i64 %prol.iter57, -1
  %prol.iter57.cmp = icmp eq i64 %prol.iter57.sub, 0
  br i1 %prol.iter57.cmp, label %for.body36.i.prol.loopexit, label %for.body36.i.prol, !llvm.loop !291

for.body36.i.prol.loopexit:                       ; preds = %for.body36.i.prol, %for.body36.i.preheader
  %i32.0112.i.unr = phi i64 [ %add2, %for.body36.i.preheader ], [ %inc42.i.prol, %for.body36.i.prol ]
  %r.3111.i.unr = phi i32 [ %27, %for.body36.i.preheader ], [ %add.i.i.prol, %for.body36.i.prol ]
  %59 = icmp ult i64 %25, 7
  br i1 %59, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit, label %for.body36.i.preheader86

for.body36.i.preheader86:                         ; preds = %for.body36.i.prol.loopexit
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.body36.i.preheader86, %for.body36.i
  %i32.0112.i = phi i64 [ %inc42.i.7, %for.body36.i ], [ %i32.0112.i.unr, %for.body36.i.preheader86 ]
  %r.3111.i = phi i32 [ %add.i.i.7, %for.body36.i ], [ %r.3111.i.unr, %for.body36.i.preheader86 ]
  %arrayidx.i72.i = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %i32.0112.i
  %60 = load i32, i32* %arrayidx.i72.i, align 4, !tbaa !26
  %arrayidx39.i = getelementptr inbounds i32, i32* %.pre33, i64 %i32.0112.i
  store i32 %r.3111.i, i32* %arrayidx39.i, align 4, !tbaa !26
  %add.i.i = add nsw i32 %60, %r.3111.i
  %inc42.i = add nsw i64 %i32.0112.i, 1
  %arrayidx.i72.i.1 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc42.i
  %61 = load i32, i32* %arrayidx.i72.i.1, align 4, !tbaa !26
  %arrayidx39.i.1 = getelementptr inbounds i32, i32* %.pre33, i64 %inc42.i
  store i32 %add.i.i, i32* %arrayidx39.i.1, align 4, !tbaa !26
  %add.i.i.1 = add nsw i32 %61, %add.i.i
  %inc42.i.1 = add nsw i64 %i32.0112.i, 2
  %arrayidx.i72.i.2 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc42.i.1
  %62 = load i32, i32* %arrayidx.i72.i.2, align 4, !tbaa !26
  %arrayidx39.i.2 = getelementptr inbounds i32, i32* %.pre33, i64 %inc42.i.1
  store i32 %add.i.i.1, i32* %arrayidx39.i.2, align 4, !tbaa !26
  %add.i.i.2 = add nsw i32 %62, %add.i.i.1
  %inc42.i.2 = add nsw i64 %i32.0112.i, 3
  %arrayidx.i72.i.3 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc42.i.2
  %63 = load i32, i32* %arrayidx.i72.i.3, align 4, !tbaa !26
  %arrayidx39.i.3 = getelementptr inbounds i32, i32* %.pre33, i64 %inc42.i.2
  store i32 %add.i.i.2, i32* %arrayidx39.i.3, align 4, !tbaa !26
  %add.i.i.3 = add nsw i32 %63, %add.i.i.2
  %inc42.i.3 = add nsw i64 %i32.0112.i, 4
  %arrayidx.i72.i.4 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc42.i.3
  %64 = load i32, i32* %arrayidx.i72.i.4, align 4, !tbaa !26
  %arrayidx39.i.4 = getelementptr inbounds i32, i32* %.pre33, i64 %inc42.i.3
  store i32 %add.i.i.3, i32* %arrayidx39.i.4, align 4, !tbaa !26
  %add.i.i.4 = add nsw i32 %64, %add.i.i.3
  %inc42.i.4 = add nsw i64 %i32.0112.i, 5
  %arrayidx.i72.i.5 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc42.i.4
  %65 = load i32, i32* %arrayidx.i72.i.5, align 4, !tbaa !26
  %arrayidx39.i.5 = getelementptr inbounds i32, i32* %.pre33, i64 %inc42.i.4
  store i32 %add.i.i.4, i32* %arrayidx39.i.5, align 4, !tbaa !26
  %add.i.i.5 = add nsw i32 %65, %add.i.i.4
  %inc42.i.5 = add nsw i64 %i32.0112.i, 6
  %arrayidx.i72.i.6 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc42.i.5
  %66 = load i32, i32* %arrayidx.i72.i.6, align 4, !tbaa !26
  %arrayidx39.i.6 = getelementptr inbounds i32, i32* %.pre33, i64 %inc42.i.5
  store i32 %add.i.i.5, i32* %arrayidx39.i.6, align 4, !tbaa !26
  %add.i.i.6 = add nsw i32 %66, %add.i.i.5
  %inc42.i.6 = add nsw i64 %i32.0112.i, 7
  %arrayidx.i72.i.7 = getelementptr inbounds i32, i32* %agg.tmp4.sroa.0.0.copyload, i64 %inc42.i.6
  %67 = load i32, i32* %arrayidx.i72.i.7, align 4, !tbaa !26
  %arrayidx39.i.7 = getelementptr inbounds i32, i32* %.pre33, i64 %inc42.i.6
  store i32 %add.i.i.6, i32* %arrayidx39.i.7, align 4, !tbaa !26
  %add.i.i.7 = add nsw i32 %67, %add.i.i.6
  %inc42.i.7 = add nsw i64 %i32.0112.i, 8
  %exitcond117.i.7 = icmp eq i64 %inc42.i.7, %.sroa.speculated
  br i1 %exitcond117.i.7, label %_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit, label %for.body36.i

_ZN8sequence10scanSerialIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb.exit: ; preds = %for.body9.i, %for.body.i, %for.body36.i, %for.body24.i, %for.body9.i.prol.loopexit, %for.body.i.prol.loopexit, %for.body36.i.prol.loopexit, %for.body24.i.prol.loopexit, %if.then3.i, %if.else.i, %if.then18.i, %if.else31.i
  %inc = add nsw i64 %__cv_i.024, 1
  %68 = add nuw i64 %__index.addr.025, 1
  %exitcond = icmp eq i64 %68, %__high
  %indvar.next = add nuw i64 %indvar, 1
  br i1 %exitcond, label %loop.cond.cleanup, label %loop.body
}

; Function Attrs: stealable uwtable
define linkonce_odr void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %this, i32 %rStart, i32 %rCount, i32 %rLength, i32 %cStart, i32 %cCount, i32 %cLength) local_unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = call %__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %__cilkrts_worker* %0, null
  br i1 %1, label %2, label %__cilk_parent_prologue.exit

; <label>:2:                                      ; preds = %entry
  %3 = call %__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilk_parent_prologue.exit

__cilk_parent_prologue.exit:                      ; preds = %entry, %2
  %.sink = phi i32 [ 16777344, %2 ], [ 16777216, %entry ]
  %4 = phi %__cilkrts_worker* [ %3, %2 ], [ %0, %entry ]
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %5 release, align 8
  %6 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %4, i64 0, i32 9
  %7 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %6 acquire, align 8
  %8 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %8 release, align 8
  %9 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %4, %__cilkrts_worker** %9 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %6 release, align 8
  %rStart.addr = alloca i32, align 4
  %rCount.addr = alloca i32, align 4
  %rLength.addr = alloca i32, align 4
  %cStart.addr = alloca i32, align 4
  %cCount.addr = alloca i32, align 4
  %cLength.addr = alloca i32, align 4
  %l1 = alloca i32, align 4
  %agg.captured = alloca %struct.anon.28, align 8
  %exn.slot = alloca i8*, align 8
  %l124 = alloca i32, align 4
  %agg.captured31 = alloca %struct.anon.29, align 8
  store i32 %rStart, i32* %rStart.addr, align 4, !tbaa !26
  store i32 %rCount, i32* %rCount.addr, align 4, !tbaa !26
  store i32 %rLength, i32* %rLength.addr, align 4, !tbaa !26
  store i32 %cStart, i32* %cStart.addr, align 4, !tbaa !26
  store i32 %cCount, i32* %cCount.addr, align 4, !tbaa !26
  store i32 %cLength, i32* %cLength.addr, align 4, !tbaa !26
  %cmp = icmp slt i32 %cCount, 64
  %cmp2 = icmp slt i32 %rCount, 64
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %__cilk_parent_prologue.exit
  %cmp390 = icmp sgt i32 %rCount, 0
  br i1 %cmp390, label %for.body.lr.ph, label %if.end38

for.body.lr.ph:                                   ; preds = %if.then
  %A = getelementptr inbounds %struct.transpose, %struct.transpose* %this, i64 0, i32 0
  %B = getelementptr inbounds %struct.transpose, %struct.transpose* %this, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup7
  %10 = phi i32 [ %rCount, %for.body.lr.ph ], [ %16, %for.cond.cleanup7 ]
  %11 = phi i32 [ %rStart, %for.body.lr.ph ], [ %17, %for.cond.cleanup7 ]
  %12 = phi i32 [ %cStart, %for.body.lr.ph ], [ %18, %for.cond.cleanup7 ]
  %13 = phi i32 [ %cCount, %for.body.lr.ph ], [ %19, %for.cond.cleanup7 ]
  %i.091 = phi i32 [ %rStart, %for.body.lr.ph ], [ %inc15, %for.cond.cleanup7 ]
  %cmp687 = icmp sgt i32 %13, 0
  br i1 %cmp687, label %for.body8.lr.ph, label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.body
  %14 = load i32*, i32** %A, align 8, !tbaa !165
  %15 = load i32*, i32** %B, align 8, !tbaa !167
  br label %for.body8

for.cond.cleanup7.loopexit:                       ; preds = %for.body8
  %.pre96 = load i32, i32* %rStart.addr, align 4, !tbaa !26
  %.pre97 = load i32, i32* %rCount.addr, align 4, !tbaa !26
  br label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond.cleanup7.loopexit, %for.body
  %16 = phi i32 [ %.pre97, %for.cond.cleanup7.loopexit ], [ %10, %for.body ]
  %17 = phi i32 [ %.pre96, %for.cond.cleanup7.loopexit ], [ %11, %for.body ]
  %18 = phi i32 [ %23, %for.cond.cleanup7.loopexit ], [ %12, %for.body ]
  %19 = phi i32 [ %24, %for.cond.cleanup7.loopexit ], [ %13, %for.body ]
  %inc15 = add nsw i32 %i.091, 1
  %add = add nsw i32 %17, %16
  %cmp3 = icmp slt i32 %inc15, %add
  br i1 %cmp3, label %for.body, label %if.end38

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %j.088 = phi i32 [ %12, %for.body8.lr.ph ], [ %inc, %for.body8 ]
  %20 = load i32, i32* %rLength.addr, align 4, !tbaa !26
  %mul = mul nsw i32 %20, %i.091
  %add9 = add nsw i32 %mul, %j.088
  %idxprom = sext i32 %add9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4, !tbaa !26
  %22 = load i32, i32* %cLength.addr, align 4, !tbaa !26
  %mul10 = mul nsw i32 %22, %j.088
  %add11 = add nsw i32 %mul10, %i.091
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %15, i64 %idxprom12
  store i32 %21, i32* %arrayidx13, align 4, !tbaa !26
  %inc = add nsw i32 %j.088, 1
  %23 = load i32, i32* %cStart.addr, align 4, !tbaa !26
  %24 = load i32, i32* %cCount.addr, align 4, !tbaa !26
  %add5 = add nsw i32 %24, %23
  %cmp6 = icmp slt i32 %inc, %add5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7.loopexit

if.else:                                          ; preds = %__cilk_parent_prologue.exit
  %cmp17 = icmp sgt i32 %cCount, %rCount
  br i1 %cmp17, label %if.then18, label %if.else23

if.then18:                                        ; preds = %if.else
  %25 = bitcast i32* %l1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #2
  %div = sdiv i32 %cCount, 2
  store i32 %div, i32* %l1, align 4, !tbaa !26
  %sub = sub nsw i32 %cCount, %div
  %26 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %27 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %26, i16* nonnull %27) #2
  %28 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %29 = call i8* @llvm.frameaddress(i32 0)
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %28, i64 0, i64 0
  store volatile i8* %29, i8** %30, align 8
  %31 = call i8* @llvm.stacksave()
  %32 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %31, i8** %32, align 8
  %33 = bitcast [5 x i8*]* %28 to i8*
  %34 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %33) #20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %cilk.spawn.helpercall, label %cilk.spawn.continuation

cilk.spawn.helpercall:                            ; preds = %if.then18
  %36 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %agg.captured, i64 0, i32 0
  store %struct.transpose* %this, %struct.transpose** %36, align 8, !tbaa !292
  %37 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %agg.captured, i64 0, i32 1
  store i32* %rStart.addr, i32** %37, align 8, !tbaa !24
  %38 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %agg.captured, i64 0, i32 2
  store i32* %rCount.addr, i32** %38, align 8, !tbaa !24
  %39 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %agg.captured, i64 0, i32 3
  store i32* %rLength.addr, i32** %39, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %agg.captured, i64 0, i32 4
  store i32* %cStart.addr, i32** %40, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %agg.captured, i64 0, i32 5
  store i32* %l1, i32** %41, align 8, !tbaa !24
  %42 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %agg.captured, i64 0, i32 6
  store i32* %cLength.addr, i32** %42, align 8, !tbaa !24
  invoke fastcc void @__cilk_spawn_helper.37(%struct.anon.28* nonnull %agg.captured)
          to label %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge unwind label %lpad

cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge: ; preds = %cilk.spawn.helpercall
  %.pre94 = load i32, i32* %rCount.addr, align 4, !tbaa !26
  %.pre95 = load i32, i32* %l1, align 4, !tbaa !26
  br label %cilk.spawn.continuation

cilk.spawn.continuation:                          ; preds = %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge, %if.then18
  %43 = phi i32 [ %.pre95, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %div, %if.then18 ]
  %44 = phi i32 [ %.pre94, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %rCount, %if.then18 ]
  %45 = load i32, i32* %rStart.addr, align 4, !tbaa !26
  %46 = load i32, i32* %rLength.addr, align 4, !tbaa !26
  %47 = load i32, i32* %cStart.addr, align 4, !tbaa !26
  %add20 = add nsw i32 %47, %43
  %48 = load i32, i32* %cLength.addr, align 4, !tbaa !26
  invoke void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %this, i32 %45, i32 %44, i32 %46, i32 %add20, i32 %sub, i32 %48)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %cilk.spawn.continuation
  %49 = load atomic i32, i32* %5 acquire, align 8
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %invoke.cont22, label %cilk.sync.savestate.i65

cilk.sync.savestate.i65:                          ; preds = %invoke.cont21
  %52 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i59 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %52, i64 0, i32 12, i32 0
  %53 = bitcast i64* %.elt.i59 to <2 x i64>*
  %54 = load <2 x i64>, <2 x i64>* %53, align 8
  %.repack.i63 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %55 = bitcast i64* %.repack.i63 to <2 x i64>*
  store <2 x i64> %54, <2 x i64>* %55, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %26, i16* nonnull %27) #2
  store volatile i8* %29, i8** %30, align 8
  %56 = call i8* @llvm.stacksave()
  store volatile i8* %56, i8** %32, align 8
  %57 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %33) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %cilk.sync.runtimecall.i66, label %cilk.sync.excepting.i67

cilk.sync.runtimecall.i66:                        ; preds = %cilk.sync.savestate.i65
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont22 unwind label %lpad

cilk.sync.excepting.i67:                          ; preds = %cilk.sync.savestate.i65
  %59 = load atomic i32, i32* %5 acquire, align 8
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %invoke.cont22, label %cilk.sync.rethrow.i68

cilk.sync.rethrow.i68:                            ; preds = %cilk.sync.excepting.i67
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc70 unwind label %lpad

.noexc70:                                         ; preds = %cilk.sync.rethrow.i68
  unreachable

invoke.cont22:                                    ; preds = %cilk.sync.excepting.i67, %invoke.cont21, %cilk.sync.runtimecall.i66
  %62 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %63 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %62, i64 0, i32 12, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #2
  br label %if.end38

lpad:                                             ; preds = %cilk.sync.rethrow.i68, %cilk.sync.runtimecall.i66, %cilk.spawn.continuation, %cilk.spawn.helpercall
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = extractvalue { i8*, i32 } %66, 0
  store i8* %67, i8** %exn.slot, align 8
  %68 = extractvalue { i8*, i32 } %66, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #2
  br label %ehcleanup

if.else23:                                        ; preds = %if.else
  %69 = bitcast i32* %l124 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %69) #2
  %div25 = sdiv i32 %rCount, 2
  store i32 %div25, i32* %l124, align 4, !tbaa !26
  %sub28 = sub nsw i32 %rCount, %div25
  %70 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %71 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %70, i16* nonnull %71) #2
  %72 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %73 = call i8* @llvm.frameaddress(i32 0)
  %74 = getelementptr inbounds [5 x i8*], [5 x i8*]* %72, i64 0, i64 0
  store volatile i8* %73, i8** %74, align 8
  %75 = call i8* @llvm.stacksave()
  %76 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %75, i8** %76, align 8
  %77 = bitcast [5 x i8*]* %72 to i8*
  %78 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %77) #20
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %cilk.spawn.helpercall30, label %cilk.spawn.continuation34

cilk.spawn.helpercall30:                          ; preds = %if.else23
  %80 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %agg.captured31, i64 0, i32 0
  store %struct.transpose* %this, %struct.transpose** %80, align 8, !tbaa !292
  %81 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %agg.captured31, i64 0, i32 1
  store i32* %rStart.addr, i32** %81, align 8, !tbaa !24
  %82 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %agg.captured31, i64 0, i32 2
  store i32* %l124, i32** %82, align 8, !tbaa !24
  %83 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %agg.captured31, i64 0, i32 3
  store i32* %rLength.addr, i32** %83, align 8, !tbaa !24
  %84 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %agg.captured31, i64 0, i32 4
  store i32* %cStart.addr, i32** %84, align 8, !tbaa !24
  %85 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %agg.captured31, i64 0, i32 5
  store i32* %cCount.addr, i32** %85, align 8, !tbaa !24
  %86 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %agg.captured31, i64 0, i32 6
  store i32* %cLength.addr, i32** %86, align 8, !tbaa !24
  %87 = bitcast %struct.anon.29* %agg.captured31 to %struct.anon.28*
  invoke fastcc void @__cilk_spawn_helper.37(%struct.anon.28* nonnull %87)
          to label %cilk.spawn.helpercall30.cilk.spawn.continuation34_crit_edge unwind label %lpad32

cilk.spawn.helpercall30.cilk.spawn.continuation34_crit_edge: ; preds = %cilk.spawn.helpercall30
  %.pre = load i32, i32* %l124, align 4, !tbaa !26
  %.pre93 = load i32, i32* %cCount.addr, align 4, !tbaa !26
  br label %cilk.spawn.continuation34

cilk.spawn.continuation34:                        ; preds = %cilk.spawn.helpercall30.cilk.spawn.continuation34_crit_edge, %if.else23
  %88 = phi i32 [ %.pre93, %cilk.spawn.helpercall30.cilk.spawn.continuation34_crit_edge ], [ %cCount, %if.else23 ]
  %89 = phi i32 [ %.pre, %cilk.spawn.helpercall30.cilk.spawn.continuation34_crit_edge ], [ %div25, %if.else23 ]
  %90 = load i32, i32* %rStart.addr, align 4, !tbaa !26
  %add35 = add nsw i32 %90, %89
  %91 = load i32, i32* %rLength.addr, align 4, !tbaa !26
  %92 = load i32, i32* %cStart.addr, align 4, !tbaa !26
  %93 = load i32, i32* %cLength.addr, align 4, !tbaa !26
  invoke void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %this, i32 %add35, i32 %sub28, i32 %91, i32 %92, i32 %88, i32 %93)
          to label %invoke.cont36 unwind label %lpad32

invoke.cont36:                                    ; preds = %cilk.spawn.continuation34
  %94 = load atomic i32, i32* %5 acquire, align 8
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %invoke.cont37, label %cilk.sync.savestate.i79

cilk.sync.savestate.i79:                          ; preds = %invoke.cont36
  %97 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i73 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %97, i64 0, i32 12, i32 0
  %98 = bitcast i64* %.elt.i73 to <2 x i64>*
  %99 = load <2 x i64>, <2 x i64>* %98, align 8
  %.repack.i77 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %100 = bitcast i64* %.repack.i77 to <2 x i64>*
  store <2 x i64> %99, <2 x i64>* %100, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %70, i16* nonnull %71) #2
  store volatile i8* %73, i8** %74, align 8
  %101 = call i8* @llvm.stacksave()
  store volatile i8* %101, i8** %76, align 8
  %102 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %77) #20
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %cilk.sync.runtimecall.i80, label %cilk.sync.excepting.i81

cilk.sync.runtimecall.i80:                        ; preds = %cilk.sync.savestate.i79
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont37 unwind label %lpad32

cilk.sync.excepting.i81:                          ; preds = %cilk.sync.savestate.i79
  %104 = load atomic i32, i32* %5 acquire, align 8
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %invoke.cont37, label %cilk.sync.rethrow.i82

cilk.sync.rethrow.i82:                            ; preds = %cilk.sync.excepting.i81
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc84 unwind label %lpad32

.noexc84:                                         ; preds = %cilk.sync.rethrow.i82
  unreachable

invoke.cont37:                                    ; preds = %cilk.sync.excepting.i81, %invoke.cont36, %cilk.sync.runtimecall.i80
  %107 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %108 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %107, i64 0, i32 12, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %69) #2
  br label %if.end38

lpad32:                                           ; preds = %cilk.spawn.helpercall30, %cilk.sync.rethrow.i82, %cilk.sync.runtimecall.i80, %cilk.spawn.continuation34
  %111 = landingpad { i8*, i32 }
          cleanup
  %112 = extractvalue { i8*, i32 } %111, 0
  store i8* %112, i8** %exn.slot, align 8
  %113 = extractvalue { i8*, i32 } %111, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %69) #2
  br label %ehcleanup

if.end38:                                         ; preds = %for.cond.cleanup7, %if.then, %invoke.cont22, %invoke.cont37
  %114 = load atomic i32, i32* %5 acquire, align 8
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %invoke.cont40, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %if.end38
  %117 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %117, i64 0, i32 12, i32 0
  %118 = bitcast i64* %.elt.i to <2 x i64>*
  %119 = load <2 x i64>, <2 x i64>* %118, align 8
  %.repack.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %120 = bitcast i64* %.repack.i to <2 x i64>*
  store <2 x i64> %119, <2 x i64>* %120, align 8
  %121 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %122 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %121, i16* nonnull %122) #2
  %123 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %124 = call i8* @llvm.frameaddress(i32 0)
  %125 = getelementptr inbounds [5 x i8*], [5 x i8*]* %123, i64 0, i64 0
  store volatile i8* %124, i8** %125, align 8
  %126 = call i8* @llvm.stacksave()
  %127 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %126, i8** %127, align 8
  %128 = bitcast [5 x i8*]* %123 to i8*
  %129 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %128) #20
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont40 unwind label %lpad39

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %131 = load atomic i32, i32* %5 acquire, align 8
  %132 = and i32 %131, 16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %invoke.cont40, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc57 unwind label %lpad39

.noexc57:                                         ; preds = %cilk.sync.rethrow.i
  unreachable

invoke.cont40:                                    ; preds = %cilk.sync.excepting.i, %if.end38, %cilk.sync.runtimecall.i
  %134 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %135 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %134, i64 0, i32 12, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %139 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %138, i64 0, i32 9
  %142 = bitcast %__cilkrts_stack_frame** %141 to i64*
  store atomic i64 %140, i64* %142 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %143 = load atomic i32, i32* %5 acquire, align 8
  %144 = icmp eq i32 %143, 16777216
  br i1 %144, label %__cilk_parent_epilogue.exit55, label %145

; <label>:145:                                    ; preds = %invoke.cont40
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit55

__cilk_parent_epilogue.exit55:                    ; preds = %invoke.cont40, %145
  ret void

lpad39:                                           ; preds = %cilk.sync.rethrow.i, %cilk.sync.runtimecall.i
  %146 = landingpad { i8*, i32 }
          cleanup
  %147 = extractvalue { i8*, i32 } %146, 0
  store i8* %147, i8** %exn.slot, align 8
  %148 = extractvalue { i8*, i32 } %146, 1
  br label %ehcleanup41

ehcleanup:                                        ; preds = %lpad32, %lpad
  %ehselector.slot.0 = phi i32 [ %68, %lpad ], [ %113, %lpad32 ]
  %149 = load atomic i32, i32* %5 acquire, align 8
  %150 = and i32 %149, 2
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %__cilk_excepting_sync.exit, label %setjmp.test.i

setjmp.test.i:                                    ; preds = %ehcleanup
  %152 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %153 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %152, i16* nonnull %153) #2
  %154 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %155 = call i8* @llvm.frameaddress(i32 0) #2
  %156 = getelementptr inbounds [5 x i8*], [5 x i8*]* %154, i64 0, i64 0
  store volatile i8* %155, i8** %156, align 8
  %157 = call i8* @llvm.stacksave() #2
  %158 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %157, i8** %158, align 8
  %159 = bitcast [5 x i8*]* %154 to i8*
  %160 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %159) #23
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %setjmp.if.i, label %setjmp.test.setjmp.cont_crit_edge.i

setjmp.test.setjmp.cont_crit_edge.i:              ; preds = %setjmp.test.i
  %.pre.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %.pre1.i = bitcast i8** %.pre.i to i64*
  %.pre3.i = bitcast i8** %exn.slot to i64*
  br label %setjmp.cont.i

setjmp.if.i:                                      ; preds = %setjmp.test.i
  %162 = bitcast i8** %exn.slot to i64*
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %165 = bitcast i8** %164 to i64*
  store i64 %163, i64* %165, align 8
  %166 = load atomic i32, i32* %5 acquire, align 8
  %167 = or i32 %166, 16
  store atomic i32 %167, i32* %5 release, align 8
  call void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %setjmp.cont.i

setjmp.cont.i:                                    ; preds = %setjmp.if.i, %setjmp.test.setjmp.cont_crit_edge.i
  %.pre-phi4.i = phi i64* [ %.pre3.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %162, %setjmp.if.i ]
  %.pre-phi2.i = phi i64* [ %.pre1.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %165, %setjmp.if.i ]
  %168 = load atomic i32, i32* %5 acquire, align 8
  %169 = and i32 %168, -17
  store atomic i32 %169, i32* %5 release, align 8
  %170 = load i64, i64* %.pre-phi2.i, align 8
  store i64 %170, i64* %.pre-phi4.i, align 8
  br label %__cilk_excepting_sync.exit

__cilk_excepting_sync.exit:                       ; preds = %ehcleanup, %setjmp.cont.i
  %171 = load %__cilkrts_worker*, %__cilkrts_worker** %9, align 8
  %172 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %171, i64 0, i32 12, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %ehcleanup41

ehcleanup41:                                      ; preds = %__cilk_excepting_sync.exit, %lpad39
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %__cilk_excepting_sync.exit ], [ %148, %lpad39 ]
  %175 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %176 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %175, i64 0, i32 9
  %179 = bitcast %__cilkrts_stack_frame** %178 to i64*
  store atomic i64 %177, i64* %179 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %180 = load atomic i32, i32* %5 acquire, align 8
  %181 = icmp eq i32 %180, 16777216
  br i1 %181, label %__cilk_parent_epilogue.exit, label %182

; <label>:182:                                    ; preds = %ehcleanup41
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %ehcleanup41, %182
  %exn = load i8*, i8** %exn.slot, align 8
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val42 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val42
}

; Function Attrs: noinline uwtable
define internal fastcc void @__cilk_spawn_helper.37(%struct.anon.28* nocapture readonly %__context) unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = tail call %__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %3, %__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %0, %__cilkrts_worker** %5 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %2 release, align 8
  %6 = load %__cilkrts_worker*, %__cilkrts_worker** %5, align 8
  %7 = load %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %4, align 8
  %8 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 0
  %9 = load atomic %__cilkrts_stack_frame**, %__cilkrts_stack_frame*** %8 acquire, align 8
  %.elt.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 0
  %.unpack.i.i = load i64, i64* %.elt.i.i, align 8
  %.elt1.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 1
  %10 = bitcast %__cilkrts_pedigree** %.elt1.i.i to i64*
  %.unpack26.i.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9
  %.repack.i.i = getelementptr inbounds %__cilkrts_pedigree, %__cilkrts_pedigree* %11, i64 0, i32 0
  store i64 %.unpack.i.i, i64* %.repack.i.i, align 8
  %.repack4.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 1
  %12 = bitcast %__cilkrts_pedigree** %.repack4.i.i to i64*
  store i64 %.unpack26.i.i, i64* %12, align 8
  %.repack11.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 0
  store i64 %.unpack.i.i, i64* %.repack11.i.i, align 8
  %.repack13.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 1
  %13 = bitcast %__cilkrts_pedigree** %.repack13.i.i to i64*
  store i64 %.unpack26.i.i, i64* %13, align 8
  store atomic i64 0, i64* %.elt.i.i release, align 8
  store atomic %__cilkrts_pedigree* %11, %__cilkrts_pedigree** %.elt1.i.i release, align 8
  fence release
  store volatile %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %9, align 8
  %14 = getelementptr %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %9, i64 1
  store atomic %__cilkrts_stack_frame** %14, %__cilkrts_stack_frame*** %8 release, align 8
  %15 = load atomic i32, i32* %1 acquire, align 8
  %16 = or i32 %15, 4
  store atomic i32 %16, i32* %1 release, align 8
  %17 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %__context, i64 0, i32 0
  %18 = load %struct.transpose*, %struct.transpose** %17, align 8, !tbaa !292
  %19 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %__context, i64 0, i32 1
  %20 = load i32*, i32** %19, align 8, !tbaa !294
  %21 = load i32, i32* %20, align 4, !tbaa !26
  %22 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %__context, i64 0, i32 2
  %23 = load i32*, i32** %22, align 8, !tbaa !295
  %24 = load i32, i32* %23, align 4, !tbaa !26
  %25 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %__context, i64 0, i32 3
  %26 = load i32*, i32** %25, align 8, !tbaa !296
  %27 = load i32, i32* %26, align 4, !tbaa !26
  %28 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %__context, i64 0, i32 4
  %29 = load i32*, i32** %28, align 8, !tbaa !297
  %30 = load i32, i32* %29, align 4, !tbaa !26
  %31 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %__context, i64 0, i32 5
  %32 = load i32*, i32** %31, align 8, !tbaa !298
  %33 = load i32, i32* %32, align 4, !tbaa !26
  %34 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %__context, i64 0, i32 6
  %35 = load i32*, i32** %34, align 8, !tbaa !299
  %36 = load i32, i32* %35, align 4, !tbaa !26
  invoke void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %37 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %38 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %37, i64 0, i32 9
  %41 = bitcast %__cilkrts_stack_frame** %40 to i64*
  store atomic i64 %39, i64* %41 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %42 = load atomic i32, i32* %1 acquire, align 8
  %43 = icmp eq i32 %42, 16777216
  br i1 %43, label %__cilk_parent_epilogue.exit, label %44

; <label>:44:                                     ; preds = %invoke.cont
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont, %44
  ret void

lpad:                                             ; preds = %entry
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = load atomic i32, i32* %1 acquire, align 8
  %48 = or i32 %47, 16
  store atomic i32 %48, i32* %1 release, align 8
  %49 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %46, i8** %49 release, align 8
  %50 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %51 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %50, i64 0, i32 9
  %54 = bitcast %__cilkrts_stack_frame** %53 to i64*
  store atomic i64 %52, i64* %54 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %55 = load atomic i32, i32* %1 acquire, align 8
  %56 = icmp eq i32 %55, 16777216
  br i1 %56, label %__cilk_parent_epilogue.exit3, label %57

; <label>:57:                                     ; preds = %lpad
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit3

__cilk_parent_epilogue.exit3:                     ; preds = %lpad, %57
  resume { i8*, i32 } %45
}

; Function Attrs: stealable uwtable
define linkonce_odr void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %this, i32 %rStart, i32 %rCount, i32 %rLength, i32 %cStart, i32 %cCount, i32 %cLength) local_unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = call %__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %__cilkrts_worker* %0, null
  br i1 %1, label %2, label %__cilk_parent_prologue.exit

; <label>:2:                                      ; preds = %entry
  %3 = call %__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilk_parent_prologue.exit

__cilk_parent_prologue.exit:                      ; preds = %entry, %2
  %.sink = phi i32 [ 16777344, %2 ], [ 16777216, %entry ]
  %4 = phi %__cilkrts_worker* [ %3, %2 ], [ %0, %entry ]
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %5 release, align 8
  %6 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %4, i64 0, i32 9
  %7 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %6 acquire, align 8
  %8 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %8 release, align 8
  %9 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %4, %__cilkrts_worker** %9 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %6 release, align 8
  %rStart.addr = alloca i32, align 4
  %rCount.addr = alloca i32, align 4
  %rLength.addr = alloca i32, align 4
  %cStart.addr = alloca i32, align 4
  %cCount.addr = alloca i32, align 4
  %cLength.addr = alloca i32, align 4
  %l1 = alloca i32, align 4
  %agg.captured = alloca %struct.anon.30, align 8
  %exn.slot = alloca i8*, align 8
  %l138 = alloca i32, align 4
  %agg.captured45 = alloca %struct.anon.31, align 8
  store i32 %rStart, i32* %rStart.addr, align 4, !tbaa !26
  store i32 %rCount, i32* %rCount.addr, align 4, !tbaa !26
  store i32 %rLength, i32* %rLength.addr, align 4, !tbaa !26
  store i32 %cStart, i32* %cStart.addr, align 4, !tbaa !26
  store i32 %cCount, i32* %cCount.addr, align 4, !tbaa !26
  store i32 %cLength, i32* %cLength.addr, align 4, !tbaa !26
  %cmp = icmp slt i32 %cCount, 64
  %cmp2 = icmp slt i32 %rCount, 64
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %__cilk_parent_prologue.exit
  %cmp3113 = icmp sgt i32 %rCount, 0
  br i1 %cmp3113, label %for.body.lr.ph, label %if.end52

for.body.lr.ph:                                   ; preds = %if.then
  %add = add nsw i32 %rCount, %rStart
  %add5 = add nsw i32 %cCount, %cStart
  %cmp6111 = icmp sgt i32 %cCount, 0
  %A = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 0
  %OA = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 2
  %B = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 1
  %OB = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 3
  %L = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 4
  %10 = sext i32 %cStart to i64
  %11 = sext i32 %cLength to i64
  %12 = sext i32 %add5 to i64
  %13 = sext i32 %rStart to i64
  %14 = sext i32 %rLength to i64
  %15 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup7
  %indvars.iv120 = phi i64 [ %13, %for.body.lr.ph ], [ %indvars.iv.next121, %for.cond.cleanup7 ]
  br i1 %cmp6111, label %for.body8.lr.ph, label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.body
  %16 = mul nsw i64 %indvars.iv120, %14
  br label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond.cleanup22, %for.body
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, 1
  %cmp3 = icmp slt i64 %indvars.iv.next121, %15
  br i1 %cmp3, label %for.body, label %if.end52

for.body8:                                        ; preds = %for.body8.lr.ph, %for.cond.cleanup22
  %indvars.iv = phi i64 [ %10, %for.body8.lr.ph ], [ %indvars.iv.next, %for.cond.cleanup22 ]
  %17 = add nsw i64 %indvars.iv, %16
  %18 = load i32*, i32** %L, align 8, !tbaa !173
  %arrayidx19 = getelementptr inbounds i32, i32* %18, i64 %17
  %19 = load i32, i32* %arrayidx19, align 4, !tbaa !26
  %cmp21107 = icmp sgt i32 %19, 0
  br i1 %cmp21107, label %for.body23.lr.ph, label %for.cond.cleanup22

for.body23.lr.ph:                                 ; preds = %for.body8
  %20 = load %struct.event*, %struct.event** %B, align 8, !tbaa !170
  %21 = load i32*, i32** %OB, align 8, !tbaa !172
  %22 = mul nsw i64 %indvars.iv, %11
  %23 = add nsw i64 %22, %indvars.iv120
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %23
  %24 = load i32, i32* %arrayidx13, align 4, !tbaa !26
  %idx.ext14 = sext i32 %24 to i64
  %add.ptr15 = getelementptr inbounds %struct.event, %struct.event* %20, i64 %idx.ext14
  %25 = load %struct.event*, %struct.event** %A, align 8, !tbaa !168
  %26 = load i32*, i32** %OA, align 8, !tbaa !171
  %arrayidx = getelementptr inbounds i32, i32* %26, i64 %17
  %27 = load i32, i32* %arrayidx, align 4, !tbaa !26
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %25, i64 %idx.ext
  %28 = add i32 %19, -1
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i64 %29, 1
  %min.iters.check = icmp ult i64 %30, 16
  br i1 %min.iters.check, label %for.body23.preheader, label %vector.memcheck

for.body23.preheader:                             ; preds = %middle.block, %vector.memcheck, %for.body23.lr.ph
  %k.0110.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body23.lr.ph ], [ %cast.crd, %middle.block ]
  %pb.0109.ph = phi %struct.event* [ %add.ptr15, %vector.memcheck ], [ %add.ptr15, %for.body23.lr.ph ], [ %ind.end134, %middle.block ]
  %pa.0108.ph = phi %struct.event* [ %add.ptr, %vector.memcheck ], [ %add.ptr, %for.body23.lr.ph ], [ %ind.end136, %middle.block ]
  %31 = sub i32 %19, %k.0110.ph
  %32 = sub i32 %28, %k.0110.ph
  %xtraiter = and i32 %31, 7
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body23.prol.loopexit, label %for.body23.prol.preheader

for.body23.prol.preheader:                        ; preds = %for.body23.preheader
  %33 = add nsw i32 %xtraiter, -1
  %scevgep153 = getelementptr %struct.event, %struct.event* %pb.0109.ph, i64 1
  br label %for.body23.prol

for.body23.prol:                                  ; preds = %for.body23.prol, %for.body23.prol.preheader
  %pb.0109.prol = phi %struct.event* [ %incdec.ptr24.prol, %for.body23.prol ], [ %pb.0109.ph, %for.body23.prol.preheader ]
  %pa.0108.prol = phi %struct.event* [ %incdec.ptr.prol, %for.body23.prol ], [ %pa.0108.ph, %for.body23.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body23.prol ], [ %xtraiter, %for.body23.prol.preheader ]
  %incdec.ptr.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0108.prol, i64 1
  %incdec.ptr24.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0109.prol, i64 1
  %34 = bitcast %struct.event* %pa.0108.prol to i64*
  %35 = bitcast %struct.event* %pb.0109.prol to i64*
  %36 = load i64, i64* %34, align 4
  store i64 %36, i64* %35, align 4
  %prol.iter.sub = add nsw i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body23.prol.loopexit.loopexit, label %for.body23.prol, !llvm.loop !300

for.body23.prol.loopexit.loopexit:                ; preds = %for.body23.prol
  %37 = zext i32 %33 to i64
  %scevgep154 = getelementptr %struct.event, %struct.event* %scevgep153, i64 %37
  %scevgep151 = getelementptr %struct.event, %struct.event* %pa.0108.ph, i64 1
  %scevgep152 = getelementptr %struct.event, %struct.event* %scevgep151, i64 %37
  %38 = add i32 %xtraiter, %k.0110.ph
  br label %for.body23.prol.loopexit

for.body23.prol.loopexit:                         ; preds = %for.body23.prol.loopexit.loopexit, %for.body23.preheader
  %k.0110.unr = phi i32 [ %k.0110.ph, %for.body23.preheader ], [ %38, %for.body23.prol.loopexit.loopexit ]
  %pb.0109.unr = phi %struct.event* [ %pb.0109.ph, %for.body23.preheader ], [ %scevgep154, %for.body23.prol.loopexit.loopexit ]
  %pa.0108.unr = phi %struct.event* [ %pa.0108.ph, %for.body23.preheader ], [ %scevgep152, %for.body23.prol.loopexit.loopexit ]
  %39 = icmp ult i32 %32, 7
  br i1 %39, label %for.cond.cleanup22, label %for.body23.preheader156

for.body23.preheader156:                          ; preds = %for.body23.prol.loopexit
  %40 = add i32 %19, -8
  %41 = sub i32 %40, %k.0110.unr
  %42 = and i32 %41, 8
  %lcmp.mod160 = icmp eq i32 %42, 0
  br i1 %lcmp.mod160, label %for.body23.prol161, label %for.body23.prol.loopexit158

for.body23.prol161:                               ; preds = %for.body23.preheader156
  %incdec.ptr.prol164 = getelementptr inbounds %struct.event, %struct.event* %pa.0108.unr, i64 1
  %incdec.ptr24.prol165 = getelementptr inbounds %struct.event, %struct.event* %pb.0109.unr, i64 1
  %43 = bitcast %struct.event* %pa.0108.unr to i64*
  %44 = bitcast %struct.event* %pb.0109.unr to i64*
  %45 = load i64, i64* %43, align 4
  store i64 %45, i64* %44, align 4
  %incdec.ptr.1.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0108.unr, i64 2
  %incdec.ptr24.1.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0109.unr, i64 2
  %46 = bitcast %struct.event* %incdec.ptr.prol164 to i64*
  %47 = bitcast %struct.event* %incdec.ptr24.prol165 to i64*
  %48 = load i64, i64* %46, align 4
  store i64 %48, i64* %47, align 4
  %incdec.ptr.2.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0108.unr, i64 3
  %incdec.ptr24.2.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0109.unr, i64 3
  %49 = bitcast %struct.event* %incdec.ptr.1.prol to i64*
  %50 = bitcast %struct.event* %incdec.ptr24.1.prol to i64*
  %51 = load i64, i64* %49, align 4
  store i64 %51, i64* %50, align 4
  %incdec.ptr.3.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0108.unr, i64 4
  %incdec.ptr24.3.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0109.unr, i64 4
  %52 = bitcast %struct.event* %incdec.ptr.2.prol to i64*
  %53 = bitcast %struct.event* %incdec.ptr24.2.prol to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %incdec.ptr.4.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0108.unr, i64 5
  %incdec.ptr24.4.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0109.unr, i64 5
  %55 = bitcast %struct.event* %incdec.ptr.3.prol to i64*
  %56 = bitcast %struct.event* %incdec.ptr24.3.prol to i64*
  %57 = load i64, i64* %55, align 4
  store i64 %57, i64* %56, align 4
  %incdec.ptr.5.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0108.unr, i64 6
  %incdec.ptr24.5.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0109.unr, i64 6
  %58 = bitcast %struct.event* %incdec.ptr.4.prol to i64*
  %59 = bitcast %struct.event* %incdec.ptr24.4.prol to i64*
  %60 = load i64, i64* %58, align 4
  store i64 %60, i64* %59, align 4
  %incdec.ptr.6.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0108.unr, i64 7
  %incdec.ptr24.6.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0109.unr, i64 7
  %61 = bitcast %struct.event* %incdec.ptr.5.prol to i64*
  %62 = bitcast %struct.event* %incdec.ptr24.5.prol to i64*
  %63 = load i64, i64* %61, align 4
  store i64 %63, i64* %62, align 4
  %incdec.ptr.7.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0108.unr, i64 8
  %incdec.ptr24.7.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0109.unr, i64 8
  %64 = bitcast %struct.event* %incdec.ptr.6.prol to i64*
  %65 = bitcast %struct.event* %incdec.ptr24.6.prol to i64*
  %66 = load i64, i64* %64, align 4
  store i64 %66, i64* %65, align 4
  %inc.7.prol = add nsw i32 %k.0110.unr, 8
  br label %for.body23.prol.loopexit158

for.body23.prol.loopexit158:                      ; preds = %for.body23.prol161, %for.body23.preheader156
  %k.0110.unr166.ph = phi i32 [ %inc.7.prol, %for.body23.prol161 ], [ %k.0110.unr, %for.body23.preheader156 ]
  %pb.0109.unr167.ph = phi %struct.event* [ %incdec.ptr24.7.prol, %for.body23.prol161 ], [ %pb.0109.unr, %for.body23.preheader156 ]
  %pa.0108.unr168.ph = phi %struct.event* [ %incdec.ptr.7.prol, %for.body23.prol161 ], [ %pa.0108.unr, %for.body23.preheader156 ]
  %67 = icmp ult i32 %41, 8
  br i1 %67, label %for.cond.cleanup22, label %for.body23.preheader156.new

for.body23.preheader156.new:                      ; preds = %for.body23.prol.loopexit158
  br label %for.body23

vector.memcheck:                                  ; preds = %for.body23.lr.ph
  %scevgep = getelementptr %struct.event, %struct.event* %20, i64 1
  %68 = add nsw i64 %idx.ext14, %29
  %scevgep127 = getelementptr %struct.event, %struct.event* %scevgep, i64 %68
  %scevgep130 = getelementptr %struct.event, %struct.event* %25, i64 1
  %69 = add nsw i64 %idx.ext, %29
  %scevgep131 = getelementptr %struct.event, %struct.event* %scevgep130, i64 %69
  %bound0 = icmp ult %struct.event* %add.ptr15, %scevgep131
  %bound1 = icmp ult %struct.event* %add.ptr, %scevgep127
  %memcheck.conflict = and i1 %bound1, %bound0
  br i1 %memcheck.conflict, label %for.body23.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %70 = and i32 %19, 15
  %n.mod.vf = zext i32 %70 to i64
  %n.vec = sub nsw i64 %30, %n.mod.vf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr %struct.event, %struct.event* %add.ptr15, i64 %index
  %next.gep143 = getelementptr %struct.event, %struct.event* %add.ptr, i64 %index
  %71 = bitcast %struct.event* %next.gep143 to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %71, align 4, !alias.scope !301
  %72 = getelementptr %struct.event, %struct.event* %next.gep143, i64 4
  %73 = bitcast %struct.event* %72 to <4 x i64>*
  %wide.load147 = load <4 x i64>, <4 x i64>* %73, align 4, !alias.scope !301
  %74 = getelementptr %struct.event, %struct.event* %next.gep143, i64 8
  %75 = bitcast %struct.event* %74 to <4 x i64>*
  %wide.load148 = load <4 x i64>, <4 x i64>* %75, align 4, !alias.scope !301
  %76 = getelementptr %struct.event, %struct.event* %next.gep143, i64 12
  %77 = bitcast %struct.event* %76 to <4 x i64>*
  %wide.load149 = load <4 x i64>, <4 x i64>* %77, align 4, !alias.scope !301
  %78 = bitcast %struct.event* %next.gep to <4 x i64>*
  store <4 x i64> %wide.load, <4 x i64>* %78, align 4, !alias.scope !304, !noalias !301
  %79 = getelementptr %struct.event, %struct.event* %next.gep, i64 4
  %80 = bitcast %struct.event* %79 to <4 x i64>*
  store <4 x i64> %wide.load147, <4 x i64>* %80, align 4, !alias.scope !304, !noalias !301
  %81 = getelementptr %struct.event, %struct.event* %next.gep, i64 8
  %82 = bitcast %struct.event* %81 to <4 x i64>*
  store <4 x i64> %wide.load148, <4 x i64>* %82, align 4, !alias.scope !304, !noalias !301
  %83 = getelementptr %struct.event, %struct.event* %next.gep, i64 12
  %84 = bitcast %struct.event* %83 to <4 x i64>*
  store <4 x i64> %wide.load149, <4 x i64>* %84, align 4, !alias.scope !304, !noalias !301
  %index.next = add i64 %index, 16
  %85 = icmp eq i64 %index.next, %n.vec
  br i1 %85, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %ind.end134 = getelementptr %struct.event, %struct.event* %add.ptr15, i64 %n.vec
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end136 = getelementptr %struct.event, %struct.event* %add.ptr, i64 %n.vec
  %cmp.n = icmp eq i32 %70, 0
  br i1 %cmp.n, label %for.cond.cleanup22, label %for.body23.preheader

for.cond.cleanup22:                               ; preds = %for.body23.prol.loopexit158, %for.body23, %for.body23.prol.loopexit, %middle.block, %for.body8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp6 = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.body23:                                       ; preds = %for.body23, %for.body23.preheader156.new
  %k.0110 = phi i32 [ %k.0110.unr166.ph, %for.body23.preheader156.new ], [ %inc.7.1, %for.body23 ]
  %pb.0109 = phi %struct.event* [ %pb.0109.unr167.ph, %for.body23.preheader156.new ], [ %incdec.ptr24.7.1, %for.body23 ]
  %pa.0108 = phi %struct.event* [ %pa.0108.unr168.ph, %for.body23.preheader156.new ], [ %incdec.ptr.7.1, %for.body23 ]
  %incdec.ptr = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 1
  %incdec.ptr24 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 1
  %86 = bitcast %struct.event* %pa.0108 to i64*
  %87 = bitcast %struct.event* %pb.0109 to i64*
  %88 = load i64, i64* %86, align 4
  store i64 %88, i64* %87, align 4
  %incdec.ptr.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 2
  %incdec.ptr24.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 2
  %89 = bitcast %struct.event* %incdec.ptr to i64*
  %90 = bitcast %struct.event* %incdec.ptr24 to i64*
  %91 = load i64, i64* %89, align 4
  store i64 %91, i64* %90, align 4
  %incdec.ptr.2 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 3
  %incdec.ptr24.2 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 3
  %92 = bitcast %struct.event* %incdec.ptr.1 to i64*
  %93 = bitcast %struct.event* %incdec.ptr24.1 to i64*
  %94 = load i64, i64* %92, align 4
  store i64 %94, i64* %93, align 4
  %incdec.ptr.3 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 4
  %incdec.ptr24.3 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 4
  %95 = bitcast %struct.event* %incdec.ptr.2 to i64*
  %96 = bitcast %struct.event* %incdec.ptr24.2 to i64*
  %97 = load i64, i64* %95, align 4
  store i64 %97, i64* %96, align 4
  %incdec.ptr.4 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 5
  %incdec.ptr24.4 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 5
  %98 = bitcast %struct.event* %incdec.ptr.3 to i64*
  %99 = bitcast %struct.event* %incdec.ptr24.3 to i64*
  %100 = load i64, i64* %98, align 4
  store i64 %100, i64* %99, align 4
  %incdec.ptr.5 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 6
  %incdec.ptr24.5 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 6
  %101 = bitcast %struct.event* %incdec.ptr.4 to i64*
  %102 = bitcast %struct.event* %incdec.ptr24.4 to i64*
  %103 = load i64, i64* %101, align 4
  store i64 %103, i64* %102, align 4
  %incdec.ptr.6 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 7
  %incdec.ptr24.6 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 7
  %104 = bitcast %struct.event* %incdec.ptr.5 to i64*
  %105 = bitcast %struct.event* %incdec.ptr24.5 to i64*
  %106 = load i64, i64* %104, align 4
  store i64 %106, i64* %105, align 4
  %incdec.ptr.7 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 8
  %incdec.ptr24.7 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 8
  %107 = bitcast %struct.event* %incdec.ptr.6 to i64*
  %108 = bitcast %struct.event* %incdec.ptr24.6 to i64*
  %109 = load i64, i64* %107, align 4
  store i64 %109, i64* %108, align 4
  %incdec.ptr.1169 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 9
  %incdec.ptr24.1170 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 9
  %110 = bitcast %struct.event* %incdec.ptr.7 to i64*
  %111 = bitcast %struct.event* %incdec.ptr24.7 to i64*
  %112 = load i64, i64* %110, align 4
  store i64 %112, i64* %111, align 4
  %incdec.ptr.1.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 10
  %incdec.ptr24.1.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 10
  %113 = bitcast %struct.event* %incdec.ptr.1169 to i64*
  %114 = bitcast %struct.event* %incdec.ptr24.1170 to i64*
  %115 = load i64, i64* %113, align 4
  store i64 %115, i64* %114, align 4
  %incdec.ptr.2.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 11
  %incdec.ptr24.2.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 11
  %116 = bitcast %struct.event* %incdec.ptr.1.1 to i64*
  %117 = bitcast %struct.event* %incdec.ptr24.1.1 to i64*
  %118 = load i64, i64* %116, align 4
  store i64 %118, i64* %117, align 4
  %incdec.ptr.3.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 12
  %incdec.ptr24.3.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 12
  %119 = bitcast %struct.event* %incdec.ptr.2.1 to i64*
  %120 = bitcast %struct.event* %incdec.ptr24.2.1 to i64*
  %121 = load i64, i64* %119, align 4
  store i64 %121, i64* %120, align 4
  %incdec.ptr.4.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 13
  %incdec.ptr24.4.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 13
  %122 = bitcast %struct.event* %incdec.ptr.3.1 to i64*
  %123 = bitcast %struct.event* %incdec.ptr24.3.1 to i64*
  %124 = load i64, i64* %122, align 4
  store i64 %124, i64* %123, align 4
  %incdec.ptr.5.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 14
  %incdec.ptr24.5.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 14
  %125 = bitcast %struct.event* %incdec.ptr.4.1 to i64*
  %126 = bitcast %struct.event* %incdec.ptr24.4.1 to i64*
  %127 = load i64, i64* %125, align 4
  store i64 %127, i64* %126, align 4
  %incdec.ptr.6.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 15
  %incdec.ptr24.6.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 15
  %128 = bitcast %struct.event* %incdec.ptr.5.1 to i64*
  %129 = bitcast %struct.event* %incdec.ptr24.5.1 to i64*
  %130 = load i64, i64* %128, align 4
  store i64 %130, i64* %129, align 4
  %incdec.ptr.7.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0108, i64 16
  %incdec.ptr24.7.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0109, i64 16
  %131 = bitcast %struct.event* %incdec.ptr.6.1 to i64*
  %132 = bitcast %struct.event* %incdec.ptr24.6.1 to i64*
  %133 = load i64, i64* %131, align 4
  store i64 %133, i64* %132, align 4
  %inc.7.1 = add nsw i32 %k.0110, 16
  %exitcond.7.1 = icmp eq i32 %inc.7.1, %19
  br i1 %exitcond.7.1, label %for.cond.cleanup22, label %for.body23, !llvm.loop !307

if.else:                                          ; preds = %__cilk_parent_prologue.exit
  %cmp31 = icmp sgt i32 %cCount, %rCount
  br i1 %cmp31, label %if.then32, label %if.else37

if.then32:                                        ; preds = %if.else
  %134 = bitcast i32* %l1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %134) #2
  %div = sdiv i32 %cCount, 2
  store i32 %div, i32* %l1, align 4, !tbaa !26
  %sub = sub nsw i32 %cCount, %div
  %135 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %136 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %135, i16* nonnull %136) #2
  %137 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %138 = call i8* @llvm.frameaddress(i32 0)
  %139 = getelementptr inbounds [5 x i8*], [5 x i8*]* %137, i64 0, i64 0
  store volatile i8* %138, i8** %139, align 8
  %140 = call i8* @llvm.stacksave()
  %141 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %140, i8** %141, align 8
  %142 = bitcast [5 x i8*]* %137 to i8*
  %143 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %142) #20
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %cilk.spawn.helpercall, label %cilk.spawn.continuation

cilk.spawn.helpercall:                            ; preds = %if.then32
  %145 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %agg.captured, i64 0, i32 0
  store %struct.blockTrans* %this, %struct.blockTrans** %145, align 8, !tbaa !308
  %146 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %agg.captured, i64 0, i32 1
  store i32* %rStart.addr, i32** %146, align 8, !tbaa !24
  %147 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %agg.captured, i64 0, i32 2
  store i32* %rCount.addr, i32** %147, align 8, !tbaa !24
  %148 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %agg.captured, i64 0, i32 3
  store i32* %rLength.addr, i32** %148, align 8, !tbaa !24
  %149 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %agg.captured, i64 0, i32 4
  store i32* %cStart.addr, i32** %149, align 8, !tbaa !24
  %150 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %agg.captured, i64 0, i32 5
  store i32* %l1, i32** %150, align 8, !tbaa !24
  %151 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %agg.captured, i64 0, i32 6
  store i32* %cLength.addr, i32** %151, align 8, !tbaa !24
  invoke fastcc void @__cilk_spawn_helper.39(%struct.anon.30* nonnull %agg.captured)
          to label %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge unwind label %lpad

cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge: ; preds = %cilk.spawn.helpercall
  %.pre124 = load i32, i32* %rCount.addr, align 4, !tbaa !26
  %.pre125 = load i32, i32* %l1, align 4, !tbaa !26
  br label %cilk.spawn.continuation

cilk.spawn.continuation:                          ; preds = %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge, %if.then32
  %152 = phi i32 [ %.pre125, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %div, %if.then32 ]
  %153 = phi i32 [ %.pre124, %cilk.spawn.helpercall.cilk.spawn.continuation_crit_edge ], [ %rCount, %if.then32 ]
  %154 = load i32, i32* %rStart.addr, align 4, !tbaa !26
  %155 = load i32, i32* %rLength.addr, align 4, !tbaa !26
  %156 = load i32, i32* %cStart.addr, align 4, !tbaa !26
  %add34 = add nsw i32 %156, %152
  %157 = load i32, i32* %cLength.addr, align 4, !tbaa !26
  invoke void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %this, i32 %154, i32 %153, i32 %155, i32 %add34, i32 %sub, i32 %157)
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %cilk.spawn.continuation
  %158 = load atomic i32, i32* %5 acquire, align 8
  %159 = and i32 %158, 2
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %invoke.cont36, label %cilk.sync.savestate.i86

cilk.sync.savestate.i86:                          ; preds = %invoke.cont35
  %161 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i80 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %161, i64 0, i32 12, i32 0
  %162 = bitcast i64* %.elt.i80 to <2 x i64>*
  %163 = load <2 x i64>, <2 x i64>* %162, align 8
  %.repack.i84 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %164 = bitcast i64* %.repack.i84 to <2 x i64>*
  store <2 x i64> %163, <2 x i64>* %164, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %135, i16* nonnull %136) #2
  store volatile i8* %138, i8** %139, align 8
  %165 = call i8* @llvm.stacksave()
  store volatile i8* %165, i8** %141, align 8
  %166 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %142) #20
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %cilk.sync.runtimecall.i87, label %cilk.sync.excepting.i88

cilk.sync.runtimecall.i87:                        ; preds = %cilk.sync.savestate.i86
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont36 unwind label %lpad

cilk.sync.excepting.i88:                          ; preds = %cilk.sync.savestate.i86
  %168 = load atomic i32, i32* %5 acquire, align 8
  %169 = and i32 %168, 16
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %invoke.cont36, label %cilk.sync.rethrow.i89

cilk.sync.rethrow.i89:                            ; preds = %cilk.sync.excepting.i88
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc91 unwind label %lpad

.noexc91:                                         ; preds = %cilk.sync.rethrow.i89
  unreachable

invoke.cont36:                                    ; preds = %cilk.sync.excepting.i88, %invoke.cont35, %cilk.sync.runtimecall.i87
  %171 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %172 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %171, i64 0, i32 12, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134) #2
  br label %if.end52

lpad:                                             ; preds = %cilk.sync.rethrow.i89, %cilk.sync.runtimecall.i87, %cilk.spawn.continuation, %cilk.spawn.helpercall
  %175 = landingpad { i8*, i32 }
          cleanup
  %176 = extractvalue { i8*, i32 } %175, 0
  store i8* %176, i8** %exn.slot, align 8
  %177 = extractvalue { i8*, i32 } %175, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134) #2
  br label %ehcleanup

if.else37:                                        ; preds = %if.else
  %178 = bitcast i32* %l138 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %178) #2
  %div39 = sdiv i32 %rCount, 2
  store i32 %div39, i32* %l138, align 4, !tbaa !26
  %sub42 = sub nsw i32 %rCount, %div39
  %179 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %180 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %179, i16* nonnull %180) #2
  %181 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %182 = call i8* @llvm.frameaddress(i32 0)
  %183 = getelementptr inbounds [5 x i8*], [5 x i8*]* %181, i64 0, i64 0
  store volatile i8* %182, i8** %183, align 8
  %184 = call i8* @llvm.stacksave()
  %185 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %184, i8** %185, align 8
  %186 = bitcast [5 x i8*]* %181 to i8*
  %187 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %186) #20
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %cilk.spawn.helpercall44, label %cilk.spawn.continuation48

cilk.spawn.helpercall44:                          ; preds = %if.else37
  %189 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %agg.captured45, i64 0, i32 0
  store %struct.blockTrans* %this, %struct.blockTrans** %189, align 8, !tbaa !308
  %190 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %agg.captured45, i64 0, i32 1
  store i32* %rStart.addr, i32** %190, align 8, !tbaa !24
  %191 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %agg.captured45, i64 0, i32 2
  store i32* %l138, i32** %191, align 8, !tbaa !24
  %192 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %agg.captured45, i64 0, i32 3
  store i32* %rLength.addr, i32** %192, align 8, !tbaa !24
  %193 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %agg.captured45, i64 0, i32 4
  store i32* %cStart.addr, i32** %193, align 8, !tbaa !24
  %194 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %agg.captured45, i64 0, i32 5
  store i32* %cCount.addr, i32** %194, align 8, !tbaa !24
  %195 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %agg.captured45, i64 0, i32 6
  store i32* %cLength.addr, i32** %195, align 8, !tbaa !24
  %196 = bitcast %struct.anon.31* %agg.captured45 to %struct.anon.30*
  invoke fastcc void @__cilk_spawn_helper.39(%struct.anon.30* nonnull %196)
          to label %cilk.spawn.helpercall44.cilk.spawn.continuation48_crit_edge unwind label %lpad46

cilk.spawn.helpercall44.cilk.spawn.continuation48_crit_edge: ; preds = %cilk.spawn.helpercall44
  %.pre = load i32, i32* %l138, align 4, !tbaa !26
  %.pre123 = load i32, i32* %cCount.addr, align 4, !tbaa !26
  br label %cilk.spawn.continuation48

cilk.spawn.continuation48:                        ; preds = %cilk.spawn.helpercall44.cilk.spawn.continuation48_crit_edge, %if.else37
  %197 = phi i32 [ %.pre123, %cilk.spawn.helpercall44.cilk.spawn.continuation48_crit_edge ], [ %cCount, %if.else37 ]
  %198 = phi i32 [ %.pre, %cilk.spawn.helpercall44.cilk.spawn.continuation48_crit_edge ], [ %div39, %if.else37 ]
  %199 = load i32, i32* %rStart.addr, align 4, !tbaa !26
  %add49 = add nsw i32 %199, %198
  %200 = load i32, i32* %rLength.addr, align 4, !tbaa !26
  %201 = load i32, i32* %cStart.addr, align 4, !tbaa !26
  %202 = load i32, i32* %cLength.addr, align 4, !tbaa !26
  invoke void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %this, i32 %add49, i32 %sub42, i32 %200, i32 %201, i32 %197, i32 %202)
          to label %invoke.cont50 unwind label %lpad46

invoke.cont50:                                    ; preds = %cilk.spawn.continuation48
  %203 = load atomic i32, i32* %5 acquire, align 8
  %204 = and i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %invoke.cont51, label %cilk.sync.savestate.i100

cilk.sync.savestate.i100:                         ; preds = %invoke.cont50
  %206 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i94 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %206, i64 0, i32 12, i32 0
  %207 = bitcast i64* %.elt.i94 to <2 x i64>*
  %208 = load <2 x i64>, <2 x i64>* %207, align 8
  %.repack.i98 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %209 = bitcast i64* %.repack.i98 to <2 x i64>*
  store <2 x i64> %208, <2 x i64>* %209, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %179, i16* nonnull %180) #2
  store volatile i8* %182, i8** %183, align 8
  %210 = call i8* @llvm.stacksave()
  store volatile i8* %210, i8** %185, align 8
  %211 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %186) #20
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %cilk.sync.runtimecall.i101, label %cilk.sync.excepting.i102

cilk.sync.runtimecall.i101:                       ; preds = %cilk.sync.savestate.i100
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont51 unwind label %lpad46

cilk.sync.excepting.i102:                         ; preds = %cilk.sync.savestate.i100
  %213 = load atomic i32, i32* %5 acquire, align 8
  %214 = and i32 %213, 16
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %invoke.cont51, label %cilk.sync.rethrow.i103

cilk.sync.rethrow.i103:                           ; preds = %cilk.sync.excepting.i102
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc105 unwind label %lpad46

.noexc105:                                        ; preds = %cilk.sync.rethrow.i103
  unreachable

invoke.cont51:                                    ; preds = %cilk.sync.excepting.i102, %invoke.cont50, %cilk.sync.runtimecall.i101
  %216 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %217 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %216, i64 0, i32 12, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %217, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %178) #2
  br label %if.end52

lpad46:                                           ; preds = %cilk.spawn.helpercall44, %cilk.sync.rethrow.i103, %cilk.sync.runtimecall.i101, %cilk.spawn.continuation48
  %220 = landingpad { i8*, i32 }
          cleanup
  %221 = extractvalue { i8*, i32 } %220, 0
  store i8* %221, i8** %exn.slot, align 8
  %222 = extractvalue { i8*, i32 } %220, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %178) #2
  br label %ehcleanup

if.end52:                                         ; preds = %for.cond.cleanup7, %if.then, %invoke.cont36, %invoke.cont51
  %223 = load atomic i32, i32* %5 acquire, align 8
  %224 = and i32 %223, 2
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %invoke.cont54, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %if.end52
  %226 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %.elt.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %226, i64 0, i32 12, i32 0
  %227 = bitcast i64* %.elt.i to <2 x i64>*
  %228 = load <2 x i64>, <2 x i64>* %227, align 8
  %.repack.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %229 = bitcast i64* %.repack.i to <2 x i64>*
  store <2 x i64> %228, <2 x i64>* %229, align 8
  %230 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %231 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %230, i16* nonnull %231) #2
  %232 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %233 = call i8* @llvm.frameaddress(i32 0)
  %234 = getelementptr inbounds [5 x i8*], [5 x i8*]* %232, i64 0, i64 0
  store volatile i8* %233, i8** %234, align 8
  %235 = call i8* @llvm.stacksave()
  %236 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %235, i8** %236, align 8
  %237 = bitcast [5 x i8*]* %232 to i8*
  %238 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %237) #20
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  invoke void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf)
          to label %invoke.cont54 unwind label %lpad53

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %240 = load atomic i32, i32* %5 acquire, align 8
  %241 = and i32 %240, 16
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %invoke.cont54, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  invoke void @__cilkrts_rethrow(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #21
          to label %.noexc78 unwind label %lpad53

.noexc78:                                         ; preds = %cilk.sync.rethrow.i
  unreachable

invoke.cont54:                                    ; preds = %cilk.sync.excepting.i, %if.end52, %cilk.sync.runtimecall.i
  %243 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %244 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %243, i64 0, i32 12, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %244, align 8
  %247 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %248 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %247, i64 0, i32 9
  %251 = bitcast %__cilkrts_stack_frame** %250 to i64*
  store atomic i64 %249, i64* %251 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %252 = load atomic i32, i32* %5 acquire, align 8
  %253 = icmp eq i32 %252, 16777216
  br i1 %253, label %__cilk_parent_epilogue.exit76, label %254

; <label>:254:                                    ; preds = %invoke.cont54
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit76

__cilk_parent_epilogue.exit76:                    ; preds = %invoke.cont54, %254
  ret void

lpad53:                                           ; preds = %cilk.sync.rethrow.i, %cilk.sync.runtimecall.i
  %255 = landingpad { i8*, i32 }
          cleanup
  %256 = extractvalue { i8*, i32 } %255, 0
  store i8* %256, i8** %exn.slot, align 8
  %257 = extractvalue { i8*, i32 } %255, 1
  br label %ehcleanup55

ehcleanup:                                        ; preds = %lpad46, %lpad
  %ehselector.slot.0 = phi i32 [ %177, %lpad ], [ %222, %lpad46 ]
  %258 = load atomic i32, i32* %5 acquire, align 8
  %259 = and i32 %258, 2
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %__cilk_excepting_sync.exit, label %setjmp.test.i

setjmp.test.i:                                    ; preds = %ehcleanup
  %261 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %262 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %261, i16* nonnull %262) #2
  %263 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %264 = call i8* @llvm.frameaddress(i32 0) #2
  %265 = getelementptr inbounds [5 x i8*], [5 x i8*]* %263, i64 0, i64 0
  store volatile i8* %264, i8** %265, align 8
  %266 = call i8* @llvm.stacksave() #2
  %267 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %266, i8** %267, align 8
  %268 = bitcast [5 x i8*]* %263 to i8*
  %269 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %268) #23
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %setjmp.if.i, label %setjmp.test.setjmp.cont_crit_edge.i

setjmp.test.setjmp.cont_crit_edge.i:              ; preds = %setjmp.test.i
  %.pre.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %.pre1.i = bitcast i8** %.pre.i to i64*
  %.pre3.i = bitcast i8** %exn.slot to i64*
  br label %setjmp.cont.i

setjmp.if.i:                                      ; preds = %setjmp.test.i
  %271 = bitcast i8** %exn.slot to i64*
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  %274 = bitcast i8** %273 to i64*
  store i64 %272, i64* %274, align 8
  %275 = load atomic i32, i32* %5 acquire, align 8
  %276 = or i32 %275, 16
  store atomic i32 %276, i32* %5 release, align 8
  call void @__cilkrts_sync(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %setjmp.cont.i

setjmp.cont.i:                                    ; preds = %setjmp.if.i, %setjmp.test.setjmp.cont_crit_edge.i
  %.pre-phi4.i = phi i64* [ %.pre3.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %271, %setjmp.if.i ]
  %.pre-phi2.i = phi i64* [ %.pre1.i, %setjmp.test.setjmp.cont_crit_edge.i ], [ %274, %setjmp.if.i ]
  %277 = load atomic i32, i32* %5 acquire, align 8
  %278 = and i32 %277, -17
  store atomic i32 %278, i32* %5 release, align 8
  %279 = load i64, i64* %.pre-phi2.i, align 8
  store i64 %279, i64* %.pre-phi4.i, align 8
  br label %__cilk_excepting_sync.exit

__cilk_excepting_sync.exit:                       ; preds = %ehcleanup, %setjmp.cont.i
  %280 = load %__cilkrts_worker*, %__cilkrts_worker** %9, align 8
  %281 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %280, i64 0, i32 12, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %281, align 8
  br label %ehcleanup55

ehcleanup55:                                      ; preds = %__cilk_excepting_sync.exit, %lpad53
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %__cilk_excepting_sync.exit ], [ %257, %lpad53 ]
  %284 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %9 acquire, align 8
  %285 = bitcast %__cilkrts_stack_frame** %8 to i64*
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %284, i64 0, i32 9
  %288 = bitcast %__cilkrts_stack_frame** %287 to i64*
  store atomic i64 %286, i64* %288 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %8 release, align 8
  %289 = load atomic i32, i32* %5 acquire, align 8
  %290 = icmp eq i32 %289, 16777216
  br i1 %290, label %__cilk_parent_epilogue.exit, label %291

; <label>:291:                                    ; preds = %ehcleanup55
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %ehcleanup55, %291
  %exn = load i8*, i8** %exn.slot, align 8
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val56 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val56
}

; Function Attrs: noinline uwtable
define internal fastcc void @__cilk_spawn_helper.39(%struct.anon.30* nocapture readonly %__context) unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %__cilkrts_stack_frame, align 8
  %0 = tail call %__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %__cilkrts_stack_frame* %3, %__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %__cilkrts_worker* %0, %__cilkrts_worker** %5 release, align 8
  store atomic %__cilkrts_stack_frame* %__cilkrts_sf, %__cilkrts_stack_frame** %2 release, align 8
  %6 = load %__cilkrts_worker*, %__cilkrts_worker** %5, align 8
  %7 = load %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %4, align 8
  %8 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 0
  %9 = load atomic %__cilkrts_stack_frame**, %__cilkrts_stack_frame*** %8 acquire, align 8
  %.elt.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 0
  %.unpack.i.i = load i64, i64* %.elt.i.i, align 8
  %.elt1.i.i = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %6, i64 0, i32 12, i32 1
  %10 = bitcast %__cilkrts_pedigree** %.elt1.i.i to i64*
  %.unpack26.i.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9
  %.repack.i.i = getelementptr inbounds %__cilkrts_pedigree, %__cilkrts_pedigree* %11, i64 0, i32 0
  store i64 %.unpack.i.i, i64* %.repack.i.i, align 8
  %.repack4.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 1
  %12 = bitcast %__cilkrts_pedigree** %.repack4.i.i to i64*
  store i64 %.unpack26.i.i, i64* %12, align 8
  %.repack11.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 0
  store i64 %.unpack.i.i, i64* %.repack11.i.i, align 8
  %.repack13.i.i = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %7, i64 0, i32 9, i32 1
  %13 = bitcast %__cilkrts_pedigree** %.repack13.i.i to i64*
  store i64 %.unpack26.i.i, i64* %13, align 8
  store atomic i64 0, i64* %.elt.i.i release, align 8
  store atomic %__cilkrts_pedigree* %11, %__cilkrts_pedigree** %.elt1.i.i release, align 8
  fence release
  store volatile %__cilkrts_stack_frame* %7, %__cilkrts_stack_frame** %9, align 8
  %14 = getelementptr %__cilkrts_stack_frame*, %__cilkrts_stack_frame** %9, i64 1
  store atomic %__cilkrts_stack_frame** %14, %__cilkrts_stack_frame*** %8 release, align 8
  %15 = load atomic i32, i32* %1 acquire, align 8
  %16 = or i32 %15, 4
  store atomic i32 %16, i32* %1 release, align 8
  %17 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %__context, i64 0, i32 0
  %18 = load %struct.blockTrans*, %struct.blockTrans** %17, align 8, !tbaa !308
  %19 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %__context, i64 0, i32 1
  %20 = load i32*, i32** %19, align 8, !tbaa !310
  %21 = load i32, i32* %20, align 4, !tbaa !26
  %22 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %__context, i64 0, i32 2
  %23 = load i32*, i32** %22, align 8, !tbaa !311
  %24 = load i32, i32* %23, align 4, !tbaa !26
  %25 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %__context, i64 0, i32 3
  %26 = load i32*, i32** %25, align 8, !tbaa !312
  %27 = load i32, i32* %26, align 4, !tbaa !26
  %28 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %__context, i64 0, i32 4
  %29 = load i32*, i32** %28, align 8, !tbaa !313
  %30 = load i32, i32* %29, align 4, !tbaa !26
  %31 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %__context, i64 0, i32 5
  %32 = load i32*, i32** %31, align 8, !tbaa !314
  %33 = load i32, i32* %32, align 4, !tbaa !26
  %34 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %__context, i64 0, i32 6
  %35 = load i32*, i32** %34, align 8, !tbaa !315
  %36 = load i32, i32* %35, align 4, !tbaa !26
  invoke void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %37 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %38 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %37, i64 0, i32 9
  %41 = bitcast %__cilkrts_stack_frame** %40 to i64*
  store atomic i64 %39, i64* %41 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %42 = load atomic i32, i32* %1 acquire, align 8
  %43 = icmp eq i32 %42, 16777216
  br i1 %43, label %__cilk_parent_epilogue.exit, label %44

; <label>:44:                                     ; preds = %invoke.cont
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont, %44
  ret void

lpad:                                             ; preds = %entry
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = load atomic i32, i32* %1 acquire, align 8
  %48 = or i32 %47, 16
  store atomic i32 %48, i32* %1 release, align 8
  %49 = getelementptr inbounds %__cilkrts_stack_frame, %__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %46, i8** %49 release, align 8
  %50 = load atomic %__cilkrts_worker*, %__cilkrts_worker** %5 acquire, align 8
  %51 = bitcast %__cilkrts_stack_frame** %4 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %__cilkrts_worker, %__cilkrts_worker* %50, i64 0, i32 9
  %54 = bitcast %__cilkrts_stack_frame** %53 to i64*
  store atomic i64 %52, i64* %54 release, align 8
  store atomic %__cilkrts_stack_frame* null, %__cilkrts_stack_frame** %4 release, align 8
  %55 = load atomic i32, i32* %1 acquire, align 8
  %56 = icmp eq i32 %55, 16777216
  br i1 %56, label %__cilk_parent_epilogue.exit3, label %57

; <label>:57:                                     ; preds = %lpad
  call void @__cilkrts_leave_frame(%__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit3

__cilk_parent_epilogue.exit3:                     ; preds = %lpad, %57
  resume { i8*, i32 } %45
}

declare i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_kdTree.C() #6 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  store double 0.000000e+00, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !154
  store double 0.000000e+00, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 2), align 8, !tbaa !316
  store i8 0, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !140
  store i64 0, i64* bitcast (%struct.timezone* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5) to i64*), align 4
  %call.i = tail call i32 @mallopt(i32 -4, i32 0) #2
  %call.i1 = tail call i32 @mallopt(i32 -1, i32 -1) #2
  ret void
}

declare double @sqrt(double) local_unnamed_addr

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #17

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { stealable uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone }
attributes #13 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind readnone speculatable }
attributes #18 = { builtin }
attributes #19 = { builtin nounwind }
attributes #20 = { returns_twice }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind returns_twice }

!cilk.spawn = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9}
!cilk.sync = !{!10, !11}
!llvm.module.flags = !{!12}
!llvm.ident = !{!13}

!0 = !{void (%struct.anon.2*)* @__cilk_spawn_helper}
!1 = !{void (%struct.anon.3*)* @__cilk_spawn_helper.6}
!2 = !{void (%struct.anon.4*)* @__cilk_spawn_helper.7}
!3 = !{void (%struct.anon.9*)* @__cilk_spawn_helper.23}
!4 = !{void (%struct.anon.23*)* @__cilk_spawn_helper.33}
!5 = distinct !{null}
!6 = !{void (%struct.anon.28*)* @__cilk_spawn_helper.37}
!7 = distinct !{null}
!8 = !{void (%struct.anon.30*)* @__cilk_spawn_helper.39}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 6.0.0 (git@github.com:wsmoses/Tapir-Clang.git 0a849e34ee83a0b90f3d0bc49dec81f1cb4bbcb8) (git@github.com:wsmoses/Tapir-LLVM.git 96678e3d5514d106ada2e3288c5a64be476f3da1)"}
!14 = !{!15, !16, i64 4}
!15 = !{!"_ZTS5range", !16, i64 0, !16, i64 4}
!16 = !{!"float", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!15, !16, i64 0}
!20 = !{!21, !22, i64 4}
!21 = !{!"_ZTS5event", !16, i64 0, !22, i64 4}
!22 = !{!"int", !17, i64 0}
!23 = !{!21, !16, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !17, i64 0}
!26 = !{!22, !22, i64 0}
!27 = !{!16, !16, i64 0}
!28 = !{!29, !25, i64 0}
!29 = !{!"_ZTSZ7bestCutP5event5rangeS1_S1_iE3$_0", !25, i64 0, !25, i64 8, !25, i64 16}
!30 = !{!29, !25, i64 16}
!31 = !{!29, !25, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = distinct !{!41, !40}
!42 = !{!43, !25, i64 0}
!43 = !{!"_ZTSZ7bestCutP5event5rangeS1_S1_iE3$_1", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56}
!44 = !{!43, !25, i64 8}
!45 = !{!43, !25, i64 16}
!46 = !{!43, !25, i64 24}
!47 = !{!43, !25, i64 32}
!48 = !{!43, !25, i64 40}
!49 = !{!43, !25, i64 48}
!50 = !{!43, !25, i64 56}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55}
!55 = distinct !{!55, !53}
!56 = !{!57}
!57 = distinct !{!57, !53}
!58 = !{!59}
!59 = distinct !{!59, !53}
!60 = !{!17, !17, i64 0}
!61 = !{!62}
!62 = distinct !{!62, !53}
!63 = !{!64, !52, !55, !57}
!64 = distinct !{!64, !53}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_Z17splitEventsSerialP5rangeP5eventfi: %agg.result"}
!69 = distinct !{!69, !"_Z17splitEventsSerialP5rangeP5eventfi"}
!70 = !{!71, !25, i64 0}
!71 = !{!"_ZTSZ11splitEventsP5rangeP5eventfiE3$_2", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!72 = !{!71, !25, i64 8}
!73 = !{!71, !25, i64 24}
!74 = !{!71, !25, i64 32}
!75 = !{!71, !25, i64 16}
!76 = !{!71, !25, i64 40}
!77 = !{!78, !78, i64 0}
!78 = !{!"bool", !17, i64 0}
!79 = !{!80, !16, i64 0}
!80 = !{!"_ZTS7cutInfo", !16, i64 0, !16, i64 4, !22, i64 8, !22, i64 12}
!81 = !{!80, !16, i64 4}
!82 = !{!80, !22, i64 8}
!83 = !{!80, !22, i64 12}
!84 = !{!85, !85, i64 0}
!85 = !{!"vtable pointer", !18, i64 0}
!86 = !{!87, !25, i64 240}
!87 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 216, !17, i64 224, !78, i64 225, !25, i64 232, !25, i64 240, !25, i64 248, !25, i64 256}
!88 = !{!89, !17, i64 56}
!89 = !{!"_ZTSSt5ctypeIcE", !25, i64 16, !78, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !17, i64 56, !17, i64 57, !17, i64 313, !17, i64 569}
!90 = !{!91, !25, i64 0}
!91 = !{!"_ZTS8treeNode", !25, i64 0, !25, i64 8, !17, i64 16, !22, i64 40, !16, i64 44, !25, i64 48, !22, i64 56, !22, i64 60}
!92 = !{!91, !25, i64 8}
!93 = !{!91, !22, i64 40}
!94 = !{!91, !16, i64 44}
!95 = !{!91, !25, i64 48}
!96 = !{!91, !22, i64 56}
!97 = !{!91, !22, i64 60}
!98 = !{!99, !25, i64 0}
!99 = !{!"_ZTSSt4pairI4_seqI5eventES2_E", !100, i64 0, !100, i64 16}
!100 = !{!"_ZTS4_seqI5eventE", !25, i64 0, !101, i64 8}
!101 = !{!"long", !17, i64 0}
!102 = !{!99, !25, i64 16}
!103 = !{!99, !101, i64 8}
!104 = !{!99, !101, i64 24}
!105 = distinct !{!105, !33}
!106 = !{!107, !25, i64 16}
!107 = !{!"_ZTSZ12generateNodePP5rangePP5eventS0_iiE3$_3", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32}
!108 = !{!107, !25, i64 8}
!109 = !{!107, !25, i64 24}
!110 = !{!107, !25, i64 32}
!111 = !{!107, !25, i64 0}
!112 = !{!113, !25, i64 16}
!113 = !{!"_ZTSZ12generateNodePP5rangePP5eventS0_iiE3$_4", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!114 = !{!113, !25, i64 24}
!115 = !{!113, !25, i64 8}
!116 = !{!113, !25, i64 32}
!117 = !{!113, !25, i64 40}
!118 = !{!113, !25, i64 0}
!119 = !{i64 0, i64 8, !24, i64 8, i64 8, !120}
!120 = !{!101, !101, i64 0}
!121 = !{!122, !25, i64 0}
!122 = !{!"_ZTSZ12generateNodePP5rangePP5eventS0_iiE3$_5", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!123 = !{!122, !25, i64 8}
!124 = !{!122, !25, i64 16}
!125 = !{!122, !25, i64 24}
!126 = !{!122, !25, i64 32}
!127 = !{!122, !25, i64 40}
!128 = !{!129, !25, i64 8}
!129 = !{!"_ZTS9trianglesI8_point3dIdEE", !22, i64 0, !22, i64 4, !25, i64 8, !25, i64 16}
!130 = !{!129, !25, i64 16}
!131 = !{!132, !132, i64 0}
!132 = !{!"double", !17, i64 0}
!133 = !{!134, !25, i64 0}
!134 = !{!"_ZTSZ11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePiE3$_6", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32}
!135 = !{!134, !25, i64 16}
!136 = !{i64 0, i64 8, !131, i64 8, i64 8, !131, i64 16, i64 8, !131, i64 24, i64 8, !131, i64 32, i64 8, !131, i64 40, i64 8, !131}
!137 = !{!134, !25, i64 24}
!138 = !{!134, !25, i64 32}
!139 = !{!134, !25, i64 8}
!140 = !{!141, !78, i64 24}
!141 = !{!"_ZTS5timer", !132, i64 0, !132, i64 8, !132, i64 16, !78, i64 24, !142, i64 28}
!142 = !{!"_ZTS8timezone", !22, i64 0, !22, i64 4}
!143 = !{!144, !101, i64 0}
!144 = !{!"_ZTS7timeval", !101, i64 0, !101, i64 8}
!145 = !{!144, !101, i64 8}
!146 = !{!141, !132, i64 8}
!147 = !{!129, !22, i64 4}
!148 = !{!149, !25, i64 0}
!149 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!150 = !{!151, !25, i64 0}
!151 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !149, i64 0, !101, i64 8, !17, i64 16}
!152 = !{!151, !101, i64 8}
!153 = !{i8 0, i8 2}
!154 = !{!141, !132, i64 0}
!155 = !{!156, !25, i64 0}
!156 = !{!"_ZTSZ7rayCast9trianglesI8_point3dIdEEP3rayIS1_EiE3$_7", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!157 = !{!156, !25, i64 8}
!158 = !{!156, !25, i64 16}
!159 = !{!156, !25, i64 24}
!160 = !{!161, !25, i64 0}
!161 = !{!"_ZTSZ7rayCast9trianglesI8_point3dIdEEP3rayIS1_EiE3$_8", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!162 = !{!161, !25, i64 24}
!163 = !{!161, !25, i64 16}
!164 = !{!161, !25, i64 8}
!165 = !{!166, !25, i64 0}
!166 = !{!"_ZTS9transposeIiiE", !25, i64 0, !25, i64 8}
!167 = !{!166, !25, i64 8}
!168 = !{!169, !25, i64 0}
!169 = !{!"_ZTS10blockTransI5eventiE", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32}
!170 = !{!169, !25, i64 8}
!171 = !{!169, !25, i64 16}
!172 = !{!169, !25, i64 24}
!173 = !{!169, !25, i64 32}
!174 = !{!175, !25, i64 0}
!175 = !{!"_ZTSZ7rayCast9trianglesI8_point3dIdEEP3rayIS1_EiE3$_9", !25, i64 0, !25, i64 8}
!176 = !{!175, !25, i64 8}
!177 = distinct !{!177, !40}
!178 = distinct !{!178, !179, !40}
!179 = !{!"llvm.loop.unroll.runtime.disable"}
!180 = !{!181, !101, i64 8}
!181 = !{!"_ZTSSt8ios_base", !101, i64 8, !101, i64 16, !182, i64 24, !183, i64 28, !183, i64 32, !25, i64 40, !184, i64 48, !17, i64 64, !22, i64 192, !25, i64 200, !185, i64 208}
!182 = !{!"_ZTSSt13_Ios_Fmtflags", !17, i64 0}
!183 = !{!"_ZTSSt12_Ios_Iostate", !17, i64 0}
!184 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !101, i64 8}
!185 = !{!"_ZTSSt6locale", !25, i64 0}
!186 = !{!187, !25, i64 0}
!187 = !{!"_ZTSZN8treeNode3delEPS_EUt_", !25, i64 0}
!188 = distinct !{!188, !33}
!189 = distinct !{!189, !33}
!190 = !{!191, !25, i64 0}
!191 = !{!"_ZTSZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bbEUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!192 = !{!191, !25, i64 8}
!193 = !{!191, !25, i64 16}
!194 = !{!191, !25, i64 40}
!195 = distinct !{!195, !40}
!196 = distinct !{!196, !179, !40}
!197 = !{!191, !25, i64 24}
!198 = !{!199, !25, i64 0}
!199 = !{!"_ZTSZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bbEUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64}
!200 = !{!199, !25, i64 8}
!201 = !{!199, !25, i64 16}
!202 = !{!199, !25, i64 24}
!203 = !{!199, !25, i64 40}
!204 = !{!199, !25, i64 48}
!205 = !{!199, !25, i64 56}
!206 = !{!199, !25, i64 64}
!207 = distinct !{!207, !33}
!208 = distinct !{!208, !33}
!209 = !{!210, !25, i64 0}
!210 = !{!"_ZTSN8sequence4getAIfiEE", !25, i64 0}
!211 = distinct !{!211, !33}
!212 = !{!213, !25, i64 0}
!213 = !{!"_ZTSZN8sequence8maxIndexIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_EUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!214 = !{!213, !25, i64 8}
!215 = !{!213, !25, i64 16}
!216 = !{!213, !25, i64 40}
!217 = distinct !{!217, !33}
!218 = !{!213, !25, i64 24}
!219 = distinct !{!219, !40}
!220 = distinct !{!220, !33}
!221 = distinct !{!221, !179, !40}
!222 = distinct !{!222, !33}
!223 = !{!224, !25, i64 0}
!224 = !{!"_ZTSZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_EUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32}
!225 = !{!224, !25, i64 8}
!226 = !{!224, !25, i64 16}
!227 = !{!224, !25, i64 32}
!228 = !{!224, !25, i64 24}
!229 = distinct !{!229, !40}
!230 = distinct !{!230, !33}
!231 = distinct !{!231, !179, !40}
!232 = !{!233, !25, i64 0}
!233 = !{!"_ZTSZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_EUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48}
!234 = !{!233, !25, i64 8}
!235 = !{!233, !25, i64 16}
!236 = !{!233, !25, i64 24}
!237 = !{!233, !25, i64 32}
!238 = !{!233, !25, i64 40}
!239 = !{!233, !25, i64 48}
!240 = !{!241, !25, i64 8}
!241 = !{!"_ZTSSt4pairIP5eventS1_E", !25, i64 0, !25, i64 8}
!242 = !{!243, !25, i64 0}
!243 = !{!"_ZTSZ10sampleSortI5event6cmpValiEvPT_T1_T0_EUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!244 = !{!243, !25, i64 16}
!245 = !{!243, !25, i64 24}
!246 = !{!243, !25, i64 8}
!247 = !{!248, !25, i64 0}
!248 = !{!"_ZTSZ10sampleSortI5event6cmpValiEvPT_T1_T0_EUt_", !25, i64 0, !25, i64 8, !25, i64 16}
!249 = !{!248, !25, i64 16}
!250 = !{!248, !25, i64 8}
!251 = distinct !{!251, !33}
!252 = !{!253, !25, i64 0}
!253 = !{!"_ZTSZ10sampleSortI5event6cmpValiEvPT_T1_T0_EUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64}
!254 = !{!253, !25, i64 8}
!255 = !{!253, !25, i64 16}
!256 = !{!253, !25, i64 24}
!257 = !{!253, !25, i64 32}
!258 = !{!253, !25, i64 48}
!259 = !{!253, !25, i64 56}
!260 = !{!253, !25, i64 64}
!261 = distinct !{!261, !33}
!262 = !{!263, !25, i64 0}
!263 = !{!"_ZTSZ9quickSortI5event6cmpValiEvPT_T1_T0_EUt_", !25, i64 0, !25, i64 8, !25, i64 16}
!264 = !{!263, !25, i64 8}
!265 = !{!241, !25, i64 0}
!266 = distinct !{!266, !33}
!267 = distinct !{!267, !33}
!268 = distinct !{!268, !33}
!269 = distinct !{!269, !33}
!270 = !{!271, !25, i64 0}
!271 = !{!"_ZTSZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bbEUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!272 = !{!271, !25, i64 8}
!273 = !{!271, !25, i64 16}
!274 = !{!271, !25, i64 40}
!275 = distinct !{!275, !40}
!276 = distinct !{!276, !33}
!277 = distinct !{!277, !179, !40}
!278 = !{!271, !25, i64 24}
!279 = !{!280, !25, i64 0}
!280 = !{!"_ZTSZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bbEUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64}
!281 = !{!280, !25, i64 8}
!282 = !{!280, !25, i64 16}
!283 = !{!280, !25, i64 24}
!284 = !{!280, !25, i64 40}
!285 = !{!280, !25, i64 48}
!286 = !{!280, !25, i64 56}
!287 = !{!280, !25, i64 64}
!288 = distinct !{!288, !33}
!289 = distinct !{!289, !33}
!290 = distinct !{!290, !33}
!291 = distinct !{!291, !33}
!292 = !{!293, !25, i64 0}
!293 = !{!"_ZTSZN9transposeIiiE6transREiiiiiiEUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48}
!294 = !{!293, !25, i64 8}
!295 = !{!293, !25, i64 16}
!296 = !{!293, !25, i64 24}
!297 = !{!293, !25, i64 32}
!298 = !{!293, !25, i64 40}
!299 = !{!293, !25, i64 48}
!300 = distinct !{!300, !33}
!301 = !{!302}
!302 = distinct !{!302, !303}
!303 = distinct !{!303, !"LVerDomain"}
!304 = !{!305}
!305 = distinct !{!305, !303}
!306 = distinct !{!306, !40}
!307 = distinct !{!307, !40}
!308 = !{!309, !25, i64 0}
!309 = !{!"_ZTSZN10blockTransI5eventiE6transREiiiiiiEUt_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48}
!310 = !{!309, !25, i64 8}
!311 = !{!309, !25, i64 16}
!312 = !{!309, !25, i64 24}
!313 = !{!309, !25, i64 32}
!314 = !{!309, !25, i64 40}
!315 = !{!309, !25, i64 48}
!316 = !{!141, !132, i64 16}
