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
%"struct.std::pair" = type { %struct._seq, %struct._seq }
%struct._seq = type { %struct.event*, i64 }
%struct.treeNode = type { %struct.treeNode*, %struct.treeNode*, [3 x %struct.range], i32, float, i32*, i32, i32 }
%struct.__cilkrts_stack_frame = type { i32, i32, %struct.__cilkrts_stack_frame*, %struct.__cilkrts_worker*, i8*, [5 x i8*], i32, i16, i16, { %struct.__cilkrts_pedigree } }
%struct.__cilkrts_worker = type { %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame**, i32, i8*, i8*, i8*, %struct.__cilkrts_stack_frame*, i8*, i8*, %struct.__cilkrts_pedigree }
%struct.__cilkrts_pedigree = type { i64, %struct.__cilkrts_pedigree* }
%struct.cutInfo = type { float, float, i32, i32 }
%struct.ray = type { %class._point3d, %class._vect3d }
%class._point3d = type { double, double, double }
%class._vect3d = type { double, double, double }
%struct.triangles = type { i32, i32, %class._point3d*, %struct.triangle* }
%struct.triangle = type { [3 x i32] }
%struct.timeval = type { i64, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%struct.transpose = type { i32*, i32* }
%struct.blockTrans = type { %struct.event*, %struct.event*, i32*, i32*, i32* }

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
@.str.4 = private unnamed_addr constant [25 x i8] c"generate and sort events\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"build tree\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Triangles across all leaves = \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" Leaves = \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"intersect rays\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"delete tree\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"bad intersect in checking ray intersection\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"tcount=\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" ccount=\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"PBBS-time: \00", align 1
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
  %0 = load float, float* %max, align 4, !tbaa !2
  %min = getelementptr inbounds %struct.range, %struct.range* %B, i64 0, i32 0
  %1 = load float, float* %min, align 4, !tbaa !7
  %sub = fsub float %0, %1
  %max3 = getelementptr inbounds %struct.range, %struct.range* %B, i64 1, i32 1
  %2 = load float, float* %max3, align 4, !tbaa !2
  %min5 = getelementptr inbounds %struct.range, %struct.range* %B, i64 1, i32 0
  %3 = load float, float* %min5, align 4, !tbaa !7
  %sub6 = fsub float %2, %3
  %max8 = getelementptr inbounds %struct.range, %struct.range* %B, i64 2, i32 1
  %4 = load float, float* %max8, align 4, !tbaa !2
  %min10 = getelementptr inbounds %struct.range, %struct.range* %B, i64 2, i32 0
  %5 = load float, float* %min10, align 4, !tbaa !7
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
  br label %cleanup

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
  %rn.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %rn.1.1, %if.end39.1 ]
  %ln.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %ln.1.1, %if.end39.1 ]
  %k.1.lcssa.ph = phi i32 [ undef, %for.body.lr.ph ], [ %k.1.1, %if.end39.1 ]
  %minCost.1.lcssa.ph = phi float [ undef, %for.body.lr.ph ], [ %minCost.1.1, %if.end39.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %if.end39.1 ]
  %inLeft.0128.unr = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select102.1, %if.end39.1 ]
  %inRight.0127.unr = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select.1, %if.end39.1 ]
  %minCost.0126.unr = phi float [ 0x47EFFFFFE0000000, %for.body.lr.ph ], [ %minCost.1.1, %if.end39.1 ]
  %k.0125.unr = phi i32 [ 0, %for.body.lr.ph ], [ %k.1.1, %if.end39.1 ]
  %ln.0123.unr = phi i32 [ 0, %for.body.lr.ph ], [ %ln.1.1, %if.end39.1 ]
  %rn.0122.unr = phi i32 [ 0, %for.body.lr.ph ], [ %rn.1.1, %if.end39.1 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %p.epil = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.unr, i32 1
  %1 = load i32, i32* %p.epil, align 4, !tbaa !8
  %2 = shl i32 %1, 31
  %sext.epil = ashr exact i32 %2, 31
  %spec.select.epil = add nsw i32 %sext.epil, %inRight.0127.unr
  %v.epil = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.unr, i32 0
  %3 = load float, float* %v.epil, align 4, !tbaa !11
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
  %rn.0.lcssa = phi i32 [ 0, %if.end ], [ %rn.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %spec.select.epil, %if.then38.epil ], [ %rn.0122.unr, %for.body.epil ]
  %ln.0.lcssa = phi i32 [ %div, %if.end ], [ %ln.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %inLeft.0128.unr, %if.then38.epil ], [ %ln.0123.unr, %for.body.epil ]
  %k.0.lcssa = phi i32 [ 0, %if.end ], [ %k.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %4, %if.then38.epil ], [ %k.0125.unr, %for.body.epil ]
  %minCost.0.lcssa = phi float [ 0x47EFFFFFE0000000, %if.end ], [ %minCost.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %add36.epil, %if.then38.epil ], [ %minCost.0126.unr, %for.body.epil ]
  %idxprom48 = sext i32 %k.0.lcssa to i64
  %v50 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %idxprom48, i32 0
  %5 = load float, float* %v50, align 4, !tbaa !11
  %retval.sroa.0.0.vec.insert109 = insertelement <2 x float> undef, float %minCost.0.lcssa, i32 0
  %retval.sroa.0.4.vec.insert111 = insertelement <2 x float> %retval.sroa.0.0.vec.insert109, float %5, i32 1
  %retval.sroa.5.8.insert.ext113 = zext i32 %ln.0.lcssa to i64
  %retval.sroa.5.12.insert.ext117 = zext i32 %rn.0.lcssa to i64
  br label %cleanup

for.body:                                         ; preds = %if.end39.1, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %if.end39.1 ]
  %inLeft.0128 = phi i32 [ 0, %for.body.lr.ph.new ], [ %spec.select102.1, %if.end39.1 ]
  %inRight.0127 = phi i32 [ %div, %for.body.lr.ph.new ], [ %spec.select.1, %if.end39.1 ]
  %minCost.0126 = phi float [ 0x47EFFFFFE0000000, %for.body.lr.ph.new ], [ %minCost.1.1, %if.end39.1 ]
  %k.0125 = phi i32 [ 0, %for.body.lr.ph.new ], [ %k.1.1, %if.end39.1 ]
  %ln.0123 = phi i32 [ %div, %for.body.lr.ph.new ], [ %ln.1.1, %if.end39.1 ]
  %rn.0122 = phi i32 [ 0, %for.body.lr.ph.new ], [ %rn.1.1, %if.end39.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.1, %if.end39.1 ]
  %p = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv, i32 1
  %6 = load i32, i32* %p, align 4, !tbaa !8
  %and = and i32 %6, 1
  %7 = shl i32 %6, 31
  %sext = ashr exact i32 %7, 31
  %spec.select = add nsw i32 %sext, %inRight.0127
  %v = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv, i32 0
  %8 = load float, float* %v, align 4, !tbaa !11
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
  %rn.1 = phi i32 [ %spec.select, %if.then38 ], [ %rn.0122, %for.body ]
  %ln.1 = phi i32 [ %inLeft.0128, %if.then38 ], [ %ln.0123, %for.body ]
  %k.1 = phi i32 [ %9, %if.then38 ], [ %k.0125, %for.body ]
  %minCost.1 = phi float [ %add36, %if.then38 ], [ %minCost.0126, %for.body ]
  %10 = xor i32 %and, 1
  %spec.select102 = add nuw nsw i32 %10, %inLeft.0128
  %indvars.iv.next = or i64 %indvars.iv, 1
  %p.1 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.next, i32 1
  %11 = load i32, i32* %p.1, align 4, !tbaa !8
  %and.1 = and i32 %11, 1
  %12 = shl i32 %11, 31
  %sext.1 = ashr exact i32 %12, 31
  %spec.select.1 = add nsw i32 %sext.1, %spec.select
  %v.1 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.next, i32 0
  %13 = load float, float* %v.1, align 4, !tbaa !11
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

cleanup:                                          ; preds = %for.cond.cleanup, %if.then
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
  %rn.1.1 = phi i32 [ %spec.select.1, %if.then38.1 ], [ %rn.1, %if.end39 ]
  %ln.1.1 = phi i32 [ %spec.select102, %if.then38.1 ], [ %ln.1, %if.end39 ]
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
define { <2 x float>, i64 } @_Z7bestCutP5event5rangeS1_S1_i(%struct.event* nocapture readonly %E, <2 x float> %r.coerce, <2 x float> %r1.coerce, <2 x float> %r2.coerce, i32 %n) local_unnamed_addr #6 {
entry:
  %0 = alloca { i32*, %struct.event*, i32, float, float, float, float, float* }, align 8
  %1 = alloca { %struct.event*, i32* }, align 8
  %2 = load i32, i32* @minParallelSize, align 4, !tbaa !12
  %cmp = icmp sgt i32 %2, %n
  %r.sroa.0.4.vec.extract.i = extractelement <2 x float> %r.coerce, i32 1
  %r.sroa.0.0.vec.extract.i = extractelement <2 x float> %r.coerce, i32 0
  %sub.i = fsub float %r.sroa.0.4.vec.extract.i, %r.sroa.0.0.vec.extract.i
  %cmp.i = fcmp oeq float %sub.i, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %retval.sroa.0.4.vec.insert.i = shufflevector <2 x float> <float 0x47EFFFFFE0000000, float undef>, <2 x float> %r.coerce, <2 x i32> <i32 0, i32 2>
  %retval.sroa.5.8.insert.ext.i = zext i32 %n to i64
  br label %cleanup

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
  %3 = icmp eq i32 %n, 1
  br i1 %3, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = sub nsw i64 %wide.trip.count.i, %xtraiter
  br label %for.body.i

for.cond.cleanup.i.loopexit.unr-lcssa:            ; preds = %if.end39.i.1, %for.body.lr.ph.i
  %rn.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %rn.1.i.1, %if.end39.i.1 ]
  %ln.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %ln.1.i.1, %if.end39.i.1 ]
  %k.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %k.1.i.1, %if.end39.i.1 ]
  %minCost.1.i.lcssa.ph = phi float [ undef, %for.body.lr.ph.i ], [ %minCost.1.i.1, %if.end39.i.1 ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.1, %if.end39.i.1 ]
  %inLeft.0128.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select102.i.1, %if.end39.i.1 ]
  %inRight.0127.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i.1, %if.end39.i.1 ]
  %minCost.0126.i.unr = phi float [ 0x47EFFFFFE0000000, %for.body.lr.ph.i ], [ %minCost.1.i.1, %if.end39.i.1 ]
  %k.0125.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %k.1.i.1, %if.end39.i.1 ]
  %ln.0123.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %ln.1.i.1, %if.end39.i.1 ]
  %rn.0122.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %rn.1.i.1, %if.end39.i.1 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup.i, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa
  %p.i.epil = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.i.unr, i32 1
  %4 = load i32, i32* %p.i.epil, align 4, !tbaa !8
  %5 = shl i32 %4, 31
  %sext.i.epil = ashr exact i32 %5, 31
  %spec.select.i.epil = add nsw i32 %sext.i.epil, %inRight.0127.i.unr
  %v.i.epil = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.i.unr, i32 0
  %6 = load float, float* %v.i.epil, align 4, !tbaa !11
  %sub22.i.epil = fsub float %6, %r.sroa.0.0.vec.extract.i
  %mul23.i.epil = fmul float %mul15.i, %sub22.i.epil
  %add24.i.epil = fadd float %mul8.i, %mul23.i.epil
  %sub29.i.epil = fsub float %r.sroa.0.4.vec.extract.i, %6
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
  %7 = trunc i64 %indvars.iv.i.unr to i32
  br label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil, %if.then38.i.epil, %if.end.i
  %rn.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %rn.1.i.lcssa.ph, %for.cond.cleanup.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %if.then38.i.epil ], [ %rn.0122.i.unr, %for.body.i.epil ]
  %ln.0.lcssa.i = phi i32 [ %div.i, %if.end.i ], [ %ln.1.i.lcssa.ph, %for.cond.cleanup.i.loopexit.unr-lcssa ], [ %inLeft.0128.i.unr, %if.then38.i.epil ], [ %ln.0123.i.unr, %for.body.i.epil ]
  %k.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %k.1.i.lcssa.ph, %for.cond.cleanup.i.loopexit.unr-lcssa ], [ %7, %if.then38.i.epil ], [ %k.0125.i.unr, %for.body.i.epil ]
  %minCost.0.lcssa.i = phi float [ 0x47EFFFFFE0000000, %if.end.i ], [ %minCost.1.i.lcssa.ph, %for.cond.cleanup.i.loopexit.unr-lcssa ], [ %add36.i.epil, %if.then38.i.epil ], [ %minCost.0126.i.unr, %for.body.i.epil ]
  %idxprom48.i = sext i32 %k.0.lcssa.i to i64
  %v50.i = getelementptr inbounds %struct.event, %struct.event* %E, i64 %idxprom48.i, i32 0
  %8 = load float, float* %v50.i, align 4, !tbaa !11
  %retval.sroa.0.0.vec.insert109.i = insertelement <2 x float> undef, float %minCost.0.lcssa.i, i32 0
  %retval.sroa.0.4.vec.insert111.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert109.i, float %8, i32 1
  %retval.sroa.5.8.insert.ext113.i = zext i32 %ln.0.lcssa.i to i64
  %retval.sroa.5.12.insert.ext117.i = zext i32 %rn.0.lcssa.i to i64
  br label %cleanup

for.body.i:                                       ; preds = %if.end39.i.1, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.1, %if.end39.i.1 ]
  %inLeft.0128.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %spec.select102.i.1, %if.end39.i.1 ]
  %inRight.0127.i = phi i32 [ %div.i, %for.body.lr.ph.i.new ], [ %spec.select.i.1, %if.end39.i.1 ]
  %minCost.0126.i = phi float [ 0x47EFFFFFE0000000, %for.body.lr.ph.i.new ], [ %minCost.1.i.1, %if.end39.i.1 ]
  %k.0125.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %k.1.i.1, %if.end39.i.1 ]
  %ln.0123.i = phi i32 [ %div.i, %for.body.lr.ph.i.new ], [ %ln.1.i.1, %if.end39.i.1 ]
  %rn.0122.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %rn.1.i.1, %if.end39.i.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.i.new ], [ %niter.nsub.1, %if.end39.i.1 ]
  %p.i = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.i, i32 1
  %9 = load i32, i32* %p.i, align 4, !tbaa !8
  %and.i = and i32 %9, 1
  %10 = shl i32 %9, 31
  %sext.i = ashr exact i32 %10, 31
  %spec.select.i = add nsw i32 %sext.i, %inRight.0127.i
  %v.i = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.i, i32 0
  %11 = load float, float* %v.i, align 4, !tbaa !11
  %sub22.i = fsub float %11, %r.sroa.0.0.vec.extract.i
  %mul23.i = fmul float %mul15.i, %sub22.i
  %add24.i = fadd float %mul8.i, %mul23.i
  %sub29.i = fsub float %r.sroa.0.4.vec.extract.i, %11
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
  %12 = trunc i64 %indvars.iv.i to i32
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %for.body.i
  %rn.1.i = phi i32 [ %spec.select.i, %if.then38.i ], [ %rn.0122.i, %for.body.i ]
  %ln.1.i = phi i32 [ %inLeft.0128.i, %if.then38.i ], [ %ln.0123.i, %for.body.i ]
  %k.1.i = phi i32 [ %12, %if.then38.i ], [ %k.0125.i, %for.body.i ]
  %minCost.1.i = phi float [ %add36.i, %if.then38.i ], [ %minCost.0126.i, %for.body.i ]
  %13 = xor i32 %and.i, 1
  %spec.select102.i = add nuw nsw i32 %13, %inLeft.0128.i
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %p.i.1 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.next.i, i32 1
  %14 = load i32, i32* %p.i.1, align 4, !tbaa !8
  %and.i.1 = and i32 %14, 1
  %15 = shl i32 %14, 31
  %sext.i.1 = ashr exact i32 %15, 31
  %spec.select.i.1 = add nsw i32 %sext.i.1, %spec.select.i
  %v.i.1 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %indvars.iv.next.i, i32 0
  %16 = load float, float* %v.i.1, align 4, !tbaa !11
  %sub22.i.1 = fsub float %16, %r.sroa.0.0.vec.extract.i
  %mul23.i.1 = fmul float %mul15.i, %sub22.i.1
  %add24.i.1 = fadd float %mul8.i, %mul23.i.1
  %sub29.i.1 = fsub float %r.sroa.0.4.vec.extract.i, %16
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
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %retval.sroa.0.4.vec.insert203 = shufflevector <2 x float> <float 0x47EFFFFFE0000000, float undef>, <2 x float> %r.coerce, <2 x i32> <i32 0, i32 2>
  %retval.sroa.6.8.insert.ext205 = zext i32 %n to i64
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %r1.sroa.0.4.vec.extract = extractelement <2 x float> %r1.coerce, i32 1
  %r1.sroa.0.0.vec.extract = extractelement <2 x float> %r1.coerce, i32 0
  %sub9 = fsub float %r1.sroa.0.4.vec.extract, %r1.sroa.0.0.vec.extract
  %r2.sroa.0.4.vec.extract = extractelement <2 x float> %r2.coerce, i32 1
  %r2.sroa.0.0.vec.extract = extractelement <2 x float> %r2.coerce, i32 0
  %sub12 = fsub float %r2.sroa.0.4.vec.extract, %r2.sroa.0.0.vec.extract
  %mul = fmul float %sub9, %sub12
  %mul13 = fmul float %mul, 2.000000e+00
  %add = fadd float %sub9, %sub12
  %mul20 = fmul float %add, 2.000000e+00
  %conv21 = sext i32 %n to i64
  %mul22 = shl nsw i64 %conv21, 2
  %call23 = tail call noalias i8* @malloc(i64 %mul22) #2
  %17 = bitcast i8* %call23 to i32*
  %cmp27216 = icmp sgt i32 %n, 0
  br i1 %cmp27216, label %pfor.cond.cleanup.loopexit, label %sync.continue

pfor.cond.cleanup.loopexit:                       ; preds = %if.end6
  %wide.trip.count220 = zext i32 %n to i64
  %18 = getelementptr inbounds { %struct.event*, i32* }, { %struct.event*, i32* }* %1, i64 0, i32 0
  store %struct.event* %E, %struct.event** %18, align 8
  %19 = getelementptr inbounds { %struct.event*, i32* }, { %struct.event*, i32* }* %1, i64 0, i32 1
  %20 = bitcast i32** %19 to i8**
  store i8* %call23, i8** %20, align 8
  %21 = bitcast { %struct.event*, i32* }* %1 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.event*, i32* }*, i64, i64)* @_Z7bestCutP5event5rangeS1_S1_i_pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %21, i64 %wide.trip.count220, i32 0)
  br label %sync.continue

sync.continue:                                    ; preds = %if.end6, %pfor.cond.cleanup.loopexit
  %call.i198 = tail call i32 @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb(i32* %17, i32 0, i32 %n, i32* %17, i32 0, i1 zeroext false, i1 zeroext false)
  %call35 = tail call noalias i8* @malloc(i64 %mul22) #2
  %22 = bitcast i8* %call35 to float*
  br i1 %cmp27216, label %pfor.cond.cleanup46.loopexit, label %sync.continue88

pfor.cond.cleanup46.loopexit:                     ; preds = %sync.continue
  %div56222 = lshr i32 %n, 1
  %wide.trip.count = zext i32 %n to i64
  %23 = bitcast { i32*, %struct.event*, i32, float, float, float, float, float* }* %0 to i8**
  store i8* %call23, i8** %23, align 8
  %24 = getelementptr inbounds { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %0, i64 0, i32 1
  store %struct.event* %E, %struct.event** %24, align 8
  %25 = getelementptr inbounds { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %0, i64 0, i32 2
  store i32 %div56222, i32* %25, align 8
  %26 = getelementptr inbounds { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %0, i64 0, i32 3
  store float %r.sroa.0.0.vec.extract.i, float* %26, align 4
  %27 = getelementptr inbounds { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %0, i64 0, i32 4
  store float %mul20, float* %27, align 8
  %28 = getelementptr inbounds { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %0, i64 0, i32 5
  store float %mul13, float* %28, align 4
  %29 = getelementptr inbounds { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %0, i64 0, i32 6
  store float %r.sroa.0.4.vec.extract.i, float* %29, align 8
  %30 = getelementptr inbounds { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %0, i64 0, i32 7
  %31 = bitcast float** %30 to i8**
  store i8* %call35, i8** %31, align 8
  %32 = bitcast { i32*, %struct.event*, i32, float, float, float, float, float* }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i32*, %struct.event*, i32, float, float, float, float, float* }*, i64, i64)* @_Z7bestCutP5event5rangeS1_S1_i_pfor.detach47.ls to void (i8*, i64, i64)*), i8* nonnull %32, i64 %wide.trip.count, i32 0)
  br label %sync.continue88

sync.continue88:                                  ; preds = %sync.continue, %pfor.cond.cleanup46.loopexit
  %call.i = tail call i32 @_ZN8sequence8maxIndexIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_(i32 0, i32 %n, float* %22)
  %idxprom92 = sext i32 %call.i to i64
  %arrayidx93 = getelementptr inbounds float, float* %22, i64 %idxprom92
  %33 = load float, float* %arrayidx93, align 4, !tbaa !13
  %arrayidx95 = getelementptr inbounds i32, i32* %17, i64 %idxprom92
  %34 = load i32, i32* %arrayidx95, align 4, !tbaa !12
  %sub96 = sub nsw i32 %call.i, %34
  %div97 = sdiv i32 %n, 2
  %p102 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %idxprom92, i32 1
  %35 = load i32, i32* %p102, align 4, !tbaa !8
  %and103 = and i32 %35, 1
  %add104.neg = sub i32 %div97, %34
  %sub105 = sub i32 %add104.neg, %and103
  tail call void @free(i8* %call23) #2
  tail call void @free(i8* %call35) #2
  %v108 = getelementptr inbounds %struct.event, %struct.event* %E, i64 %idxprom92, i32 0
  %36 = load float, float* %v108, align 4, !tbaa !11
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %33, i32 0
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %36, i32 1
  %retval.sroa.6.8.insert.ext = zext i32 %sub96 to i64
  %retval.sroa.6.12.insert.ext = zext i32 %sub105 to i64
  br label %cleanup

cleanup:                                          ; preds = %for.cond.cleanup.i, %if.then.i, %sync.continue88, %if.then4
  %retval.sroa.5.12.insert.ext117.i.sink = phi i64 [ %retval.sroa.5.12.insert.ext117.i, %for.cond.cleanup.i ], [ %retval.sroa.5.8.insert.ext.i, %if.then.i ], [ %retval.sroa.6.12.insert.ext, %sync.continue88 ], [ %retval.sroa.6.8.insert.ext205, %if.then4 ]
  %retval.sroa.5.8.insert.ext113.i.sink = phi i64 [ %retval.sroa.5.8.insert.ext113.i, %for.cond.cleanup.i ], [ %retval.sroa.5.8.insert.ext.i, %if.then.i ], [ %retval.sroa.6.8.insert.ext, %sync.continue88 ], [ %retval.sroa.6.8.insert.ext205, %if.then4 ]
  %retval.sroa.0.0 = phi <2 x float> [ %retval.sroa.0.4.vec.insert111.i, %for.cond.cleanup.i ], [ %retval.sroa.0.4.vec.insert.i, %if.then.i ], [ %retval.sroa.0.4.vec.insert, %sync.continue88 ], [ %retval.sroa.0.4.vec.insert203, %if.then4 ]
  %retval.sroa.5.12.insert.shift118.i = shl nuw i64 %retval.sroa.5.12.insert.ext117.i.sink, 32
  %retval.sroa.5.12.insert.insert120.i = or i64 %retval.sroa.5.12.insert.shift118.i, %retval.sroa.5.8.insert.ext113.i.sink
  %.fca.0.insert = insertvalue { <2 x float>, i64 } undef, <2 x float> %retval.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, i64 } %.fca.0.insert, i64 %retval.sroa.5.12.insert.insert120.i, 1
  ret { <2 x float>, i64 } %.fca.1.insert

if.then38.i.1:                                    ; preds = %if.end39.i
  %37 = trunc i64 %indvars.iv.next.i to i32
  br label %if.end39.i.1

if.end39.i.1:                                     ; preds = %if.then38.i.1, %if.end39.i
  %rn.1.i.1 = phi i32 [ %spec.select.i.1, %if.then38.i.1 ], [ %rn.1.i, %if.end39.i ]
  %ln.1.i.1 = phi i32 [ %spec.select102.i, %if.then38.i.1 ], [ %ln.1.i, %if.end39.i ]
  %k.1.i.1 = phi i32 [ %37, %if.then38.i.1 ], [ %k.1.i, %if.end39.i ]
  %minCost.1.i.1 = phi float [ %add36.i.1, %if.then38.i.1 ], [ %minCost.1.i, %if.end39.i ]
  %38 = xor i32 %and.i.1, 1
  %spec.select102.i.1 = add nuw nsw i32 %38, %spec.select102.i
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @_Z17splitEventsSerialP5rangeP5eventfi(%"struct.std::pair"* noalias nocapture sret %agg.result, %struct.range* nocapture readonly %boxes, %struct.event* nocapture readonly %events, float %cutOff, i32 %n) local_unnamed_addr #7 {
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
  %3 = load i32, i32* %p.epil, align 4, !tbaa !8
  %shr.epil = ashr i32 %3, 1
  %idxprom4.epil = sext i32 %shr.epil to i64
  %min.epil = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.epil, i32 0
  %4 = load float, float* %min.epil, align 4, !tbaa !7
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
  %11 = load float, float* %max.epil, align 4, !tbaa !2
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
  %15 = load i32, i32* %p, align 4, !tbaa !8
  %shr = ashr i32 %15, 1
  %idxprom4 = sext i32 %shr to i64
  %min = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4, i32 0
  %16 = load float, float* %min, align 4, !tbaa !7
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
  %20 = load float, float* %max, align 4, !tbaa !2
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
  %25 = load i32, i32* %p.1, align 4, !tbaa !8
  %shr.1 = ashr i32 %25, 1
  %idxprom4.1 = sext i32 %shr.1 to i64
  %min.1 = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.1, i32 0
  %26 = load float, float* %min.1, align 4, !tbaa !7
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
  %33 = load float, float* %max.1, align 4, !tbaa !2
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
define void @_Z11splitEventsP5rangeP5eventfi(%"struct.std::pair"* noalias nocapture sret %agg.result, %struct.range* nocapture readonly %boxes, %struct.event* %events, float %cutOff, i32 %n) local_unnamed_addr #6 {
entry:
  %0 = alloca { %struct.event*, %struct.range*, float, i8*, i8* }, align 8
  %1 = load i32, i32* @minParallelSize, align 4, !tbaa !12
  %cmp = icmp sgt i32 %1, %n
  %conv.i = sext i32 %n to i64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i = tail call noalias i8* @malloc(i64 %mul.i) #2, !noalias !14
  %2 = bitcast i8* %call.i to %struct.event*
  %call3.i = tail call noalias i8* @malloc(i64 %mul.i) #2, !noalias !14
  %3 = bitcast i8* %call3.i to %struct.event*
  %cmp61.i = icmp sgt i32 %n, 0
  br i1 %cmp61.i, label %for.body.lr.ph.i, label %_Z17splitEventsSerialP5rangeP5eventfi.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %wide.trip.count.i = zext i32 %n to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %4 = icmp eq i32 %n, 1
  br i1 %4, label %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

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
  %5 = load i32, i32* %p.i, align 4, !tbaa !8, !noalias !14
  %shr.i = ashr i32 %5, 1
  %idxprom4.i = sext i32 %shr.i to i64
  %min.i = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i, i32 0
  %6 = load float, float* %min.i, align 4, !tbaa !7, !noalias !14
  %cmp6.i = fcmp olt float %6, %cutOff
  br i1 %cmp6.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add nsw i32 %l.064.i, 1
  %idxprom9.i = sext i32 %l.064.i to i64
  %arrayidx10.i = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom9.i
  %7 = bitcast %struct.event* %arrayidx.i to i64*
  %8 = bitcast %struct.event* %arrayidx10.i to i64*
  %9 = load i64, i64* %7, align 4, !noalias !14
  store i64 %9, i64* %8, align 4, !noalias !14
  %max.i = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i, i32 1
  %10 = load float, float* %max.i, align 4, !tbaa !2, !noalias !14
  %cmp13.i = fcmp ogt float %10, %cutOff
  br i1 %cmp13.i, label %if.then14.i, label %if.end25.i

if.then14.i:                                      ; preds = %if.then.i
  %inc17.i = add nsw i32 %r.062.i, 1
  %idxprom18.i = sext i32 %r.062.i to i64
  %arrayidx19.i = getelementptr inbounds %struct.event, %struct.event* %3, i64 %idxprom18.i
  %11 = bitcast %struct.event* %arrayidx19.i to i64*
  store i64 %9, i64* %11, align 4, !noalias !14
  br label %if.end25.i

if.else.i:                                        ; preds = %for.body.i
  %inc22.i = add nsw i32 %r.062.i, 1
  %idxprom23.i = sext i32 %r.062.i to i64
  %arrayidx24.i = getelementptr inbounds %struct.event, %struct.event* %3, i64 %idxprom23.i
  %12 = bitcast %struct.event* %arrayidx.i to i64*
  %13 = bitcast %struct.event* %arrayidx24.i to i64*
  %14 = load i64, i64* %12, align 4, !noalias !14
  store i64 %14, i64* %13, align 4, !noalias !14
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then14.i, %if.then.i
  %r.1.i = phi i32 [ %inc17.i, %if.then14.i ], [ %r.062.i, %if.then.i ], [ %inc22.i, %if.else.i ]
  %l.1.i = phi i32 [ %inc.i, %if.then14.i ], [ %inc.i, %if.then.i ], [ %l.064.i, %if.else.i ]
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.next.i
  %p.i.1 = getelementptr inbounds %struct.event, %struct.event* %events, i64 %indvars.iv.next.i, i32 1
  %15 = load i32, i32* %p.i.1, align 4, !tbaa !8, !noalias !14
  %shr.i.1 = ashr i32 %15, 1
  %idxprom4.i.1 = sext i32 %shr.i.1 to i64
  %min.i.1 = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i.1, i32 0
  %16 = load float, float* %min.i.1, align 4, !tbaa !7, !noalias !14
  %cmp6.i.1 = fcmp olt float %16, %cutOff
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
  %17 = load i32, i32* %p.i.epil, align 4, !tbaa !8, !noalias !14
  %shr.i.epil = ashr i32 %17, 1
  %idxprom4.i.epil = sext i32 %shr.i.epil to i64
  %min.i.epil = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i.epil, i32 0
  %18 = load float, float* %min.i.epil, align 4, !tbaa !7, !noalias !14
  %cmp6.i.epil = fcmp olt float %18, %cutOff
  br i1 %cmp6.i.epil, label %if.then.i.epil, label %if.else.i.epil

if.else.i.epil:                                   ; preds = %for.body.i.epil
  %inc22.i.epil = add nsw i32 %r.062.i.unr, 1
  %idxprom23.i.epil = sext i32 %r.062.i.unr to i64
  %arrayidx24.i.epil = getelementptr inbounds %struct.event, %struct.event* %3, i64 %idxprom23.i.epil
  %19 = bitcast %struct.event* %arrayidx.i.epil to i64*
  %20 = bitcast %struct.event* %arrayidx24.i.epil to i64*
  %21 = load i64, i64* %19, align 4, !noalias !14
  store i64 %21, i64* %20, align 4, !noalias !14
  br label %_Z17splitEventsSerialP5rangeP5eventfi.exit

if.then.i.epil:                                   ; preds = %for.body.i.epil
  %inc.i.epil = add nsw i32 %l.064.i.unr, 1
  %idxprom9.i.epil = sext i32 %l.064.i.unr to i64
  %arrayidx10.i.epil = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom9.i.epil
  %22 = bitcast %struct.event* %arrayidx.i.epil to i64*
  %23 = bitcast %struct.event* %arrayidx10.i.epil to i64*
  %24 = load i64, i64* %22, align 4, !noalias !14
  store i64 %24, i64* %23, align 4, !noalias !14
  %max.i.epil = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i.epil, i32 1
  %25 = load float, float* %max.i.epil, align 4, !tbaa !2, !noalias !14
  %cmp13.i.epil = fcmp ogt float %25, %cutOff
  br i1 %cmp13.i.epil, label %if.then14.i.epil, label %_Z17splitEventsSerialP5rangeP5eventfi.exit

if.then14.i.epil:                                 ; preds = %if.then.i.epil
  %inc17.i.epil = add nsw i32 %r.062.i.unr, 1
  %idxprom18.i.epil = sext i32 %r.062.i.unr to i64
  %arrayidx19.i.epil = getelementptr inbounds %struct.event, %struct.event* %3, i64 %idxprom18.i.epil
  %26 = bitcast %struct.event* %arrayidx19.i.epil to i64*
  store i64 %24, i64* %26, align 4, !noalias !14
  br label %_Z17splitEventsSerialP5rangeP5eventfi.exit

_Z17splitEventsSerialP5rangeP5eventfi.exit:       ; preds = %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa, %if.else.i.epil, %if.then.i.epil, %if.then14.i.epil, %if.then
  %r.0.lcssa.i = phi i32 [ 0, %if.then ], [ %r.1.i.lcssa.ph, %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa ], [ %inc17.i.epil, %if.then14.i.epil ], [ %r.062.i.unr, %if.then.i.epil ], [ %inc22.i.epil, %if.else.i.epil ]
  %l.0.lcssa.i = phi i32 [ 0, %if.then ], [ %l.1.i.lcssa.ph, %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa ], [ %inc.i.epil, %if.then14.i.epil ], [ %inc.i.epil, %if.then.i.epil ], [ %l.064.i.unr, %if.else.i.epil ]
  %conv27.i = sext i32 %l.0.lcssa.i to i64
  %conv29.i = sext i32 %r.0.lcssa.i to i64
  %27 = bitcast %"struct.std::pair"* %agg.result to i8**
  store i8* %call.i, i8** %27, align 8, !alias.scope !14
  %ref.tmp.sroa.4.0..sroa_idx60.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 1
  store i64 %conv27.i, i64* %ref.tmp.sroa.4.0..sroa_idx60.i, align 8, !alias.scope !14
  %ref.tmp28.sroa.0.0..sroa_idx.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 0
  %28 = bitcast %struct.event** %ref.tmp28.sroa.0.0..sroa_idx.i to i8**
  store i8* %call3.i, i8** %28, align 8, !alias.scope !14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias i8* @malloc(i64 %conv.i) #2
  %call3 = tail call noalias i8* @malloc(i64 %conv.i) #2
  %cmp558 = icmp sgt i32 %n, 0
  br i1 %cmp558, label %pfor.cond.cleanup.loopexit, label %sync.continue

pfor.cond.cleanup.loopexit:                       ; preds = %if.end
  %wide.trip.count = zext i32 %n to i64
  %29 = getelementptr inbounds { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %0, i64 0, i32 0
  store %struct.event* %events, %struct.event** %29, align 8
  %30 = getelementptr inbounds { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %0, i64 0, i32 1
  store %struct.range* %boxes, %struct.range** %30, align 8
  %31 = getelementptr inbounds { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %0, i64 0, i32 2
  store float %cutOff, float* %31, align 8
  %32 = getelementptr inbounds { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %0, i64 0, i32 3
  store i8* %call, i8** %32, align 8
  %33 = getelementptr inbounds { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %0, i64 0, i32 4
  store i8* %call3, i8** %33, align 8
  %34 = bitcast { %struct.event*, %struct.range*, float, i8*, i8* }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.event*, %struct.range*, float, i8*, i8* }*, i64, i64)* @_Z11splitEventsP5rangeP5eventfi_pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %34, i64 %wide.trip.count, i32 0)
  br label %sync.continue

sync.continue:                                    ; preds = %if.end, %pfor.cond.cleanup.loopexit
  %call.i50 = tail call { %struct.event*, i64 } @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* null, i8* %call, i32 0, i32 %n, %struct.event* %events)
  %35 = extractvalue { %struct.event*, i64 } %call.i50, 0
  %36 = extractvalue { %struct.event*, i64 } %call.i50, 1
  %call.i51 = tail call { %struct.event*, i64 } @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* null, i8* %call3, i32 0, i32 %n, %struct.event* %events)
  %37 = extractvalue { %struct.event*, i64 } %call.i51, 0
  %38 = extractvalue { %struct.event*, i64 } %call.i51, 1
  tail call void @free(i8* %call) #2
  tail call void @free(i8* %call3) #2
  %L.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 0
  store %struct.event* %35, %struct.event** %L.sroa.0.0..sroa_idx, align 8
  %L.sroa.4.0..sroa_idx57 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 1
  store i64 %36, i64* %L.sroa.4.0..sroa_idx57, align 8
  %R.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 0
  store %struct.event* %37, %struct.event** %R.sroa.0.0..sroa_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %sync.continue, %_Z17splitEventsSerialP5rangeP5eventfi.exit
  %.sink = phi i64 [ %38, %sync.continue ], [ %conv29.i, %_Z17splitEventsSerialP5rangeP5eventfi.exit ]
  %R.sroa.4.0..sroa_idx54 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1, i32 1
  store i64 %.sink, i64* %R.sroa.4.0..sroa_idx54, align 8
  ret void

if.else.i.1:                                      ; preds = %if.end25.i
  %inc22.i.1 = add nsw i32 %r.1.i, 1
  %idxprom23.i.1 = sext i32 %r.1.i to i64
  %arrayidx24.i.1 = getelementptr inbounds %struct.event, %struct.event* %3, i64 %idxprom23.i.1
  %39 = bitcast %struct.event* %arrayidx.i.1 to i64*
  %40 = bitcast %struct.event* %arrayidx24.i.1 to i64*
  %41 = load i64, i64* %39, align 4, !noalias !14
  store i64 %41, i64* %40, align 4, !noalias !14
  br label %if.end25.i.1

if.then.i.1:                                      ; preds = %if.end25.i
  %inc.i.1 = add nsw i32 %l.1.i, 1
  %idxprom9.i.1 = sext i32 %l.1.i to i64
  %arrayidx10.i.1 = getelementptr inbounds %struct.event, %struct.event* %2, i64 %idxprom9.i.1
  %42 = bitcast %struct.event* %arrayidx.i.1 to i64*
  %43 = bitcast %struct.event* %arrayidx10.i.1 to i64*
  %44 = load i64, i64* %42, align 4, !noalias !14
  store i64 %44, i64* %43, align 4, !noalias !14
  %max.i.1 = getelementptr inbounds %struct.range, %struct.range* %boxes, i64 %idxprom4.i.1, i32 1
  %45 = load float, float* %max.i.1, align 4, !tbaa !2, !noalias !14
  %cmp13.i.1 = fcmp ogt float %45, %cutOff
  br i1 %cmp13.i.1, label %if.then14.i.1, label %if.end25.i.1

if.then14.i.1:                                    ; preds = %if.then.i.1
  %inc17.i.1 = add nsw i32 %r.1.i, 1
  %idxprom18.i.1 = sext i32 %r.1.i to i64
  %arrayidx19.i.1 = getelementptr inbounds %struct.event, %struct.event* %3, i64 %idxprom18.i.1
  %46 = bitcast %struct.event* %arrayidx19.i.1 to i64*
  store i64 %44, i64* %46, align 4, !noalias !14
  br label %if.end25.i.1

if.end25.i.1:                                     ; preds = %if.then14.i.1, %if.then.i.1, %if.else.i.1
  %r.1.i.1 = phi i32 [ %inc17.i.1, %if.then14.i.1 ], [ %r.1.i, %if.then.i.1 ], [ %inc22.i.1, %if.else.i.1 ]
  %l.1.i.1 = phi i32 [ %inc.i.1, %if.then14.i.1 ], [ %inc.i.1, %if.then.i.1 ], [ %l.1.i, %if.else.i.1 ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %_Z17splitEventsSerialP5rangeP5eventfi.exit.loopexit.unr-lcssa, label %for.body.i
}

; Function Attrs: stealable uwtable
define nonnull %struct.treeNode* @_Z12generateNodePP5rangePP5eventS0_ii(%struct.range** nocapture readonly %boxes, %struct.event** %events, %struct.range* %B, i32 %n, i32 %maxDepth) local_unnamed_addr #8 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %struct.__cilkrts_worker* %0, null
  br i1 %1, label %slowpath.i, label %__cilkrts_enter_frame_1.exit

slowpath.i:                                       ; preds = %entry
  %2 = call %struct.__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilkrts_enter_frame_1.exit

__cilkrts_enter_frame_1.exit:                     ; preds = %entry, %slowpath.i
  %.sink = phi i32 [ 16777344, %slowpath.i ], [ 16777216, %entry ]
  %3 = phi %struct.__cilkrts_worker* [ %2, %slowpath.i ], [ %0, %entry ]
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %3, i64 0, i32 9
  %6 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %5 acquire, align 8
  %7 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %6, %struct.__cilkrts_stack_frame** %7 release, align 8
  %8 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %3, %struct.__cilkrts_worker** %8 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %5 release, align 8
  %B395 = bitcast %struct.range* %B to i8*
  %cuts = alloca [3 x %struct.cutInfo], align 16
  %BBL = alloca [3 x %struct.range], align 16
  %9 = bitcast [3 x %struct.range]* %BBL to i8*
  %leftEvents = alloca [3 x %struct.event*], align 16
  %BBR = alloca [3 x %struct.range], align 16
  %10 = bitcast [3 x %struct.range]* %BBR to i8*
  %rightEvents = alloca [3 x %struct.event*], align 16
  %X.sroa.0 = alloca i64, align 16
  %X.sroa.6 = alloca i64, align 8
  %X.sroa.7 = alloca i64, align 16
  %X.sroa.9 = alloca i64, align 8
  %X.sroa.10 = alloca i64, align 16
  %X.sroa.12 = alloca i64, align 8
  %X.sroa.13 = alloca i64, align 16
  %X.sroa.15 = alloca i64, align 8
  %X.sroa.16 = alloca i64, align 16
  %X.sroa.18 = alloca i64, align 8
  %X.sroa.19 = alloca i64, align 16
  %X.sroa.21 = alloca i64, align 8
  %L = alloca %struct.treeNode*, align 8
  %cmp = icmp slt i32 %n, 3
  %cmp1 = icmp eq i32 %maxDepth, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %call = tail call i8* @_Znwm(i64 64) #19
  %11 = bitcast i8* %call to %struct.treeNode*
  invoke void @_ZN8treeNodeC2EPP5eventiP5range(%struct.treeNode* nonnull %11, %struct.event** %events, i32 %n, %struct.range* %B)
          to label %if.then.cleanup254_crit_edge unwind label %lpad

if.then.cleanup254_crit_edge:                     ; preds = %if.then
  %.pre = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  br label %cleanup254

lpad:                                             ; preds = %if.then
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  tail call void @_ZdlPv(i8* nonnull %call) #20
  br label %eh.resume

if.end:                                           ; preds = %__cilkrts_enter_frame_1.exit
  %15 = bitcast [3 x %struct.cutInfo]* %cuts to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15) #2
  %16 = load %struct.event*, %struct.event** %events, align 8, !tbaa !17
  %agg.tmp.sroa.0.0..sroa_cast = bitcast %struct.range* %B to <2 x float>*
  %agg.tmp.sroa.0.0.copyload = load <2 x float>, <2 x float>* %agg.tmp.sroa.0.0..sroa_cast, align 4
  %arrayidx9 = getelementptr inbounds %struct.range, %struct.range* %B, i64 1
  %agg.tmp7.sroa.0.0..sroa_cast = bitcast %struct.range* %arrayidx9 to <2 x float>*
  %agg.tmp7.sroa.0.0.copyload = load <2 x float>, <2 x float>* %agg.tmp7.sroa.0.0..sroa_cast, align 4
  %arrayidx14 = getelementptr inbounds %struct.range, %struct.range* %B, i64 2
  %agg.tmp10.sroa.0.0..sroa_cast = bitcast %struct.range* %arrayidx14 to <2 x float>*
  %agg.tmp10.sroa.0.0.copyload = load <2 x float>, <2 x float>* %agg.tmp10.sroa.0.0..sroa_cast, align 4
  %17 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %18 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  %19 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %20 = call i8* @llvm.frameaddress(i32 0)
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i64 0, i64 0
  store volatile i8* %20, i8** %21, align 8
  %22 = call i8* @llvm.stacksave()
  %23 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %22, i8** %23, align 8
  %24 = bitcast [5 x i8*]* %19 to i8*
  %25 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.end.split478, label %for.inc

if.end.split478:                                  ; preds = %if.end
  invoke fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd.cilk(%struct.event* %16, <2 x float> %agg.tmp.sroa.0.0.copyload, <2 x float> %agg.tmp7.sroa.0.0.copyload, <2 x float> %agg.tmp10.sroa.0.0.copyload, i32 %n, [3 x %struct.cutInfo]* nonnull %cuts)
          to label %for.inc unwind label %lpad20.loopexit

for.inc:                                          ; preds = %if.end, %if.end.split478
  %arrayidx4.1 = getelementptr inbounds %struct.event*, %struct.event** %events, i64 1
  %27 = load %struct.event*, %struct.event** %arrayidx4.1, align 8, !tbaa !17
  %agg.tmp.sroa.0.0.copyload.1 = load <2 x float>, <2 x float>* %agg.tmp7.sroa.0.0..sroa_cast, align 4
  %agg.tmp7.sroa.0.0.copyload.1 = load <2 x float>, <2 x float>* %agg.tmp10.sroa.0.0..sroa_cast, align 4
  %agg.tmp10.sroa.0.0.copyload.1 = load <2 x float>, <2 x float>* %agg.tmp.sroa.0.0..sroa_cast, align 4
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %28 = call i8* @llvm.stacksave()
  store volatile i8* %28, i8** %23, align 8
  %29 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %for.inc.split477, label %for.inc.1

for.inc.split477:                                 ; preds = %for.inc
  %arrayidx.1 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 1
  invoke fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd.1.cilk(%struct.event* %27, <2 x float> %agg.tmp.sroa.0.0.copyload.1, <2 x float> %agg.tmp7.sroa.0.0.copyload.1, <2 x float> %agg.tmp10.sroa.0.0.copyload.1, i32 %n, %struct.cutInfo* nonnull %arrayidx.1, [3 x %struct.cutInfo]* nonnull %cuts)
          to label %for.inc.1 unwind label %lpad20.loopexit

lpad20.loopexit:                                  ; preds = %if.end.split478, %for.inc.split477, %for.inc.1.split476
  %lpad.loopexit380 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %lpad.loopexit380, 0
  %32 = extractvalue { i8*, i32 } %lpad.loopexit380, 1
  %33 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %34 = load atomic i32, i32* %33 acquire, align 8
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %__cilk_sync.exit, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %lpad20.loopexit
  %37 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %38 = call i8* @llvm.stacksave()
  store volatile i8* %38, i8** %23, align 8
  %39 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %41 = load atomic i32, i32* %33 acquire, align 8
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %__cilk_sync.exit, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit:                                 ; preds = %lpad20.loopexit, %cilk.sync.runtimecall.i, %cilk.sync.excepting.i
  %44 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %45 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %44, i64 0, i32 12, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %ehcleanup253

lor.lhs.false51:                                  ; preds = %__cilk_sync.exit505
  %numLeft = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %201, i32 2
  %48 = load i32, i32* %numLeft, align 8, !tbaa !19
  %numRight = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %201, i32 3
  %49 = load i32, i32* %numRight, align 4, !tbaa !21
  %add56 = add nsw i32 %49, %48
  %conv57 = sitofp i32 %add56 to float
  %50 = load float, float* @maxExpand, align 4, !tbaa !13
  %conv58 = sitofp i32 %n to float
  %mul59 = fmul float %50, %conv58
  %div60 = fmul float %mul59, 5.000000e-01
  %cmp61 = fcmp olt float %div60, %conv57
  br i1 %cmp61, label %if.then62, label %if.end66

if.then62:                                        ; preds = %__cilk_sync.exit505, %lor.lhs.false51
  %call63 = tail call i8* @_Znwm(i64 64) #19
  %51 = bitcast i8* %call63 to %struct.treeNode*
  invoke void @_ZN8treeNodeC2EPP5eventiP5range(%struct.treeNode* nonnull %51, %struct.event** nonnull %events, i32 %n, %struct.range* nonnull %B)
          to label %cleanup unwind label %lpad64

lpad64:                                           ; preds = %if.then62
  %52 = landingpad { i8*, i32 }
          cleanup
  %53 = extractvalue { i8*, i32 } %52, 0
  %54 = extractvalue { i8*, i32 } %52, 1
  tail call void @_ZdlPv(i8* nonnull %call63) #20
  br label %ehcleanup253

if.end66:                                         ; preds = %lor.lhs.false51
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #2
  %array.begin67 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBL, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* nonnull %B395, i64 24, i32 4, i1 false)
  %.sroa_idx376 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBL, i64 0, i64 %201, i32 1
  store float %203, float* %.sroa_idx376, align 4
  %55 = bitcast [3 x %struct.event*]* %leftEvents to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %55) #2
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #2
  %array.begin89 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBR, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* nonnull %B395, i64 24, i32 4, i1 false)
  %56 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %BBR, i64 0, i64 %201, i32 0
  store float %203, float* %56, align 8
  %57 = bitcast [3 x %struct.event*]* %rightEvents to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %57) #2
  %X.sroa.0.0..sroa_cast468 = bitcast i64* %X.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.0.0..sroa_cast468)
  %X.sroa.6.0..sroa_cast465 = bitcast i64* %X.sroa.6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.6.0..sroa_cast465)
  %X.sroa.7.0..sroa_cast462 = bitcast i64* %X.sroa.7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.7.0..sroa_cast462)
  %X.sroa.9.0..sroa_cast459 = bitcast i64* %X.sroa.9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.9.0..sroa_cast459)
  %X.sroa.10.0..sroa_cast456 = bitcast i64* %X.sroa.10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.10.0..sroa_cast456)
  %X.sroa.12.0..sroa_cast453 = bitcast i64* %X.sroa.12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.12.0..sroa_cast453)
  %X.sroa.13.0..sroa_cast450 = bitcast i64* %X.sroa.13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.13.0..sroa_cast450)
  %X.sroa.15.0..sroa_cast447 = bitcast i64* %X.sroa.15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.15.0..sroa_cast447)
  %X.sroa.16.0..sroa_cast444 = bitcast i64* %X.sroa.16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.16.0..sroa_cast444)
  %X.sroa.18.0..sroa_cast441 = bitcast i64* %X.sroa.18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.18.0..sroa_cast441)
  %X.sroa.19.0..sroa_cast438 = bitcast i64* %X.sroa.19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.19.0..sroa_cast438)
  %X.sroa.21.0..sroa_cast434 = bitcast i64* %X.sroa.21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %X.sroa.21.0..sroa_cast434)
  store i64 0, i64* %X.sroa.0, align 16
  store i64 0, i64* %X.sroa.6, align 8
  store i64 0, i64* %X.sroa.7, align 16
  store i64 0, i64* %X.sroa.9, align 8
  store i64 0, i64* %X.sroa.10, align 16
  store i64 0, i64* %X.sroa.12, align 8
  store i64 0, i64* %X.sroa.13, align 16
  store i64 0, i64* %X.sroa.15, align 8
  store i64 0, i64* %X.sroa.16, align 16
  store i64 0, i64* %X.sroa.18, align 8
  store i64 0, i64* %X.sroa.19, align 16
  store i64 0, i64* %X.sroa.21, align 8
  %58 = load %struct.event*, %struct.event** %events, align 8, !tbaa !17
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %59 = call i8* @llvm.stacksave()
  store volatile i8* %59, i8** %23, align 8
  %60 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %if.end66.split475, label %for.inc145

if.end66.split475:                                ; preds = %if.end66
  invoke fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd130.1.cilk(%struct.range* align 1 %202, %struct.event* align 1 %58, float %203, i32 %n, i64* nonnull align 16 %X.sroa.0, i64* nonnull align 8 %X.sroa.6, i64* nonnull align 16 %X.sroa.7, i64* nonnull align 8 %X.sroa.9)
          to label %for.inc145 unwind label %lpad137.loopexit

for.inc145:                                       ; preds = %if.end66, %if.end66.split475
  %62 = load %struct.event*, %struct.event** %arrayidx4.1, align 8, !tbaa !17
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %63 = call i8* @llvm.stacksave()
  store volatile i8* %63, i8** %23, align 8
  %64 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %for.inc145.split474, label %for.inc145.1

for.inc145.split474:                              ; preds = %for.inc145
  invoke fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd130.1.cilk(%struct.range* %202, %struct.event* %62, float %203, i32 %n, i64* nonnull %X.sroa.10, i64* nonnull %X.sroa.12, i64* nonnull %X.sroa.13, i64* nonnull %X.sroa.15)
          to label %for.inc145.1 unwind label %lpad137.loopexit

lpad137.loopexit:                                 ; preds = %if.end66.split475, %for.inc145.split474, %for.inc145.1.split473
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  %66 = extractvalue { i8*, i32 } %lpad.loopexit, 0
  %67 = extractvalue { i8*, i32 } %lpad.loopexit, 1
  %68 = load atomic i32, i32* %182 acquire, align 8
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %__cilk_sync.exit483, label %cilk.sync.savestate.i479

cilk.sync.savestate.i479:                         ; preds = %lpad137.loopexit
  %71 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %72 = call i8* @llvm.stacksave()
  store volatile i8* %72, i8** %23, align 8
  %73 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %cilk.sync.runtimecall.i480, label %cilk.sync.excepting.i481

cilk.sync.runtimecall.i480:                       ; preds = %cilk.sync.savestate.i479
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit483

cilk.sync.excepting.i481:                         ; preds = %cilk.sync.savestate.i479
  %75 = load atomic i32, i32* %182 acquire, align 8
  %76 = and i32 %75, 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %__cilk_sync.exit483, label %cilk.sync.rethrow.i482

cilk.sync.rethrow.i482:                           ; preds = %cilk.sync.excepting.i481
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit483:                              ; preds = %lpad137.loopexit, %cilk.sync.runtimecall.i480, %cilk.sync.excepting.i481
  %78 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %79 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %78, i64 0, i32 12, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %ehcleanup234

if.then188:                                       ; preds = %if.else.2, %lor.lhs.false181.1, %__cilk_sync.exit500
  %call189 = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %call.i = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call189)
  tail call void @abort() #23
  unreachable

invoke.cont224:                                   ; preds = %for.inc193.2.split.split
  %82 = load atomic i32, i32* %182 acquire, align 8
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %__cilk_sync.exit488, label %cilk.sync.savestate.i484

cilk.sync.savestate.i484:                         ; preds = %invoke.cont224
  %85 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %86 = call i8* @llvm.stacksave()
  store volatile i8* %86, i8** %23, align 8
  %87 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %cilk.sync.runtimecall.i485, label %cilk.sync.excepting.i486

cilk.sync.runtimecall.i485:                       ; preds = %cilk.sync.savestate.i484
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit488

cilk.sync.excepting.i486:                         ; preds = %cilk.sync.savestate.i484
  %89 = load atomic i32, i32* %182 acquire, align 8
  %90 = and i32 %89, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %__cilk_sync.exit488, label %cilk.sync.rethrow.i487

cilk.sync.rethrow.i487:                           ; preds = %cilk.sync.excepting.i486
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit488:                              ; preds = %invoke.cont224, %cilk.sync.runtimecall.i485, %cilk.sync.excepting.i486
  %92 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %93 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %92, i64 0, i32 12, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %93, align 8
  %call228 = invoke i8* @_Znwm(i64 64) #19
          to label %invoke.cont230 unwind label %ehcleanup

invoke.cont230:                                   ; preds = %__cilk_sync.exit488
  %96 = bitcast i8* %call228 to %struct.treeNode*
  %L.0.L.0.L.0. = load %struct.treeNode*, %struct.treeNode** %L, align 8
  %left.i = bitcast i8* %call228 to %struct.treeNode**
  store %struct.treeNode* %L.0.L.0.L.0., %struct.treeNode** %left.i, align 8, !tbaa !22
  %right.i = getelementptr inbounds i8, i8* %call228, i64 8
  %97 = bitcast i8* %right.i to %struct.treeNode**
  store %struct.treeNode* %call225, %struct.treeNode** %97, align 8, !tbaa !24
  %array.begin.i = getelementptr inbounds i8, i8* %call228, i64 16
  %cutDim.i = getelementptr inbounds i8, i8* %call228, i64 40
  %98 = bitcast i8* %cutDim.i to i32*
  store i32 %cutDim.1.1, i32* %98, align 8, !tbaa !25
  %cutOff.i = getelementptr inbounds i8, i8* %call228, i64 44
  %99 = bitcast i8* %cutOff.i to float*
  store float %203, float* %99, align 4, !tbaa !26
  %triangleIndices.i = getelementptr inbounds i8, i8* %call228, i64 48
  %100 = bitcast i8* %triangleIndices.i to i32**
  store i32* null, i32** %100, align 8, !tbaa !27
  %101 = bitcast %struct.range* %B to <2 x i64>*
  %102 = load <2 x i64>, <2 x i64>* %101, align 4
  %103 = bitcast i8* %array.begin.i to <2 x i64>*
  store <2 x i64> %102, <2 x i64>* %103, align 4
  %arrayidx4.2.i = getelementptr inbounds i8, i8* %call228, i64 32
  %104 = bitcast %struct.range* %arrayidx14 to i64*
  %105 = bitcast i8* %arrayidx4.2.i to i64*
  %106 = load i64, i64* %104, align 4
  store i64 %106, i64* %105, align 4
  %n.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %L.0.L.0.L.0., i64 0, i32 6
  %107 = load i32, i32* %n.i, align 8, !tbaa !28
  %n5.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %call225, i64 0, i32 6
  %108 = load i32, i32* %n5.i, align 8, !tbaa !28
  %add.i363 = add nsw i32 %108, %107
  %n6.i = getelementptr inbounds i8, i8* %call228, i64 56
  %109 = bitcast i8* %n6.i to i32*
  store i32 %add.i363, i32* %109, align 8, !tbaa !28
  %leaves.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %L.0.L.0.L.0., i64 0, i32 7
  %110 = load i32, i32* %leaves.i, align 4, !tbaa !29
  %leaves7.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %call225, i64 0, i32 7
  %111 = load i32, i32* %leaves7.i, align 4, !tbaa !29
  %add8.i = add nsw i32 %111, %110
  %leaves9.i = getelementptr inbounds i8, i8* %call228, i64 60
  %112 = bitcast i8* %leaves9.i to i32*
  store i32 %add8.i, i32* %112, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %L.0.L.0.L.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.0.0..sroa_cast468)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.6.0..sroa_cast465)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.7.0..sroa_cast462)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.9.0..sroa_cast459)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.10.0..sroa_cast456)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.12.0..sroa_cast453)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.13.0..sroa_cast450)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.15.0..sroa_cast447)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.16.0..sroa_cast444)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.18.0..sroa_cast441)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.19.0..sroa_cast438)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.21.0..sroa_cast434)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %57) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %55) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #2
  br label %cleanup

ehcleanup:                                        ; preds = %for.inc193.2.split472, %for.inc193.2.split.split, %__cilk_sync.exit488
  %113 = landingpad { i8*, i32 }
          cleanup
  %114 = extractvalue { i8*, i32 } %113, 0
  %115 = extractvalue { i8*, i32 } %113, 1
  %116 = load atomic i32, i32* %182 acquire, align 8
  %117 = and i32 %116, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %__cilk_sync.exit493, label %cilk.sync.savestate.i489

cilk.sync.savestate.i489:                         ; preds = %ehcleanup
  %119 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %120 = call i8* @llvm.stacksave()
  store volatile i8* %120, i8** %23, align 8
  %121 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %cilk.sync.runtimecall.i490, label %cilk.sync.excepting.i491

cilk.sync.runtimecall.i490:                       ; preds = %cilk.sync.savestate.i489
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit493

cilk.sync.excepting.i491:                         ; preds = %cilk.sync.savestate.i489
  %123 = load atomic i32, i32* %182 acquire, align 8
  %124 = and i32 %123, 16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %__cilk_sync.exit493, label %cilk.sync.rethrow.i492

cilk.sync.rethrow.i492:                           ; preds = %cilk.sync.excepting.i491
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit493:                              ; preds = %ehcleanup, %cilk.sync.runtimecall.i490, %cilk.sync.excepting.i491
  %126 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %127 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %126, i64 0, i32 12, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %127, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %L.0.L.0.L.0..sroa_cast)
  br label %ehcleanup234

ehcleanup234:                                     ; preds = %__cilk_sync.exit483, %__cilk_sync.exit493
  %ehselector.slot.1 = phi i32 [ %115, %__cilk_sync.exit493 ], [ %67, %__cilk_sync.exit483 ]
  %exn.slot.1 = phi i8* [ %114, %__cilk_sync.exit493 ], [ %66, %__cilk_sync.exit483 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.0.0..sroa_cast468)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.6.0..sroa_cast465)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.7.0..sroa_cast462)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.9.0..sroa_cast459)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.10.0..sroa_cast456)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.12.0..sroa_cast453)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.13.0..sroa_cast450)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.15.0..sroa_cast447)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.16.0..sroa_cast444)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.18.0..sroa_cast441)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.19.0..sroa_cast438)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %X.sroa.21.0..sroa_cast434)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %57) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %55) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #2
  br label %ehcleanup253

cleanup:                                          ; preds = %if.then62, %invoke.cont230
  %retval.0 = phi %struct.treeNode* [ %96, %invoke.cont230 ], [ %51, %if.then62 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #2
  br label %cleanup254

ehcleanup253:                                     ; preds = %__cilk_sync.exit, %lpad64, %ehcleanup234
  %ehselector.slot.3 = phi i32 [ %32, %__cilk_sync.exit ], [ %54, %lpad64 ], [ %ehselector.slot.1, %ehcleanup234 ]
  %exn.slot.3 = phi i8* [ %31, %__cilk_sync.exit ], [ %53, %lpad64 ], [ %exn.slot.1, %ehcleanup234 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #2
  br label %eh.resume

cleanup254:                                       ; preds = %if.then.cleanup254_crit_edge, %cleanup
  %.pre-phi = phi i32* [ %.pre, %if.then.cleanup254_crit_edge ], [ %182, %cleanup ]
  %retval.1 = phi %struct.treeNode* [ %11, %if.then.cleanup254_crit_edge ], [ %retval.0, %cleanup ]
  %130 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %131 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %130, i64 0, i32 9
  %134 = bitcast %struct.__cilkrts_stack_frame** %133 to i64*
  store atomic i64 %132, i64* %134 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %135 = load atomic i32, i32* %.pre-phi acquire, align 8
  %136 = icmp eq i32 %135, 16777216
  br i1 %136, label %__cilk_parent_epilogue.exit, label %body.i

body.i:                                           ; preds = %cleanup254
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %cleanup254, %body.i
  ret %struct.treeNode* %retval.1

eh.resume:                                        ; preds = %ehcleanup253, %lpad
  %ehselector.slot.4 = phi i32 [ %14, %lpad ], [ %ehselector.slot.3, %ehcleanup253 ]
  %exn.slot.4 = phi i8* [ %13, %lpad ], [ %exn.slot.3, %ehcleanup253 ]
  %lpad.val258 = insertvalue { i8*, i32 } undef, i8* %exn.slot.4, 0
  %lpad.val259 = insertvalue { i8*, i32 } %lpad.val258, i32 %ehselector.slot.4, 1
  %137 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %138 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %137, i64 0, i32 9
  %141 = bitcast %struct.__cilkrts_stack_frame** %140 to i64*
  store atomic i64 %139, i64* %141 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %142 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %143 = load atomic i32, i32* %142 acquire, align 8
  %144 = icmp eq i32 %143, 16777216
  br i1 %144, label %__cilk_parent_epilogue.exit495, label %body.i494

body.i494:                                        ; preds = %eh.resume
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit495

__cilk_parent_epilogue.exit495:                   ; preds = %eh.resume, %body.i494
  resume { i8*, i32 } %lpad.val259

lor.lhs.false181.1:                               ; preds = %__cilk_sync.exit500
  %X.sroa.15.0.load = load i64, i64* %X.sroa.15, align 8
  %sext398 = shl i64 %X.sroa.9.0.load, 32
  %conv186.1 = ashr exact i64 %sext398, 32
  %cmp187.1 = icmp eq i64 %X.sroa.15.0.load, %conv186.1
  br i1 %cmp187.1, label %if.else.2, label %if.then188

if.else.2:                                        ; preds = %lor.lhs.false181.1
  %X.sroa.16.0.load = load i64, i64* %X.sroa.16, align 16
  %arrayidx157.2 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %leftEvents, i64 0, i64 2
  %145 = bitcast %struct.event** %arrayidx157.2 to i64*
  store i64 %X.sroa.16.0.load, i64* %145, align 16, !tbaa !17
  %X.sroa.19.0.load = load i64, i64* %X.sroa.19, align 16
  %arrayidx162.2 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %rightEvents, i64 0, i64 2
  %146 = bitcast %struct.event** %arrayidx162.2 to i64*
  store i64 %X.sroa.19.0.load, i64* %146, align 16, !tbaa !17
  %X.sroa.18.0.load = load i64, i64* %X.sroa.18, align 8
  %cmp180.2 = icmp eq i64 %X.sroa.18.0.load, %X.sroa.12.0.load
  %X.sroa.21.0.load437 = load i64, i64* %X.sroa.21, align 8
  %cmp187.2 = icmp eq i64 %X.sroa.21.0.load437, %X.sroa.15.0.load
  %or.cond471 = and i1 %cmp180.2, %cmp187.2
  br i1 %or.cond471, label %for.inc193.2, label %if.then188

for.inc193.2:                                     ; preds = %if.else.2
  %147 = bitcast %struct.event** %events to i8**
  %148 = load i8*, i8** %147, align 8, !tbaa !17
  tail call void @free(i8* %148) #2
  %149 = bitcast %struct.event** %arrayidx4.1 to i8**
  %150 = load i8*, i8** %149, align 8, !tbaa !17
  tail call void @free(i8* %150) #2
  %151 = bitcast %struct.event** %arrayidx4.2 to i8**
  %152 = load i8*, i8** %151, align 8, !tbaa !17
  tail call void @free(i8* %152) #2
  %L.0.L.0.L.0..sroa_cast = bitcast %struct.treeNode** %L to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %L.0.L.0.L.0..sroa_cast)
  %sub = add nsw i32 %maxDepth, -1
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %153 = call i8* @llvm.stacksave()
  store volatile i8* %153, i8** %23, align 8
  %154 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %for.inc193.2.split472, label %for.inc193.2.split.split

for.inc193.2.split472:                            ; preds = %for.inc193.2
  invoke fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd207.cilk(%struct.range** nonnull %boxes, %struct.event** nonnull %arrayidx157, %struct.range* nonnull %array.begin67, i32 %conv169, i32 %sub, %struct.treeNode** nonnull %L)
          to label %for.inc193.2.split.split unwind label %ehcleanup

for.inc193.2.split.split:                         ; preds = %for.inc193.2.split472, %for.inc193.2
  %call225 = invoke %struct.treeNode* @_Z12generateNodePP5rangePP5eventS0_ii(%struct.range** nonnull %boxes, %struct.event** nonnull %arrayidx162, %struct.range* nonnull %array.begin89, i32 %conv174, i32 %sub)
          to label %invoke.cont224 unwind label %ehcleanup

for.inc145.1:                                     ; preds = %for.inc145, %for.inc145.split474
  %156 = load %struct.event*, %struct.event** %arrayidx4.2, align 8, !tbaa !17
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %157 = call i8* @llvm.stacksave()
  store volatile i8* %157, i8** %23, align 8
  %158 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %for.inc145.1.split473, label %for.inc145.2

for.inc145.1.split473:                            ; preds = %for.inc145.1
  invoke fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd130.1.cilk(%struct.range* align 1 %202, %struct.event* align 1 %156, float %203, i32 %n, i64* nonnull align 16 %X.sroa.16, i64* nonnull align 8 %X.sroa.18, i64* nonnull align 16 %X.sroa.19, i64* nonnull align 8 %X.sroa.21)
          to label %for.inc145.2 unwind label %lpad137.loopexit

for.inc145.2:                                     ; preds = %for.inc145.1, %for.inc145.1.split473
  %160 = load atomic i32, i32* %182 acquire, align 8
  %161 = and i32 %160, 2
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %__cilk_sync.exit500, label %cilk.sync.savestate.i496

cilk.sync.savestate.i496:                         ; preds = %for.inc145.2
  %163 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %164 = call i8* @llvm.stacksave()
  store volatile i8* %164, i8** %23, align 8
  %165 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %cilk.sync.runtimecall.i497, label %cilk.sync.excepting.i498

cilk.sync.runtimecall.i497:                       ; preds = %cilk.sync.savestate.i496
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit500

cilk.sync.excepting.i498:                         ; preds = %cilk.sync.savestate.i496
  %167 = load atomic i32, i32* %182 acquire, align 8
  %168 = and i32 %167, 16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %__cilk_sync.exit500, label %cilk.sync.rethrow.i499

cilk.sync.rethrow.i499:                           ; preds = %cilk.sync.excepting.i498
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit500:                              ; preds = %for.inc145.2, %cilk.sync.runtimecall.i497, %cilk.sync.excepting.i498
  %170 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %171 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %170, i64 0, i32 12, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %171, align 8
  %X.sroa.0.0.load = load i64, i64* %X.sroa.0, align 16
  %arrayidx157 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %leftEvents, i64 0, i64 0
  %174 = bitcast [3 x %struct.event*]* %leftEvents to i64*
  store i64 %X.sroa.0.0.load, i64* %174, align 16, !tbaa !17
  %X.sroa.7.0.load = load i64, i64* %X.sroa.7, align 16
  %arrayidx162 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %rightEvents, i64 0, i64 0
  %175 = bitcast [3 x %struct.event*]* %rightEvents to i64*
  store i64 %X.sroa.7.0.load, i64* %175, align 16, !tbaa !17
  %X.sroa.6.0.load = load i64, i64* %X.sroa.6, align 8
  %conv169 = trunc i64 %X.sroa.6.0.load to i32
  %X.sroa.9.0.load = load i64, i64* %X.sroa.9, align 8
  %conv174 = trunc i64 %X.sroa.9.0.load to i32
  %X.sroa.10.0.load = load i64, i64* %X.sroa.10, align 16
  %arrayidx157.1 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %leftEvents, i64 0, i64 1
  %176 = bitcast %struct.event** %arrayidx157.1 to i64*
  store i64 %X.sroa.10.0.load, i64* %176, align 8, !tbaa !17
  %X.sroa.13.0.load = load i64, i64* %X.sroa.13, align 16
  %arrayidx162.1 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %rightEvents, i64 0, i64 1
  %177 = bitcast %struct.event** %arrayidx162.1 to i64*
  store i64 %X.sroa.13.0.load, i64* %177, align 8, !tbaa !17
  %X.sroa.12.0.load = load i64, i64* %X.sroa.12, align 8
  %sext = shl i64 %X.sroa.6.0.load, 32
  %conv179.1 = ashr exact i64 %sext, 32
  %cmp180.1 = icmp eq i64 %X.sroa.12.0.load, %conv179.1
  br i1 %cmp180.1, label %lor.lhs.false181.1, label %if.then188

for.inc.1:                                        ; preds = %for.inc, %for.inc.split477
  %arrayidx4.2 = getelementptr inbounds %struct.event*, %struct.event** %events, i64 2
  %178 = load %struct.event*, %struct.event** %arrayidx4.2, align 8, !tbaa !17
  %agg.tmp.sroa.0.0.copyload.2 = load <2 x float>, <2 x float>* %agg.tmp10.sroa.0.0..sroa_cast, align 4
  %agg.tmp7.sroa.0.0.copyload.2 = load <2 x float>, <2 x float>* %agg.tmp.sroa.0.0..sroa_cast, align 4
  %agg.tmp10.sroa.0.0.copyload.2 = load <2 x float>, <2 x float>* %agg.tmp7.sroa.0.0..sroa_cast, align 4
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %179 = call i8* @llvm.stacksave()
  store volatile i8* %179, i8** %23, align 8
  %180 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %for.inc.1.split476, label %for.inc.2

for.inc.1.split476:                               ; preds = %for.inc.1
  %arrayidx.2 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 2
  invoke fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd.2.cilk(%struct.event* %178, <2 x float> %agg.tmp.sroa.0.0.copyload.2, <2 x float> %agg.tmp7.sroa.0.0.copyload.2, <2 x float> %agg.tmp10.sroa.0.0.copyload.2, i32 %n, %struct.cutInfo* nonnull %arrayidx.2, [3 x %struct.cutInfo]* nonnull %cuts)
          to label %for.inc.2 unwind label %lpad20.loopexit

for.inc.2:                                        ; preds = %for.inc.1, %for.inc.1.split476
  %182 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %183 = load atomic i32, i32* %182 acquire, align 8
  %184 = and i32 %183, 2
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %__cilk_sync.exit505, label %cilk.sync.savestate.i501

cilk.sync.savestate.i501:                         ; preds = %for.inc.2
  %186 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i16* nonnull %18) #2
  store volatile i8* %20, i8** %21, align 8
  %187 = call i8* @llvm.stacksave()
  store volatile i8* %187, i8** %23, align 8
  %188 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %24) #21
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %cilk.sync.runtimecall.i502, label %cilk.sync.excepting.i503

cilk.sync.runtimecall.i502:                       ; preds = %cilk.sync.savestate.i501
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit505

cilk.sync.excepting.i503:                         ; preds = %cilk.sync.savestate.i501
  %190 = load atomic i32, i32* %182 acquire, align 8
  %191 = and i32 %190, 16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %__cilk_sync.exit505, label %cilk.sync.rethrow.i504

cilk.sync.rethrow.i504:                           ; preds = %cilk.sync.excepting.i503
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit505:                              ; preds = %for.inc.2, %cilk.sync.runtimecall.i502, %cilk.sync.excepting.i503
  %193 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %194 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %193, i64 0, i32 12, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %194, align 8
  %cost = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 1, i32 0
  %197 = load float, float* %cost, align 16, !tbaa !30
  %cost32 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 0, i32 0
  %198 = load float, float* %cost32, align 16, !tbaa !30
  %cmp33 = fcmp olt float %197, %198
  %cutDim.1 = zext i1 %cmp33 to i32
  %cost.1 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 2, i32 0
  %199 = load float, float* %cost.1, align 16, !tbaa !30
  %idxprom30.1 = zext i1 %cmp33 to i64
  %cost32.1 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %idxprom30.1, i32 0
  %200 = load float, float* %cost32.1, align 16, !tbaa !30
  %cmp33.1 = fcmp olt float %199, %200
  %cutDim.1.1 = select i1 %cmp33.1, i32 2, i32 %cutDim.1
  %201 = zext i32 %cutDim.1.1 to i64
  %arrayidx40 = getelementptr inbounds %struct.range*, %struct.range** %boxes, i64 %201
  %202 = load %struct.range*, %struct.range** %arrayidx40, align 8, !tbaa !17
  %cutOff43 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %201, i32 1
  %203 = load float, float* %cutOff43, align 4, !tbaa !31
  %max.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 0, i32 1
  %204 = load float, float* %max.i, align 4, !tbaa !2
  %min.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 0, i32 0
  %205 = load float, float* %min.i, align 4, !tbaa !7
  %sub.i = fsub float %204, %205
  %max3.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 1, i32 1
  %206 = load float, float* %max3.i, align 4, !tbaa !2
  %min5.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 1, i32 0
  %207 = load float, float* %min5.i, align 4, !tbaa !7
  %sub6.i = fsub float %206, %207
  %max8.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 2, i32 1
  %208 = load float, float* %max8.i, align 4, !tbaa !2
  %min10.i = getelementptr inbounds %struct.range, %struct.range* %B, i64 2, i32 0
  %209 = load float, float* %min10.i, align 4, !tbaa !7
  %sub11.i = fsub float %208, %209
  %mul.i = fmul float %sub.i, %sub6.i
  %mul12.i = fmul float %sub6.i, %sub11.i
  %add.i = fadd float %mul.i, %mul12.i
  %mul13.i = fmul float %sub.i, %sub11.i
  %add14.i = fadd float %mul13.i, %add.i
  %mul15.i = fmul float %add14.i, 2.000000e+00
  %210 = load float, float* @CT, align 4, !tbaa !13
  %211 = load float, float* @CL, align 4, !tbaa !13
  %cost47 = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts, i64 0, i64 %201, i32 0
  %212 = load float, float* %cost47, align 16, !tbaa !30
  %mul = fmul float %211, %212
  %div = fdiv float %mul, %mul15.i
  %add48 = fadd float %210, %div
  %div49397 = lshr i32 %n, 1
  %conv = sitofp i32 %div49397 to float
  %cmp50 = fcmp ult float %add48, %conv
  br i1 %cmp50, label %lor.lhs.false51, label %if.then62
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #9

; Function Attrs: uwtable
define linkonce_odr void @_ZN8treeNodeC2EPP5eventiP5range(%struct.treeNode* %this, %struct.event** %E, i32 %_n, %struct.range* %B) unnamed_addr #6 comdat align 2 {
entry:
  %array.begin = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 2, i64 0
  %0 = bitcast %struct.treeNode* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load %struct.event*, %struct.event** %E, align 8, !tbaa !17
  %div = sdiv i32 %_n, 2
  %conv = sext i32 %div to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call noalias i8* @malloc(i64 %mul) #2
  %triangleIndices = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 5
  %2 = bitcast i32** %triangleIndices to i8**
  store i8* %call, i8** %2, align 8, !tbaa !27
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
  %6 = load i32, i32* %p.epil, align 4, !tbaa !8
  %and.epil = and i32 %6, 1
  %tobool.epil = icmp eq i32 %and.epil, 0
  br i1 %tobool.epil, label %if.then.epil, label %for.inc.epil

if.then.epil:                                     ; preds = %for.body.epil
  %shr.epil = ashr i32 %6, 1
  %inc.epil = add nsw i32 %k.043.epil, 1
  %idxprom7.epil = sext i32 %k.043.epil to i64
  %arrayidx8.epil = getelementptr inbounds i32, i32* %3, i64 %idxprom7.epil
  store i32 %shr.epil, i32* %arrayidx8.epil, align 4, !tbaa !12
  br label %for.inc.epil

for.inc.epil:                                     ; preds = %if.then.epil, %for.body.epil
  %k.1.epil = phi i32 [ %k.043.epil, %for.body.epil ], [ %inc.epil, %if.then.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.sub = add nsw i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !32

for.cond.cleanup:                                 ; preds = %for.inc.epil, %for.cond.cleanup.loopexit.unr-lcssa, %entry
  %n = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 6
  store i32 %div, i32* %n, align 8, !tbaa !28
  %leaves = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 7
  store i32 1, i32* %leaves, align 4, !tbaa !29
  %7 = bitcast %struct.range* %B to i64*
  %8 = bitcast %struct.range* %array.begin to i64*
  %9 = load i64, i64* %7, align 4
  store i64 %9, i64* %8, align 4
  %10 = bitcast %struct.event** %E to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !17
  tail call void @free(i8* %11) #2
  %arrayidx17.1 = getelementptr inbounds %struct.range, %struct.range* %B, i64 1
  %arrayidx20.1 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 2, i64 1
  %12 = bitcast %struct.range* %arrayidx17.1 to i64*
  %13 = bitcast %struct.range* %arrayidx20.1 to i64*
  %14 = load i64, i64* %12, align 4
  store i64 %14, i64* %13, align 4
  %arrayidx22.1 = getelementptr inbounds %struct.event*, %struct.event** %E, i64 1
  %15 = bitcast %struct.event** %arrayidx22.1 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !17
  tail call void @free(i8* %16) #2
  %arrayidx17.2 = getelementptr inbounds %struct.range, %struct.range* %B, i64 2
  %arrayidx20.2 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %this, i64 0, i32 2, i64 2
  %17 = bitcast %struct.range* %arrayidx17.2 to i64*
  %18 = bitcast %struct.range* %arrayidx20.2 to i64*
  %19 = load i64, i64* %17, align 4
  store i64 %19, i64* %18, align 4
  %arrayidx22.2 = getelementptr inbounds %struct.event*, %struct.event** %E, i64 2
  %20 = bitcast %struct.event** %arrayidx22.2 to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !17
  tail call void @free(i8* %21) #2
  ret void

for.body:                                         ; preds = %for.inc.3, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.inc.3 ]
  %k.043 = phi i32 [ 0, %for.body.lr.ph.new ], [ %k.1.3, %for.inc.3 ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.3, %for.inc.3 ]
  %p = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv, i32 1
  %22 = load i32, i32* %p, align 4, !tbaa !8
  %and = and i32 %22, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %shr = ashr i32 %22, 1
  %inc = add nsw i32 %k.043, 1
  %idxprom7 = sext i32 %k.043 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %3, i64 %idxprom7
  store i32 %shr, i32* %arrayidx8, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %k.1 = phi i32 [ %k.043, %for.body ], [ %inc, %if.then ]
  %indvars.iv.next = or i64 %indvars.iv, 1
  %p.1 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv.next, i32 1
  %23 = load i32, i32* %p.1, align 4, !tbaa !8
  %and.1 = and i32 %23, 1
  %tobool.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.1, label %if.then.1, label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %shr.1 = ashr i32 %23, 1
  %inc.1 = add nsw i32 %k.1, 1
  %idxprom7.1 = sext i32 %k.1 to i64
  %arrayidx8.1 = getelementptr inbounds i32, i32* %3, i64 %idxprom7.1
  store i32 %shr.1, i32* %arrayidx8.1, align 4, !tbaa !12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %k.1.1 = phi i32 [ %k.1, %for.inc ], [ %inc.1, %if.then.1 ]
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %p.2 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv.next.1, i32 1
  %24 = load i32, i32* %p.2, align 4, !tbaa !8
  %and.2 = and i32 %24, 1
  %tobool.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.2, label %if.then.2, label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %shr.2 = ashr i32 %24, 1
  %inc.2 = add nsw i32 %k.1.1, 1
  %idxprom7.2 = sext i32 %k.1.1 to i64
  %arrayidx8.2 = getelementptr inbounds i32, i32* %3, i64 %idxprom7.2
  store i32 %shr.2, i32* %arrayidx8.2, align 4, !tbaa !12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %k.1.2 = phi i32 [ %k.1.1, %for.inc.1 ], [ %inc.2, %if.then.2 ]
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %p.3 = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv.next.2, i32 1
  %25 = load i32, i32* %p.3, align 4, !tbaa !8
  %and.3 = and i32 %25, 1
  %tobool.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.3, label %if.then.3, label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %shr.3 = ashr i32 %25, 1
  %inc.3 = add nsw i32 %k.1.2, 1
  %idxprom7.3 = sext i32 %k.1.2 to i64
  %arrayidx8.3 = getelementptr inbounds i32, i32* %3, i64 %idxprom7.3
  store i32 %shr.3, i32* %arrayidx8.3, align 4, !tbaa !12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %k.1.3 = phi i32 [ %k.1.2, %for.inc.2 ], [ %inc.3, %if.then.3 ]
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #10

; Function Attrs: inlinehint uwtable
declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) local_unnamed_addr #11

; Function Attrs: inlinehint uwtable
declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z7findRay3rayI8_point3dIdEEPii9trianglesIS1_EP5range(%struct.ray* byval nocapture readonly align 8 %r, i32* nocapture readonly %I, i32 %n, %struct.triangles* byval nocapture readonly align 8 %Tri, %struct.range* nocapture readonly %B) local_unnamed_addr #13 {
entry:
  %0 = load i32, i32* @STATS, align 4, !tbaa !12
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @tcount, align 4, !tbaa !12
  %add = add nsw i32 %1, %n
  store i32 %add, i32* @tcount, align 4, !tbaa !12
  %2 = load i32, i32* @ccount, align 4, !tbaa !12
  %add1 = add nsw i32 %2, 1
  store i32 %add1, i32* @ccount, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %P2 = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 2
  %3 = load %class._point3d*, %class._point3d** %P2, align 8, !tbaa !34
  %cmp106 = icmp sgt i32 %n, 0
  br i1 %cmp106, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %T = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 3
  %4 = load %struct.triangle*, %struct.triangle** %T, align 8, !tbaa !36
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
  %16 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %idx.ext = sext i32 %16 to i64
  %arrayidx3 = getelementptr inbounds %struct.triangle, %struct.triangle* %4, i64 %idx.ext, i32 0, i64 0
  %17 = load i32, i32* %arrayidx3, align 4, !tbaa !12
  %idxprom4 = sext i32 %17 to i64
  %m.sroa.0.0..sroa_idx = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom4, i32 0
  %m.sroa.0.0.copyload = load double, double* %m.sroa.0.0..sroa_idx, align 8
  %m.sroa.4.0..sroa_idx67 = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom4, i32 1
  %m.sroa.4.0.copyload = load double, double* %m.sroa.4.0..sroa_idx67, align 8
  %m.sroa.5.0..sroa_idx69 = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom4, i32 2
  %m.sroa.5.0.copyload = load double, double* %m.sroa.5.0..sroa_idx69, align 8
  %arrayidx7 = getelementptr inbounds %struct.triangle, %struct.triangle* %4, i64 %idx.ext, i32 0, i64 1
  %18 = load i32, i32* %arrayidx7, align 4, !tbaa !12
  %idxprom8 = sext i32 %18 to i64
  %m.sroa.6.24..sroa_idx = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom8, i32 0
  %m.sroa.6.24.copyload = load double, double* %m.sroa.6.24..sroa_idx, align 8
  %m.sroa.8.24..sroa_idx72 = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom8, i32 1
  %19 = bitcast double* %m.sroa.8.24..sroa_idx72 to <2 x double>*
  %20 = load <2 x double>, <2 x double>* %19, align 8
  %arrayidx12 = getelementptr inbounds %struct.triangle, %struct.triangle* %4, i64 %idx.ext, i32 0, i64 2
  %21 = load i32, i32* %arrayidx12, align 4, !tbaa !12
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
  %sub4.i153.i = fsub double %m.sroa.12.48.copyload, %m.sroa.4.0.copyload
  %25 = insertelement <2 x double> undef, double %m.sroa.13.48.copyload, i32 0
  %26 = insertelement <2 x double> %25, double %m.sroa.10.48.copyload, i32 1
  %27 = insertelement <2 x double> undef, double %m.sroa.5.0.copyload, i32 0
  %28 = insertelement <2 x double> %27, double %m.sroa.0.0.copyload, i32 1
  %29 = fsub <2 x double> %26, %28
  %30 = extractelement <2 x double> %29, i32 0
  %mul.i131.i = fmul double %agg.tmp.sroa.5.0.copyload, %30
  %mul4.i134.i = fmul double %agg.tmp.sroa.6.0.copyload, %sub4.i153.i
  %sub.i135.i = fsub double %mul.i131.i, %mul4.i134.i
  %31 = insertelement <2 x double> undef, double %sub4.i153.i, i32 0
  %32 = shufflevector <2 x double> %31, <2 x double> %29, <2 x i32> <i32 0, i32 3>
  %33 = fmul <2 x double> %11, %32
  %34 = shufflevector <2 x double> %29, <2 x double> undef, <2 x i32> <i32 1, i32 0>
  %35 = fmul <2 x double> %13, %34
  %36 = fsub <2 x double> %33, %35
  %mul.i119.i = fmul double %sub.i.i, %sub.i135.i
  %37 = extractelement <2 x double> %24, i32 1
  %38 = shufflevector <2 x double> %24, <2 x double> undef, <2 x i32> <i32 1, i32 0>
  %39 = fmul <2 x double> %38, %36
  %40 = extractelement <2 x double> %39, i32 1
  %add.i123.i = fadd double %mul.i119.i, %40
  %41 = extractelement <2 x double> %39, i32 0
  %add7.i127.i = fadd double %41, %add.i123.i
  %cmp.i = fcmp ogt double %add7.i127.i, -1.000000e-08
  %cmp9.i = fcmp olt double %add7.i127.i, 1.000000e-08
  %or.cond.i = and i1 %cmp.i, %cmp9.i
  br i1 %or.cond.i, label %if.end22, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %div.i = fdiv double 1.000000e+00, %add7.i127.i
  %42 = insertelement <2 x double> undef, double %m.sroa.0.0.copyload, i32 0
  %43 = insertelement <2 x double> %42, double %m.sroa.4.0.copyload, i32 1
  %44 = fsub <2 x double> %6, %43
  %sub6.i112.i = fsub double %agg.tmp.sroa.3.0.copyload, %m.sroa.5.0.copyload
  %45 = extractelement <2 x double> %44, i32 0
  %mul.i94.i = fmul double %45, %sub.i135.i
  %46 = insertelement <2 x double> undef, double %sub6.i112.i, i32 0
  %47 = shufflevector <2 x double> %46, <2 x double> %44, <2 x i32> <i32 0, i32 3>
  %48 = fmul <2 x double> %47, %36
  %49 = extractelement <2 x double> %48, i32 1
  %add.i98.i = fadd double %mul.i94.i, %49
  %50 = extractelement <2 x double> %48, i32 0
  %add7.i102.i = fadd double %50, %add.i98.i
  %mul.i = fmul double %add7.i102.i, %div.i
  %cmp14.i = fcmp olt double %mul.i, 0.000000e+00
  %cmp15.i = fcmp ogt double %mul.i, 1.000000e+00
  %or.cond41.i = or i1 %cmp14.i, %cmp15.i
  br i1 %or.cond41.i, label %if.end22, label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i
  %51 = extractelement <2 x double> %44, i32 1
  %mul6.i87.i = fmul double %sub6.i112.i, %sub.i.i
  %mul9.i.i = fmul double %45, %37
  %sub10.i.i = fsub double %mul6.i87.i, %mul9.i.i
  %52 = fmul <2 x double> %44, %24
  %53 = insertelement <2 x double> undef, double %sub.i.i, i32 0
  %54 = shufflevector <2 x double> %53, <2 x double> %24, <2 x i32> <i32 0, i32 2>
  %55 = insertelement <2 x double> undef, double %51, i32 0
  %56 = insertelement <2 x double> %55, double %sub6.i112.i, i32 1
  %57 = fmul <2 x double> %56, %54
  %58 = fsub <2 x double> %52, %57
  %mul4.i73.i = fmul double %agg.tmp.sroa.5.0.copyload, %sub10.i.i
  %59 = fmul <2 x double> %9, %58
  %60 = extractelement <2 x double> %59, i32 1
  %add.i74.i = fadd double %mul4.i73.i, %60
  %61 = extractelement <2 x double> %59, i32 0
  %add7.i78.i = fadd double %61, %add.i74.i
  %mul21.i = fmul double %add7.i78.i, %div.i
  %cmp22.i = fcmp olt double %mul21.i, 0.000000e+00
  %add.i = fadd double %mul.i, %mul21.i
  %cmp24.i = fcmp ogt double %add.i, 1.000000e+00
  %or.cond58.i = or i1 %cmp22.i, %cmp24.i
  br i1 %or.cond58.i, label %if.end22, label %_Z20rayTriangleIntersectIdET_3rayI8_point3dIS0_EEPS3_.exit

_Z20rayTriangleIntersectIdET_3rayI8_point3dIS0_EEPS3_.exit: ; preds = %if.end17.i
  %mul4.i.i = fmul double %sub4.i153.i, %sub10.i.i
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
  %65 = load float, float* %min.i, align 4, !tbaa !7
  %sub.i = fsub float %65, %7
  %conv.i = fpext float %sub.i to double
  %cmp.i44 = fcmp ult double %add.i48, %conv.i
  br i1 %cmp.i44, label %if.end22, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.rhs
  %66 = load float, float* %max.i, align 4, !tbaa !2
  %add.i45 = fadd float %7, %66
  %conv3.i = fpext float %add.i45 to double
  %cmp4.i = fcmp ugt double %add.i48, %conv3.i
  br i1 %cmp4.i, label %if.end22, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %67 = load float, float* %min7.i, align 4, !tbaa !7
  %sub8.i = fsub float %67, %7
  %conv9.i = fpext float %sub8.i to double
  %cmp10.i = fcmp ult double %add4.i, %conv9.i
  br i1 %cmp10.i, label %if.end22, label %land.lhs.true11.i

land.lhs.true11.i:                                ; preds = %land.lhs.true5.i
  %68 = load float, float* %max14.i, align 4, !tbaa !2
  %add15.i = fadd float %7, %68
  %conv16.i = fpext float %add15.i to double
  %cmp17.i = fcmp ugt double %add4.i, %conv16.i
  br i1 %cmp17.i, label %if.end22, label %land.lhs.true18.i

land.lhs.true18.i:                                ; preds = %land.lhs.true11.i
  %69 = load float, float* %min20.i, align 4, !tbaa !7
  %sub21.i = fsub float %69, %7
  %conv22.i = fpext float %sub21.i to double
  %cmp23.i = fcmp ult double %add6.i, %conv22.i
  br i1 %cmp23.i, label %if.end22, label %_Z5inBox8_point3dIdEP5range.exit

_Z5inBox8_point3dIdEP5range.exit:                 ; preds = %land.lhs.true18.i
  %70 = load float, float* %max26.i, align 4, !tbaa !2
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
define i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nocapture readonly align 8 %r, %struct.treeNode* nocapture readonly %TN, %struct.triangles* byval nocapture readonly align 8 %Tri) local_unnamed_addr #7 {
entry:
  %oo = alloca [3 x double], align 16
  %dd = alloca [3 x double], align 16
  %triangleIndices.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 5
  %0 = load i32*, i32** %triangleIndices.i, align 8, !tbaa !27
  %cmp.i = icmp eq i32* %0, null
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %n = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 6
  %1 = load i32, i32* %n, align 8, !tbaa !28
  %arraydecay = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 0
  %call2 = call i32 @_Z7findRay3rayI8_point3dIdEEPii9trianglesIS1_EP5range(%struct.ray* byval nonnull align 8 %r, i32* nonnull %0, i32 %1, %struct.triangles* byval nonnull align 8 %Tri, %struct.range* nonnull %arraydecay)
  br label %cleanup137

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.ray* %r to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %o.sroa.5.0..sroa_idx181 = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 0, i32 2
  %4 = bitcast double* %o.sroa.5.0..sroa_idx181 to i64*
  %o.sroa.5.0.copyload198 = load i64, i64* %4, align 8
  %d.sroa.0.0..sroa_idx = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 1, i32 0
  %5 = bitcast double* %d.sroa.0.0..sroa_idx to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %d.sroa.5.0..sroa_idx176 = getelementptr inbounds %struct.ray, %struct.ray* %r, i64 0, i32 1, i32 2
  %7 = bitcast double* %d.sroa.5.0..sroa_idx176 to i64*
  %d.sroa.5.0.copyload201 = load i64, i64* %7, align 8
  %8 = bitcast [3 x double]* %oo to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #2
  %9 = bitcast [3 x double]* %oo to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %9, align 16, !tbaa !37
  %arrayinit.element5 = getelementptr inbounds [3 x double], [3 x double]* %oo, i64 0, i64 2
  %10 = bitcast double* %arrayinit.element5 to i64*
  store i64 %o.sroa.5.0.copyload198, i64* %10, align 16, !tbaa !37
  %11 = bitcast [3 x double]* %dd to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #2
  %12 = bitcast [3 x double]* %dd to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %12, align 16, !tbaa !37
  %arrayinit.element10 = getelementptr inbounds [3 x double], [3 x double]* %dd, i64 0, i64 2
  %13 = bitcast double* %arrayinit.element10 to i64*
  store i64 %d.sroa.5.0.copyload201, i64* %13, align 16, !tbaa !37
  %cutDim = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 3
  %14 = load i32, i32* %cutDim, align 8, !tbaa !25
  %cmp = icmp eq i32 %14, 2
  %add = add nsw i32 %14, 1
  %cmp12 = icmp eq i32 %14, 0
  %sub = add nsw i32 %14, -1
  %15 = sext i32 %add to i64
  %idxprom = select i1 %cmp, i64 0, i64 %15
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %oo, i64 0, i64 %idxprom
  %16 = load double, double* %arrayidx, align 8, !tbaa !37
  %17 = sext i32 %sub to i64
  %idxprom17 = select i1 %cmp12, i64 2, i64 %17
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %oo, i64 0, i64 %idxprom17
  %18 = load double, double* %arrayidx18, align 8, !tbaa !37
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %dd, i64 0, i64 %idxprom
  %19 = load double, double* %arrayidx20, align 8, !tbaa !37
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %dd, i64 0, i64 %idxprom17
  %20 = load double, double* %arrayidx22, align 8, !tbaa !37
  %cutOff = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 4
  %21 = load float, float* %cutOff, align 4, !tbaa !26
  %conv = fpext float %21 to double
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %oo, i64 0, i64 %idxprom23
  %22 = load double, double* %arrayidx24, align 8, !tbaa !37
  %sub25 = fsub double %conv, %22
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %dd, i64 0, i64 %idxprom23
  %23 = load double, double* %arrayidx27, align 8, !tbaa !37
  %div = fdiv double %sub25, %23
  %mul.i = fmul double %19, %div
  %mul2.i = fmul double %20, %div
  %add.i = fadd double %16, %mul.i
  %add4.i = fadd double %18, %mul2.i
  %rx.sroa.0.0..sroa_idx = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 %idxprom, i32 0
  %rx.sroa.0.0.copyload = load float, float* %rx.sroa.0.0..sroa_idx, align 4
  %ry.sroa.0.0..sroa_idx = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 %idxprom17, i32 0
  %ry.sroa.0.0.copyload = load float, float* %ry.sroa.0.0..sroa_idx, align 4
  %ry.sroa.4.0..sroa_idx150 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 %idxprom17, i32 1
  %ry.sroa.4.0.copyload = load float, float* %ry.sroa.4.0..sroa_idx150, align 4
  %conv40 = fpext float %rx.sroa.0.0.copyload to double
  %cmp41 = fcmp olt double %add.i, %conv40
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end
  %mul = fmul double %19, %23
  %cmp44 = fcmp ogt double %mul, 0.000000e+00
  br i1 %cmp44, label %if.then84, label %if.then90

if.else:                                          ; preds = %if.end
  %rx.sroa.4.0..sroa_idx153 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 2, i64 %idxprom, i32 1
  %rx.sroa.4.0.copyload = load float, float* %rx.sroa.4.0..sroa_idx153, align 4
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
  %24 = load %struct.treeNode*, %struct.treeNode** %right, align 8, !tbaa !24
  %call87 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %24, %struct.triangles* byval nonnull align 8 %Tri)
  br label %cleanup122

if.then90:                                        ; preds = %if.then42, %if.then50, %if.then61, %if.then72
  %left = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 0
  %25 = load %struct.treeNode*, %struct.treeNode** %left, align 8, !tbaa !22
  %call93 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %25, %struct.triangles* byval nonnull align 8 %Tri)
  br label %cleanup122

if.else94:                                        ; preds = %if.else67
  %cmp95 = fcmp ogt double %23, 0.000000e+00
  br i1 %cmp95, label %if.then96, label %if.else108

if.then96:                                        ; preds = %if.else94
  %left98 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 0
  %26 = load %struct.treeNode*, %struct.treeNode** %left98, align 8, !tbaa !22
  %call100 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %26, %struct.triangles* byval nonnull align 8 %Tri)
  %cmp101 = icmp sgt i32 %call100, -1
  br i1 %cmp101, label %cleanup122, label %if.else103

if.else103:                                       ; preds = %if.then96
  %right105 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 1
  %27 = load %struct.treeNode*, %struct.treeNode** %right105, align 8, !tbaa !24
  %call107 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %27, %struct.triangles* byval nonnull align 8 %Tri)
  br label %cleanup122

if.else108:                                       ; preds = %if.else94
  %right111 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 1
  %28 = load %struct.treeNode*, %struct.treeNode** %right111, align 8, !tbaa !24
  %call113 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %28, %struct.triangles* byval nonnull align 8 %Tri)
  %cmp114 = icmp sgt i32 %call113, -1
  br i1 %cmp114, label %cleanup122, label %if.else116

if.else116:                                       ; preds = %if.else108
  %left118 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %TN, i64 0, i32 0
  %29 = load %struct.treeNode*, %struct.treeNode** %left118, align 8, !tbaa !22
  %call120 = call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %r, %struct.treeNode* %29, %struct.triangles* byval nonnull align 8 %Tri)
  br label %cleanup122

cleanup122:                                       ; preds = %if.else116, %if.else108, %if.else103, %if.then96, %if.then90, %if.then84
  %retval.2 = phi i32 [ %call87, %if.then84 ], [ %call93, %if.then90 ], [ %call107, %if.else103 ], [ %call100, %if.then96 ], [ %call120, %if.else116 ], [ %call113, %if.else108 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #2
  br label %cleanup137

cleanup137:                                       ; preds = %cleanup122, %if.then
  %retval.3 = phi i32 [ %call2, %if.then ], [ %retval.2, %cleanup122 ]
  ret i32 %retval.3
}

; Function Attrs: uwtable
define void @_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi(%struct.triangles* byval nocapture readonly align 8 %Tri, %struct.ray* nocapture readonly %rays, i32 %numRays, %struct.treeNode* nocapture readonly %R, i32* nocapture %results) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, align 8
  %cmp26 = icmp sgt i32 %numRays, 0
  br i1 %cmp26, label %pfor.detach.lr.ph, label %sync.continue

pfor.detach.lr.ph:                                ; preds = %entry
  %1 = sext i32 %numRays to i64
  %2 = getelementptr inbounds { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %0, i64 0, i32 0
  store %struct.ray* %rays, %struct.ray** %2, align 8
  %3 = getelementptr inbounds { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %0, i64 0, i32 1
  store %struct.treeNode* %R, %struct.treeNode** %3, align 8
  %4 = getelementptr inbounds { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %0, i64 0, i32 2
  store %struct.triangles* %Tri, %struct.triangles** %4, align 8
  %5 = getelementptr inbounds { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %0, i64 0, i32 3
  store i32* %results, i32** %5, align 8
  %6 = bitcast { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }*, i64, i64)* @_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi_pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %6, i64 %1, i32 0)
  br label %sync.continue

sync.continue:                                    ; preds = %pfor.detach.lr.ph, %entry
  ret void
}

; Function Attrs: uwtable
define noalias i32* @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei(%struct.triangles* byval nocapture readonly align 8 %Tri, %struct.ray* nocapture readonly %rays, i32 %numRays) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca { i32* }, align 8
  %1 = alloca { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, align 8
  %2 = alloca { %struct.range**, %struct.event** }, align 8
  %3 = alloca { %struct.range**, %struct.event** }, align 8
  %4 = alloca { %struct.range**, %struct.event** }, align 8
  %5 = alloca { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, align 8
  %now.i.i.i.i683 = alloca %struct.timeval, align 8
  %now.i.i.i.i639 = alloca %struct.timeval, align 8
  %agg.tmp241619 = alloca %struct.triangles, align 8
  %now.i.i.i.i556 = alloca %struct.timeval, align 8
  %now.i.i.i.i = alloca %struct.timeval, align 8
  %__dnew.i.i.i.i = alloca i64, align 8
  %now.i.i = alloca %struct.timeval, align 8
  %boxes = alloca [3 x %struct.range*], align 16
  %events = alloca [3 x %struct.event*], align 16
  %boundingBox = alloca [3 x %struct.range], align 16
  %agg.tmp196 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp213 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp242 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp251 = alloca %"class.std::__cxx11::basic_string", align 8
  store i8 1, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !39
  %6 = bitcast %struct.timeval* %now.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #2
  %call.i.i = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i, i64 0, i32 0
  %7 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !43
  %conv.i.i = sitofp i64 %7 to double
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i, i64 0, i32 1
  %8 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !46
  %conv2.i.i = sitofp i64 %8 to double
  %div.i.i = fdiv double %conv2.i.i, 1.000000e+06
  %add.i.i = fadd double %div.i.i, %conv.i.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #2
  store double %add.i.i, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  %9 = bitcast [3 x %struct.range*]* %boxes to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #2
  %numTriangles = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 1
  %10 = load i32, i32* %numTriangles, align 4, !tbaa !48
  %conv = sext i32 %10 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #2
  %arrayidx = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %boxes, i64 0, i64 0
  %11 = bitcast [3 x %struct.range*]* %boxes to i8**
  store i8* %call, i8** %11, align 16, !tbaa !17
  %call.1 = tail call noalias i8* @malloc(i64 %mul) #2
  %arrayidx.1 = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %boxes, i64 0, i64 1
  %12 = bitcast %struct.range** %arrayidx.1 to i8**
  store i8* %call.1, i8** %12, align 8, !tbaa !17
  %call.2 = tail call noalias i8* @malloc(i64 %mul) #2
  %arrayidx.2 = getelementptr inbounds [3 x %struct.range*], [3 x %struct.range*]* %boxes, i64 0, i64 2
  %13 = bitcast %struct.range** %arrayidx.2 to i8**
  store i8* %call.2, i8** %13, align 16, !tbaa !17
  %cmp3811 = icmp sgt i32 %10, 0
  br i1 %cmp3811, label %pfor.detach.lr.ph, label %sync.continue

pfor.detach.lr.ph:                                ; preds = %entry
  %P1 = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 2
  %14 = bitcast %class._point3d** %P1 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !34
  %T = getelementptr inbounds %struct.triangles, %struct.triangles* %Tri, i64 0, i32 3
  %16 = bitcast %struct.triangle** %T to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* bitcast (float* @epsilon to i32*), align 4
  %19 = bitcast { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %5 to i64*
  store i64 %17, i64* %19, align 8
  %20 = getelementptr inbounds { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %5, i64 0, i32 1
  %21 = bitcast %class._point3d** %20 to i64*
  store i64 %15, i64* %21, align 8
  %22 = getelementptr inbounds { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %5, i64 0, i32 2
  %23 = bitcast float* %22 to i32*
  store i32 %18, i32* %23, align 8
  %24 = getelementptr inbounds { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %5, i64 0, i32 3
  store %struct.range** %arrayidx, %struct.range*** %24, align 8
  %25 = getelementptr inbounds { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %5, i64 0, i32 4
  store %struct.range** %arrayidx.1, %struct.range*** %25, align 8
  %26 = getelementptr inbounds { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %5, i64 0, i32 5
  store %struct.range** %arrayidx.2, %struct.range*** %26, align 8
  %27 = bitcast { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %5 to i8*
  invoke fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }*, i64, i64)* @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %27, i64 %conv, i32 0)
          to label %sync.continue unwind label %lpad92

lpad92:                                           ; preds = %pfor.detach.lr.ph
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  br label %ehcleanup328

sync.continue:                                    ; preds = %entry, %pfor.detach.lr.ph
  %31 = bitcast [3 x %struct.event*]* %events to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %31) #2
  %32 = bitcast [3 x %struct.range]* %boundingBox to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %32) #2
  %array.begin = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 0
  %mul106 = shl nsw i32 %10, 1
  %conv107 = sext i32 %mul106 to i64
  %mul108 = shl nsw i64 %conv107, 3
  %sub186 = add nsw i32 %mul106, -1
  %idxprom187 = sext i32 %sub186 to i64
  %call109 = call noalias i8* @malloc(i64 %mul108) #2
  %arrayidx111 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %events, i64 0, i64 0
  %33 = bitcast [3 x %struct.event*]* %events to i8**
  store i8* %call109, i8** %33, align 16, !tbaa !17
  %34 = bitcast i8* %call109 to %struct.event*
  br i1 %cmp3811, label %pfor.detach123.preheader, label %sync.continue169

pfor.detach123.preheader:                         ; preds = %sync.continue
  %35 = getelementptr inbounds { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %4, i64 0, i32 0
  store %struct.range** %arrayidx, %struct.range*** %35, align 8
  %36 = getelementptr inbounds { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %4, i64 0, i32 1
  store %struct.event** %arrayidx111, %struct.event*** %36, align 8
  %37 = bitcast { %struct.range**, %struct.event** }* %4 to i8*
  invoke fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.range**, %struct.event** }*, i64, i64)* @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach123.ls to void (i8*, i64, i64)*), i8* nonnull %37, i64 %conv, i32 0)
          to label %pfor.detach123.preheader.sync.continue169_crit_edge unwind label %lpad162.loopexit

pfor.detach123.preheader.sync.continue169_crit_edge: ; preds = %pfor.detach123.preheader
  %.pre = load %struct.event*, %struct.event** %arrayidx111, align 16, !tbaa !17
  br label %sync.continue169

call5.i.i.i9.i.noexc:                             ; preds = %sync.continue169.2
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp196, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i510, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !49
  %38 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !52
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp196, i64 0, i32 2, i32 0
  store i64 %38, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call5.i.i.i9.i510, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 24, i32 1, i1 false) #2
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp196, i64 0, i32 1
  store i64 %38, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !54
  %39 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !49
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %39, i64 %38
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %185) #2
  %40 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !49
  %41 = load i64, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !54
  %call2.i.i524 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* %40, i64 %41)
          to label %call2.i.i.noexc unwind label %lpad200

lpad162.loopexit:                                 ; preds = %pfor.detach123.preheader
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %lpad162

lpad162.loopexit.split-lp.loopexit:               ; preds = %pfor.detach123.1.preheader
  %lpad.loopexit825 = landingpad { i8*, i32 }
          cleanup
  br label %lpad162

lpad162.loopexit.split-lp.loopexit.split-lp:      ; preds = %pfor.detach123.2.preheader
  %lpad.loopexit.split-lp826 = landingpad { i8*, i32 }
          cleanup
  br label %lpad162

lpad162:                                          ; preds = %lpad162.loopexit.split-lp.loopexit, %lpad162.loopexit.split-lp.loopexit.split-lp, %lpad162.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %lpad162.loopexit ], [ %lpad.loopexit825, %lpad162.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp826, %lpad162.loopexit.split-lp.loopexit.split-lp ]
  %42 = extractvalue { i8*, i32 } %lpad.phi, 0
  %43 = extractvalue { i8*, i32 } %lpad.phi, 1
  br label %ehcleanup326

sync.continue169:                                 ; preds = %pfor.detach123.preheader.sync.continue169_crit_edge, %sync.continue
  %44 = phi %struct.event* [ %.pre, %pfor.detach123.preheader.sync.continue169_crit_edge ], [ %34, %sync.continue ]
  call void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %44, i32 %mul106)
  %45 = load %struct.event*, %struct.event** %arrayidx111, align 16, !tbaa !17
  %46 = bitcast %struct.event* %45 to i32*
  %47 = load i32, i32* %46, align 4, !tbaa !11
  %v189 = getelementptr inbounds %struct.event, %struct.event* %45, i64 %idxprom187, i32 0
  %48 = bitcast float* %v189 to i32*
  %49 = load i32, i32* %48, align 4, !tbaa !11
  %.sroa_cast793 = bitcast [3 x %struct.range]* %boundingBox to i32*
  store i32 %47, i32* %.sroa_cast793, align 16
  %.sroa_idx794 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 0, i32 1
  %.sroa_cast795 = bitcast float* %.sroa_idx794 to i32*
  store i32 %49, i32* %.sroa_cast795, align 4
  %call109.1 = call noalias i8* @malloc(i64 %mul108) #2
  %arrayidx111.1 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %events, i64 0, i64 1
  %50 = bitcast %struct.event** %arrayidx111.1 to i8**
  store i8* %call109.1, i8** %50, align 8, !tbaa !17
  %51 = bitcast i8* %call109.1 to %struct.event*
  br i1 %cmp3811, label %pfor.detach123.1.preheader, label %sync.continue169.1

pfor.detach123.1.preheader:                       ; preds = %sync.continue169
  %52 = getelementptr inbounds { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %3, i64 0, i32 0
  store %struct.range** %arrayidx.1, %struct.range*** %52, align 8
  %53 = getelementptr inbounds { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %3, i64 0, i32 1
  store %struct.event** %arrayidx111.1, %struct.event*** %53, align 8
  %54 = bitcast { %struct.range**, %struct.event** }* %3 to i8*
  invoke fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.range**, %struct.event** }*, i64, i64)* @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach123.1.ls to void (i8*, i64, i64)*), i8* nonnull %54, i64 %conv, i32 0)
          to label %pfor.detach123.1.preheader.sync.continue169.1_crit_edge unwind label %lpad162.loopexit.split-lp.loopexit

pfor.detach123.1.preheader.sync.continue169.1_crit_edge: ; preds = %pfor.detach123.1.preheader
  %.pre833 = load %struct.event*, %struct.event** %arrayidx111.1, align 8, !tbaa !17
  br label %sync.continue169.1

call2.i.i.noexc:                                  ; preds = %call5.i.i.i9.i.noexc
  %call1.i.i525 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call2.i.i524, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3)
          to label %call1.i.i.noexc unwind label %lpad200

call1.i.i.noexc:                                  ; preds = %call2.i.i.noexc
  %55 = load i8, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !39, !range !55
  %tobool.i.i.i521 = icmp eq i8 %55, 0
  br i1 %tobool.i.i.i521, label %_ZN5timer10reportNextEv.exit.i, label %if.end.i.i.i522

if.end.i.i.i522:                                  ; preds = %call1.i.i.noexc
  %56 = bitcast %struct.timeval* %now.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #2
  %call.i.i.i.i = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i.i.i, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i, i64 0, i32 0
  %57 = load i64, i64* %tv_sec.i.i.i.i, align 8, !tbaa !43
  %conv.i.i.i.i = sitofp i64 %57 to double
  %tv_usec.i.i.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i, i64 0, i32 1
  %58 = load i64, i64* %tv_usec.i.i.i.i, align 8, !tbaa !46
  %conv2.i.i.i.i = sitofp i64 %58 to double
  %div.i.i.i.i = fdiv double %conv2.i.i.i.i, 1.000000e+06
  %add.i.i.i.i = fadd double %div.i.i.i.i, %conv.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #2
  %59 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  %sub.i.i.i = fsub double %add.i.i.i.i, %59
  %60 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  %add.i.i.i = fadd double %60, %sub.i.i.i
  store double %add.i.i.i, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  store double %add.i.i.i.i, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  br label %_ZN5timer10reportNextEv.exit.i

_ZN5timer10reportNextEv.exit.i:                   ; preds = %if.end.i.i.i522, %call1.i.i.noexc
  %retval.0.i.i.i523 = phi double [ %sub.i.i.i, %if.end.i.i.i522 ], [ 0.000000e+00, %call1.i.i.noexc ]
  invoke void @_ZN5timer7reportTEd(%struct.timer* nonnull @_ZL3_tm, double %retval.0.i.i.i523)
          to label %invoke.cont201 unwind label %lpad200

invoke.cont201:                                   ; preds = %_ZN5timer10reportNextEv.exit.i
  %61 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !49
  %cmp.i.i.i528 = icmp eq i8* %61, %184
  br i1 %cmp.i.i.i528, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530, label %if.then.i.i529

if.then.i.i529:                                   ; preds = %invoke.cont201
  call void @_ZdlPv(i8* %61) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530: ; preds = %invoke.cont201, %if.then.i.i529
  %cmp6.i = icmp sgt i32 %10, 1
  br i1 %cmp6.i, label %while.body.lr.ph.i, label %_ZN5utilsL6log2UpIiEEiT_.exit

while.body.lr.ph.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530
  %sub.i = add nsw i32 %10, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %b.08.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %shr5.i, %while.body.i ]
  %a.07.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %while.body.i ]
  %shr5.i = lshr i32 %b.08.i, 1
  %inc.i = add nuw nsw i32 %a.07.i, 1
  %cmp.i531 = icmp eq i32 %shr5.i, 0
  br i1 %cmp.i531, label %_ZN5utilsL6log2UpIiEEiT_.exit, label %while.body.i

_ZN5utilsL6log2UpIiEEiT_.exit:                    ; preds = %while.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530
  %a.0.lcssa.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530 ], [ %inc.i, %while.body.i ]
  %sub207 = add nsw i32 %a.0.lcssa.i, -1
  %62 = load i32, i32* @maxRecursionDepth, align 4, !tbaa !12
  %cmp.i532 = icmp slt i32 %sub207, %62
  %.sroa.speculated789 = select i1 %cmp.i532, i32 %sub207, i32 %62
  %call212 = call %struct.treeNode* @_Z12generateNodePP5rangePP5eventS0_ii(%struct.range** nonnull %arrayidx, %struct.event** nonnull %arrayidx111, %struct.range* nonnull %array.begin, i32 %mul106, i32 %.sroa.speculated789)
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp213, i64 0, i32 2
  %64 = bitcast %"class.std::__cxx11::basic_string"* %agg.tmp213 to %union.anon**
  store %union.anon* %63, %union.anon** %64, align 8, !tbaa !57
  %65 = bitcast %union.anon* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %65, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 10, i32 1, i1 false) #2
  %_M_string_length.i.i.i.i.i.i551 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp213, i64 0, i32 1
  store i64 10, i64* %_M_string_length.i.i.i.i.i.i551, align 8, !tbaa !54
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp213, i64 0, i32 2, i32 1, i64 2
  store i8 0, i8* %66, align 2, !tbaa !53
  %_M_p.i.i.i.i557 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp213, i64 0, i32 0, i32 0
  %call2.i.i573 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull %65, i64 10)
          to label %call2.i.i.noexc572 unwind label %lpad217

call2.i.i.noexc572:                               ; preds = %_ZN5utilsL6log2UpIiEEiT_.exit
  %call1.i.i575 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call2.i.i573, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3)
          to label %call1.i.i.noexc574 unwind label %lpad217

call1.i.i.noexc574:                               ; preds = %call2.i.i.noexc572
  %67 = load i8, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !39, !range !55
  %tobool.i.i.i559 = icmp eq i8 %67, 0
  br i1 %tobool.i.i.i559, label %_ZN5timer10reportNextEv.exit.i571, label %if.end.i.i.i569

if.end.i.i.i569:                                  ; preds = %call1.i.i.noexc574
  %68 = bitcast %struct.timeval* %now.i.i.i.i556 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #2
  %call.i.i.i.i560 = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i.i.i556, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i.i.i561 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i556, i64 0, i32 0
  %69 = load i64, i64* %tv_sec.i.i.i.i561, align 8, !tbaa !43
  %conv.i.i.i.i562 = sitofp i64 %69 to double
  %tv_usec.i.i.i.i563 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i556, i64 0, i32 1
  %70 = load i64, i64* %tv_usec.i.i.i.i563, align 8, !tbaa !46
  %conv2.i.i.i.i564 = sitofp i64 %70 to double
  %div.i.i.i.i565 = fdiv double %conv2.i.i.i.i564, 1.000000e+06
  %add.i.i.i.i566 = fadd double %div.i.i.i.i565, %conv.i.i.i.i562
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #2
  %71 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  %sub.i.i.i567 = fsub double %add.i.i.i.i566, %71
  %72 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  %add.i.i.i568 = fadd double %72, %sub.i.i.i567
  store double %add.i.i.i568, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  store double %add.i.i.i.i566, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  br label %_ZN5timer10reportNextEv.exit.i571

_ZN5timer10reportNextEv.exit.i571:                ; preds = %if.end.i.i.i569, %call1.i.i.noexc574
  %retval.0.i.i.i570 = phi double [ %sub.i.i.i567, %if.end.i.i.i569 ], [ 0.000000e+00, %call1.i.i.noexc574 ]
  invoke void @_ZN5timer7reportTEd(%struct.timer* nonnull @_ZL3_tm, double %retval.0.i.i.i570)
          to label %invoke.cont218 unwind label %lpad217

invoke.cont218:                                   ; preds = %_ZN5timer10reportNextEv.exit.i571
  %73 = load i8*, i8** %_M_p.i.i.i.i557, align 8, !tbaa !49
  %cmp.i.i.i579 = icmp eq i8* %73, %65
  br i1 %cmp.i.i.i579, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, label %if.then.i.i580

if.then.i.i580:                                   ; preds = %invoke.cont218
  call void @_ZdlPv(i8* %73) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581: ; preds = %invoke.cont218, %if.then.i.i580
  %74 = load i32, i32* @STATS, align 4, !tbaa !12
  %tobool = icmp eq i32 %74, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581
  %call1.i583 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 30)
  %n223 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %call212, i64 0, i32 6
  %75 = load i32, i32* %n223, align 8, !tbaa !28
  %call224 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i32 %75)
  %call1.i586 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call224, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 10)
  %leaves = getelementptr inbounds %struct.treeNode, %struct.treeNode* %call212, i64 0, i32 7
  %76 = load i32, i32* %leaves, align 4, !tbaa !29
  %call226 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull %call224, i32 %76)
  %77 = bitcast %"class.std::basic_ostream"* %call226 to i8**
  %vtable.i589 = load i8*, i8** %77, align 8, !tbaa !58
  %vbase.offset.ptr.i590 = getelementptr i8, i8* %vtable.i589, i64 -24
  %78 = bitcast i8* %vbase.offset.ptr.i590 to i64*
  %vbase.offset.i591 = load i64, i64* %78, align 8
  %79 = bitcast %"class.std::basic_ostream"* %call226 to i8*
  %add.ptr.i592 = getelementptr inbounds i8, i8* %79, i64 %vbase.offset.i591
  %_M_ctype.i.i593 = getelementptr inbounds i8, i8* %add.ptr.i592, i64 240
  %80 = bitcast i8* %_M_ctype.i.i593 to %"class.std::ctype"**
  %81 = load %"class.std::ctype"*, %"class.std::ctype"** %80, align 8, !tbaa !60
  %tobool.i.i.i594 = icmp eq %"class.std::ctype"* %81, null
  br i1 %tobool.i.i.i594, label %if.then.i.i.i595, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i598

if.then.i.i.i595:                                 ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i598: ; preds = %if.then
  %_M_widen_ok.i.i.i596 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 8
  %82 = load i8, i8* %_M_widen_ok.i.i.i596, align 8, !tbaa !62
  %tobool.i3.i.i597 = icmp eq i8 %82, 0
  br i1 %tobool.i3.i.i597, label %if.end.i.i.i604, label %if.then.i4.i.i600

if.then.i4.i.i600:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i598
  %arrayidx.i.i.i599 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 9, i64 10
  %83 = load i8, i8* %arrayidx.i.i.i599, align 1, !tbaa !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit608

if.end.i.i.i604:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i598
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %81)
  %84 = bitcast %"class.std::ctype"* %81 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i601 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %84, align 8, !tbaa !58
  %vfn.i.i.i602 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i601, i64 6
  %85 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i602, align 8
  %call.i.i.i603 = call signext i8 %85(%"class.std::ctype"* nonnull %81, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit608

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit608: ; preds = %if.then.i4.i.i600, %if.end.i.i.i604
  %retval.0.i.i.i605 = phi i8 [ %83, %if.then.i4.i.i600 ], [ %call.i.i.i603, %if.end.i.i.i604 ]
  %call1.i606 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call226, i8 signext %retval.0.i.i.i605)
  %call.i.i607 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i606)
  br label %if.end

lpad198:                                          ; preds = %sync.continue169.2
  %86 = landingpad { i8*, i32 }
          cleanup
  %87 = extractvalue { i8*, i32 } %86, 0
  %88 = extractvalue { i8*, i32 } %86, 1
  br label %ehcleanup326

lpad200:                                          ; preds = %_ZN5timer10reportNextEv.exit.i, %call2.i.i.noexc, %call5.i.i.i9.i.noexc
  %89 = landingpad { i8*, i32 }
          cleanup
  %90 = extractvalue { i8*, i32 } %89, 0
  %91 = extractvalue { i8*, i32 } %89, 1
  %92 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !49
  %cmp.i.i.i611 = icmp eq i8* %92, %184
  br i1 %cmp.i.i.i611, label %ehcleanup326, label %if.then.i.i612

if.then.i.i612:                                   ; preds = %lpad200
  call void @_ZdlPv(i8* %92) #2
  br label %ehcleanup326

lpad217:                                          ; preds = %_ZN5timer10reportNextEv.exit.i571, %call2.i.i.noexc572, %_ZN5utilsL6log2UpIiEEiT_.exit
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = extractvalue { i8*, i32 } %93, 0
  %95 = extractvalue { i8*, i32 } %93, 1
  %96 = load i8*, i8** %_M_p.i.i.i.i557, align 8, !tbaa !49
  %cmp.i.i.i616 = icmp eq i8* %96, %65
  br i1 %cmp.i.i.i616, label %ehcleanup326, label %if.then.i.i617

if.then.i.i617:                                   ; preds = %lpad217
  call void @_ZdlPv(i8* %96) #2
  br label %ehcleanup326

if.end:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit608
  %97 = load i8*, i8** %11, align 16, !tbaa !17
  call void @free(i8* %97) #2
  %98 = load i8*, i8** %12, align 8, !tbaa !17
  call void @free(i8* %98) #2
  %99 = load i8*, i8** %13, align 16, !tbaa !17
  call void @free(i8* %99) #2
  %conv238 = sext i32 %numRays to i64
  %mul239 = shl nsw i64 %conv238, 2
  %call240 = call noalias i8* @malloc(i64 %mul239) #2
  %100 = bitcast i8* %call240 to i32*
  %101 = bitcast %struct.triangles* %Tri to i8*
  %102 = bitcast %struct.triangles* %agg.tmp241619 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %102)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %102, i8* nonnull %101, i64 24, i32 8, i1 false)
  %cmp26.i = icmp sgt i32 %numRays, 0
  br i1 %cmp26.i, label %pfor.detach.i.preheader, label %_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit

pfor.detach.i.preheader:                          ; preds = %if.end
  %103 = getelementptr inbounds { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %1, i64 0, i32 0
  store %struct.ray* %rays, %struct.ray** %103, align 8
  %104 = getelementptr inbounds { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %1, i64 0, i32 1
  store %struct.treeNode* %call212, %struct.treeNode** %104, align 8
  %105 = getelementptr inbounds { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %1, i64 0, i32 2
  store %struct.triangles* %agg.tmp241619, %struct.triangles** %105, align 8
  %106 = getelementptr inbounds { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %1, i64 0, i32 3
  %107 = bitcast i32** %106 to i8**
  store i8* %call240, i8** %107, align 8
  %108 = bitcast { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %1 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }*, i64, i64)* @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach.i.ls to void (i8*, i64, i64)*), i8* nonnull %108, i64 %conv238, i32 0)
  br label %_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit

_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit: ; preds = %pfor.detach.i.preheader, %if.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %102)
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp242, i64 0, i32 2
  %110 = bitcast %"class.std::__cxx11::basic_string"* %agg.tmp242 to %union.anon**
  store %union.anon* %109, %union.anon** %110, align 8, !tbaa !57
  %111 = bitcast %union.anon* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %111, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 14, i32 1, i1 false) #2
  %_M_string_length.i.i.i.i.i.i634 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp242, i64 0, i32 1
  store i64 14, i64* %_M_string_length.i.i.i.i.i.i634, align 8, !tbaa !54
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp242, i64 0, i32 2, i32 1, i64 6
  store i8 0, i8* %112, align 2, !tbaa !53
  %_M_p.i.i.i.i640 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp242, i64 0, i32 0, i32 0
  %call2.i.i656 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull %111, i64 14)
          to label %call2.i.i.noexc655 unwind label %lpad246

call2.i.i.noexc655:                               ; preds = %_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit
  %call1.i.i658 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call2.i.i656, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3)
          to label %call1.i.i.noexc657 unwind label %lpad246

call1.i.i.noexc657:                               ; preds = %call2.i.i.noexc655
  %113 = load i8, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !39, !range !55
  %tobool.i.i.i642 = icmp eq i8 %113, 0
  br i1 %tobool.i.i.i642, label %_ZN5timer10reportNextEv.exit.i654, label %if.end.i.i.i652

if.end.i.i.i652:                                  ; preds = %call1.i.i.noexc657
  %114 = bitcast %struct.timeval* %now.i.i.i.i639 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %114) #2
  %call.i.i.i.i643 = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i.i.i639, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i.i.i644 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i639, i64 0, i32 0
  %115 = load i64, i64* %tv_sec.i.i.i.i644, align 8, !tbaa !43
  %conv.i.i.i.i645 = sitofp i64 %115 to double
  %tv_usec.i.i.i.i646 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i639, i64 0, i32 1
  %116 = load i64, i64* %tv_usec.i.i.i.i646, align 8, !tbaa !46
  %conv2.i.i.i.i647 = sitofp i64 %116 to double
  %div.i.i.i.i648 = fdiv double %conv2.i.i.i.i647, 1.000000e+06
  %add.i.i.i.i649 = fadd double %div.i.i.i.i648, %conv.i.i.i.i645
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %114) #2
  %117 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  %sub.i.i.i650 = fsub double %add.i.i.i.i649, %117
  %118 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  %add.i.i.i651 = fadd double %118, %sub.i.i.i650
  store double %add.i.i.i651, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  store double %add.i.i.i.i649, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  br label %_ZN5timer10reportNextEv.exit.i654

_ZN5timer10reportNextEv.exit.i654:                ; preds = %if.end.i.i.i652, %call1.i.i.noexc657
  %retval.0.i.i.i653 = phi double [ %sub.i.i.i650, %if.end.i.i.i652 ], [ 0.000000e+00, %call1.i.i.noexc657 ]
  invoke void @_ZN5timer7reportTEd(%struct.timer* nonnull @_ZL3_tm, double %retval.0.i.i.i653)
          to label %invoke.cont247 unwind label %lpad246

invoke.cont247:                                   ; preds = %_ZN5timer10reportNextEv.exit.i654
  %119 = load i8*, i8** %_M_p.i.i.i.i640, align 8, !tbaa !49
  %cmp.i.i.i662 = icmp eq i8* %119, %111
  br i1 %cmp.i.i.i662, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665, label %if.then.i.i663

if.then.i.i663:                                   ; preds = %invoke.cont247
  call void @_ZdlPv(i8* %119) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665: ; preds = %invoke.cont247, %if.then.i.i663
  call void @_ZN8treeNode3delEPS_(%struct.treeNode* nonnull %call212)
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp251, i64 0, i32 2
  %121 = bitcast %"class.std::__cxx11::basic_string"* %agg.tmp251 to %union.anon**
  store %union.anon* %120, %union.anon** %121, align 8, !tbaa !57
  %122 = bitcast %union.anon* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %122, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 11, i32 1, i1 false) #2
  %_M_string_length.i.i.i.i.i.i678 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp251, i64 0, i32 1
  store i64 11, i64* %_M_string_length.i.i.i.i.i.i678, align 8, !tbaa !54
  %123 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp251, i64 0, i32 2, i32 1, i64 3
  store i8 0, i8* %123, align 1, !tbaa !53
  %_M_p.i.i.i.i684 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp251, i64 0, i32 0, i32 0
  %call2.i.i700 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull %122, i64 11)
          to label %call2.i.i.noexc699 unwind label %lpad255

call2.i.i.noexc699:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665
  %call1.i.i702 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call2.i.i700, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3)
          to label %call1.i.i.noexc701 unwind label %lpad255

call1.i.i.noexc701:                               ; preds = %call2.i.i.noexc699
  %124 = load i8, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !39, !range !55
  %tobool.i.i.i686 = icmp eq i8 %124, 0
  br i1 %tobool.i.i.i686, label %_ZN5timer10reportNextEv.exit.i698, label %if.end.i.i.i696

if.end.i.i.i696:                                  ; preds = %call1.i.i.noexc701
  %125 = bitcast %struct.timeval* %now.i.i.i.i683 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %125) #2
  %call.i.i.i.i687 = call i32 @gettimeofday(%struct.timeval* nonnull %now.i.i.i.i683, %struct.timezone* nonnull getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5)) #2
  %tv_sec.i.i.i.i688 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i683, i64 0, i32 0
  %126 = load i64, i64* %tv_sec.i.i.i.i688, align 8, !tbaa !43
  %conv.i.i.i.i689 = sitofp i64 %126 to double
  %tv_usec.i.i.i.i690 = getelementptr inbounds %struct.timeval, %struct.timeval* %now.i.i.i.i683, i64 0, i32 1
  %127 = load i64, i64* %tv_usec.i.i.i.i690, align 8, !tbaa !46
  %conv2.i.i.i.i691 = sitofp i64 %127 to double
  %div.i.i.i.i692 = fdiv double %conv2.i.i.i.i691, 1.000000e+06
  %add.i.i.i.i693 = fadd double %div.i.i.i.i692, %conv.i.i.i.i689
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %125) #2
  %128 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  %sub.i.i.i694 = fsub double %add.i.i.i.i693, %128
  %129 = load double, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  %add.i.i.i695 = fadd double %129, %sub.i.i.i694
  store double %add.i.i.i695, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  store double %add.i.i.i.i693, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 1), align 8, !tbaa !47
  br label %_ZN5timer10reportNextEv.exit.i698

_ZN5timer10reportNextEv.exit.i698:                ; preds = %if.end.i.i.i696, %call1.i.i.noexc701
  %retval.0.i.i.i697 = phi double [ %sub.i.i.i694, %if.end.i.i.i696 ], [ 0.000000e+00, %call1.i.i.noexc701 ]
  invoke void @_ZN5timer7reportTEd(%struct.timer* nonnull @_ZL3_tm, double %retval.0.i.i.i697)
          to label %invoke.cont256 unwind label %lpad255

invoke.cont256:                                   ; preds = %_ZN5timer10reportNextEv.exit.i698
  %130 = load i8*, i8** %_M_p.i.i.i.i684, align 8, !tbaa !49
  %cmp.i.i.i536 = icmp eq i8* %130, %122
  br i1 %cmp.i.i.i536, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, label %if.then.i.i537

if.then.i.i537:                                   ; preds = %invoke.cont256
  call void @_ZdlPv(i8* %130) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538: ; preds = %invoke.cont256, %if.then.i.i537
  %131 = load i32, i32* @CHECK, align 4, !tbaa !12
  %tobool260 = icmp eq i32 %131, 0
  br i1 %tobool260, label %if.end314, label %if.then261

if.then261:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538
  %mul263 = shl nsw i64 %conv, 2
  %call264 = call noalias i8* @malloc(i64 %mul263) #2
  %132 = bitcast i8* %call264 to i32*
  br i1 %cmp3811, label %pfor.cond.cleanup275.loopexit, label %for.body293.preheader

pfor.cond.cleanup275.loopexit:                    ; preds = %if.then261
  %wide.trip.count = zext i32 %10 to i64
  %133 = bitcast { i32* }* %0 to i8**
  store i8* %call264, i8** %133, align 8
  %134 = bitcast { i32* }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i32* }*, i64, i64)* @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach276.ls to void (i8*, i64, i64)*), i8* nonnull %134, i64 %wide.trip.count, i32 0)
  br label %for.body293.preheader

for.body293.preheader:                            ; preds = %if.then261, %pfor.cond.cleanup275.loopexit
  br label %for.body293

lpad246:                                          ; preds = %_ZN5timer10reportNextEv.exit.i654, %call2.i.i.noexc655, %_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi.exit
  %135 = landingpad { i8*, i32 }
          cleanup
  %136 = extractvalue { i8*, i32 } %135, 0
  %137 = extractvalue { i8*, i32 } %135, 1
  %138 = load i8*, i8** %_M_p.i.i.i.i640, align 8, !tbaa !49
  %cmp.i.i.i517 = icmp eq i8* %138, %111
  br i1 %cmp.i.i.i517, label %ehcleanup326, label %if.then.i.i518

if.then.i.i518:                                   ; preds = %lpad246
  call void @_ZdlPv(i8* %138) #2
  br label %ehcleanup326

lpad255:                                          ; preds = %_ZN5timer10reportNextEv.exit.i698, %call2.i.i.noexc699, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665
  %139 = landingpad { i8*, i32 }
          cleanup
  %140 = extractvalue { i8*, i32 } %139, 0
  %141 = extractvalue { i8*, i32 } %139, 1
  %142 = load i8*, i8** %_M_p.i.i.i.i684, align 8, !tbaa !49
  %cmp.i.i.i = icmp eq i8* %142, %122
  br i1 %cmp.i.i.i, label %ehcleanup326, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad255
  call void @_ZdlPv(i8* %142) #2
  br label %ehcleanup326

for.cond290:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit496
  %cmp291 = icmp ult i64 %indvars.iv.next, 10
  br i1 %cmp291, label %for.body293, label %if.end314

for.body293:                                      ; preds = %for.body293.preheader, %for.cond290
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond290 ], [ 0, %for.body293.preheader ]
  %arrayidx295 = getelementptr inbounds i32, i32* %100, i64 %indvars.iv
  %143 = load i32, i32* %arrayidx295, align 4, !tbaa !12
  %call296 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i32 %143)
  %144 = bitcast %"class.std::basic_ostream"* %call296 to i8**
  %vtable.i477 = load i8*, i8** %144, align 8, !tbaa !58
  %vbase.offset.ptr.i478 = getelementptr i8, i8* %vtable.i477, i64 -24
  %145 = bitcast i8* %vbase.offset.ptr.i478 to i64*
  %vbase.offset.i479 = load i64, i64* %145, align 8
  %146 = bitcast %"class.std::basic_ostream"* %call296 to i8*
  %add.ptr.i480 = getelementptr inbounds i8, i8* %146, i64 %vbase.offset.i479
  %_M_ctype.i.i481 = getelementptr inbounds i8, i8* %add.ptr.i480, i64 240
  %147 = bitcast i8* %_M_ctype.i.i481 to %"class.std::ctype"**
  %148 = load %"class.std::ctype"*, %"class.std::ctype"** %147, align 8, !tbaa !60
  %tobool.i.i.i482 = icmp eq %"class.std::ctype"* %148, null
  br i1 %tobool.i.i.i482, label %if.then.i.i.i483, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i486

if.then.i.i.i483:                                 ; preds = %for.body293
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i486: ; preds = %for.body293
  %_M_widen_ok.i.i.i484 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %148, i64 0, i32 8
  %149 = load i8, i8* %_M_widen_ok.i.i.i484, align 8, !tbaa !62
  %tobool.i3.i.i485 = icmp eq i8 %149, 0
  br i1 %tobool.i3.i.i485, label %if.end.i.i.i492, label %if.then.i4.i.i488

if.then.i4.i.i488:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i486
  %arrayidx.i.i.i487 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %148, i64 0, i32 9, i64 10
  %150 = load i8, i8* %arrayidx.i.i.i487, align 1, !tbaa !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit496

if.end.i.i.i492:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i486
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %148)
  %151 = bitcast %"class.std::ctype"* %148 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i489 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %151, align 8, !tbaa !58
  %vfn.i.i.i490 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i489, i64 6
  %152 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i490, align 8
  %call.i.i.i491 = call signext i8 %152(%"class.std::ctype"* nonnull %148, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit496

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit496: ; preds = %if.then.i4.i.i488, %if.end.i.i.i492
  %retval.0.i.i.i493 = phi i8 [ %150, %if.then.i4.i.i488 ], [ %call.i.i.i491, %if.end.i.i.i492 ]
  %call1.i494 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call296, i8 signext %retval.0.i.i.i493)
  %call.i.i495 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i494)
  %arrayidx300 = getelementptr inbounds %struct.ray, %struct.ray* %rays, i64 %indvars.iv
  %call303 = call i32 @_Z7findRay3rayI8_point3dIdEEPii9trianglesIS1_EP5range(%struct.ray* byval nonnull align 8 %arrayidx300, i32* %132, i32 %10, %struct.triangles* byval nonnull align 8 %Tri, %struct.range* nonnull %array.begin)
  %cmp306 = icmp eq i32 %call303, %143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp306, label %for.cond290, label %if.then307

if.then307:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit496
  %call308 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %call.i = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call308)
  call void @abort() #23
  unreachable

if.end314:                                        ; preds = %for.cond290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538
  %153 = load i32, i32* @STATS, align 4, !tbaa !12
  %tobool315 = icmp eq i32 %153, 0
  br i1 %tobool315, label %if.end322, label %if.then316

if.then316:                                       ; preds = %if.end314
  %call1.i456 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64 7)
  %154 = load i32, i32* @tcount, align 4, !tbaa !12
  %call318 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i32 %154)
  %call1.i449 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call318, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 8)
  %155 = load i32, i32* @ccount, align 4, !tbaa !12
  %call320 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull %call318, i32 %155)
  %156 = bitcast %"class.std::basic_ostream"* %call320 to i8**
  %vtable.i = load i8*, i8** %156, align 8, !tbaa !58
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %157 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %157, align 8
  %158 = bitcast %"class.std::basic_ostream"* %call320 to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %158, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 240
  %159 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %160 = load %"class.std::ctype"*, %"class.std::ctype"** %159, align 8, !tbaa !60
  %tobool.i.i.i = icmp eq %"class.std::ctype"* %160, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then316
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then316
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %160, i64 0, i32 8
  %161 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !62
  %tobool.i3.i.i = icmp eq i8 %161, 0
  br i1 %tobool.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %160, i64 0, i32 9, i64 10
  %162 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %160)
  %163 = bitcast %"class.std::ctype"* %160 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %163, align 8, !tbaa !58
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6
  %164 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i.i.i = call signext i8 %164(%"class.std::ctype"* nonnull %160, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i4.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %162, %if.then.i4.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call320, i8 signext %retval.0.i.i.i)
  %call.i.i438 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i)
  br label %if.end322

if.end322:                                        ; preds = %if.end314, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %32) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %31) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #2
  ret i32* %100

ehcleanup326:                                     ; preds = %lpad162, %lpad255, %if.then.i.i, %lpad246, %if.then.i.i518, %lpad217, %if.then.i.i617, %lpad198, %lpad200, %if.then.i.i612
  %ehselector.slot94.6 = phi i32 [ %43, %lpad162 ], [ %88, %lpad198 ], [ %91, %lpad200 ], [ %91, %if.then.i.i612 ], [ %95, %lpad217 ], [ %95, %if.then.i.i617 ], [ %137, %lpad246 ], [ %137, %if.then.i.i518 ], [ %141, %lpad255 ], [ %141, %if.then.i.i ]
  %exn.slot93.6 = phi i8* [ %42, %lpad162 ], [ %87, %lpad198 ], [ %90, %lpad200 ], [ %90, %if.then.i.i612 ], [ %94, %lpad217 ], [ %94, %if.then.i.i617 ], [ %136, %lpad246 ], [ %136, %if.then.i.i518 ], [ %140, %lpad255 ], [ %140, %if.then.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %32) #2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %31) #2
  br label %ehcleanup328

ehcleanup328:                                     ; preds = %lpad92, %ehcleanup326
  %ehselector.slot94.7 = phi i32 [ %ehselector.slot94.6, %ehcleanup326 ], [ %30, %lpad92 ]
  %exn.slot93.7 = phi i8* [ %exn.slot93.6, %ehcleanup326 ], [ %29, %lpad92 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #2
  %lpad.val333 = insertvalue { i8*, i32 } undef, i8* %exn.slot93.7, 0
  %lpad.val334 = insertvalue { i8*, i32 } %lpad.val333, i32 %ehselector.slot94.7, 1
  resume { i8*, i32 } %lpad.val334

sync.continue169.1:                               ; preds = %pfor.detach123.1.preheader.sync.continue169.1_crit_edge, %sync.continue169
  %165 = phi %struct.event* [ %.pre833, %pfor.detach123.1.preheader.sync.continue169.1_crit_edge ], [ %51, %sync.continue169 ]
  call void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %165, i32 %mul106)
  %166 = load %struct.event*, %struct.event** %arrayidx111.1, align 8, !tbaa !17
  %167 = bitcast %struct.event* %166 to i32*
  %168 = load i32, i32* %167, align 4, !tbaa !11
  %v189.1 = getelementptr inbounds %struct.event, %struct.event* %166, i64 %idxprom187, i32 0
  %169 = bitcast float* %v189.1 to i32*
  %170 = load i32, i32* %169, align 4, !tbaa !11
  %arrayidx191.1 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 1
  %.sroa_cast793.1 = bitcast %struct.range* %arrayidx191.1 to i32*
  store i32 %168, i32* %.sroa_cast793.1, align 8
  %.sroa_idx794.1 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 1, i32 1
  %.sroa_cast795.1 = bitcast float* %.sroa_idx794.1 to i32*
  store i32 %170, i32* %.sroa_cast795.1, align 4
  %call109.2 = call noalias i8* @malloc(i64 %mul108) #2
  %arrayidx111.2 = getelementptr inbounds [3 x %struct.event*], [3 x %struct.event*]* %events, i64 0, i64 2
  %171 = bitcast %struct.event** %arrayidx111.2 to i8**
  store i8* %call109.2, i8** %171, align 16, !tbaa !17
  %172 = bitcast i8* %call109.2 to %struct.event*
  br i1 %cmp3811, label %pfor.detach123.2.preheader, label %sync.continue169.2

pfor.detach123.2.preheader:                       ; preds = %sync.continue169.1
  %173 = getelementptr inbounds { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %2, i64 0, i32 0
  store %struct.range** %arrayidx.2, %struct.range*** %173, align 8
  %174 = getelementptr inbounds { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %2, i64 0, i32 1
  store %struct.event** %arrayidx111.2, %struct.event*** %174, align 8
  %175 = bitcast { %struct.range**, %struct.event** }* %2 to i8*
  invoke fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.range**, %struct.event** }*, i64, i64)* @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach123.2.ls to void (i8*, i64, i64)*), i8* nonnull %175, i64 %conv, i32 0)
          to label %pfor.detach123.2.preheader.sync.continue169.2_crit_edge unwind label %lpad162.loopexit.split-lp.loopexit.split-lp

pfor.detach123.2.preheader.sync.continue169.2_crit_edge: ; preds = %pfor.detach123.2.preheader
  %.pre834 = load %struct.event*, %struct.event** %arrayidx111.2, align 16, !tbaa !17
  br label %sync.continue169.2

sync.continue169.2:                               ; preds = %pfor.detach123.2.preheader.sync.continue169.2_crit_edge, %sync.continue169.1
  %176 = phi %struct.event* [ %.pre834, %pfor.detach123.2.preheader.sync.continue169.2_crit_edge ], [ %172, %sync.continue169.1 ]
  call void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %176, i32 %mul106)
  %177 = load %struct.event*, %struct.event** %arrayidx111.2, align 16, !tbaa !17
  %178 = bitcast %struct.event* %177 to i32*
  %179 = load i32, i32* %178, align 4, !tbaa !11
  %v189.2 = getelementptr inbounds %struct.event, %struct.event* %177, i64 %idxprom187, i32 0
  %180 = bitcast float* %v189.2 to i32*
  %181 = load i32, i32* %180, align 4, !tbaa !11
  %arrayidx191.2 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 2
  %.sroa_cast793.2 = bitcast %struct.range* %arrayidx191.2 to i32*
  store i32 %179, i32* %.sroa_cast793.2, align 16
  %.sroa_idx794.2 = getelementptr inbounds [3 x %struct.range], [3 x %struct.range]* %boundingBox, i64 0, i64 2, i32 1
  %.sroa_cast795.2 = bitcast float* %.sroa_idx794.2 to i32*
  store i32 %181, i32* %.sroa_cast795.2, align 4
  %182 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.tmp196, i64 0, i32 2
  %183 = bitcast %"class.std::__cxx11::basic_string"* %agg.tmp196 to %union.anon**
  store %union.anon* %182, %union.anon** %183, align 8, !tbaa !57
  %184 = bitcast %union.anon* %182 to i8*
  %185 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %185) #2
  store i64 24, i64* %__dnew.i.i.i.i, align 8, !tbaa !52
  %call5.i.i.i9.i510 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %agg.tmp196, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %lpad198
}

; Function Attrs: uwtable
define linkonce_odr void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %A, i32 %n) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, align 8
  %1 = alloca { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, align 8
  %2 = alloca { %struct.event*, %struct.event* }, align 8
  %3 = alloca { i64, %struct.event*, %struct.event* }, align 8
  %ref.tmp = alloca %struct.transpose, align 8
  %ref.tmp127 = alloca %struct.blockTrans, align 8
  %cmp = icmp slt i32 %n, 1000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @_Z9quickSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %A, i32 %n)
  br label %if.end206

if.else:                                          ; preds = %entry
  %conv.i = sitofp i32 %n to double
  %sqrt = tail call double @sqrt(double %conv.i) #1
  %4 = tail call double @llvm.fabs.f64(double %sqrt)
  %5 = tail call double @llvm.ceil.f64(double %4)
  %conv = fptosi double %5 to i64
  %div = sdiv i64 %conv, 2
  %add = add nsw i64 %div, 1
  %sub = add nsw i32 %n, -1
  %conv1 = sext i32 %sub to i64
  %div2 = sdiv i64 %conv1, %add
  %add3 = add nsw i64 %div2, 1
  %conv6 = trunc i64 %add to i32
  %sext = mul i64 %add, 42949672960
  %conv7 = ashr exact i64 %sext, 32
  %mul8 = ashr exact i64 %sext, 29
  %call9 = tail call noalias i8* @malloc(i64 %mul8) #2
  %6 = bitcast i8* %call9 to %struct.event*
  %cmp14383 = icmp sgt i64 %sext, 0
  br i1 %cmp14383, label %pfor.detach.lr.ph, label %sync.continue

pfor.detach.lr.ph:                                ; preds = %if.else
  %conv18 = sext i32 %n to i64
  %7 = icmp sgt i64 %conv7, 1
  %smax = select i1 %7, i64 %conv7, i64 1
  %8 = getelementptr inbounds { i64, %struct.event*, %struct.event* }, { i64, %struct.event*, %struct.event* }* %3, i64 0, i32 0
  store i64 %conv18, i64* %8, align 8
  %9 = getelementptr inbounds { i64, %struct.event*, %struct.event* }, { i64, %struct.event*, %struct.event* }* %3, i64 0, i32 1
  store %struct.event* %A, %struct.event** %9, align 8
  %10 = getelementptr inbounds { i64, %struct.event*, %struct.event* }, { i64, %struct.event*, %struct.event* }* %3, i64 0, i32 2
  %11 = bitcast %struct.event** %10 to i8**
  store i8* %call9, i8** %11, align 8
  %12 = bitcast { i64, %struct.event*, %struct.event* }* %3 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i64, %struct.event*, %struct.event* }*, i64, i64)* @_Z10sampleSortI5event6cmpValiEvPT_T1_T0__pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %12, i64 %smax, i32 0)
  br label %sync.continue

sync.continue:                                    ; preds = %pfor.detach.lr.ph, %if.else
  tail call void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %6, i64 %conv7)
  %sub26 = shl i64 %add, 32
  %sext360 = add i64 %sub26, -4294967296
  %conv27 = ashr exact i64 %sext360, 32
  %mul28 = ashr exact i64 %sext360, 29
  %call29 = tail call noalias i8* @malloc(i64 %mul28) #2
  %13 = bitcast i8* %call29 to %struct.event*
  %cmp41381 = icmp sgt i64 %sext360, 0
  br i1 %cmp41381, label %pfor.cond.cleanup42.loopexit, label %sync.continue54

pfor.cond.cleanup42.loopexit:                     ; preds = %sync.continue
  %14 = icmp sgt i64 %conv27, 1
  %smax404 = select i1 %14, i64 %conv27, i64 1
  %15 = bitcast { %struct.event*, %struct.event* }* %2 to i8**
  store i8* %call9, i8** %15, align 8
  %16 = getelementptr inbounds { %struct.event*, %struct.event* }, { %struct.event*, %struct.event* }* %2, i64 0, i32 1
  %17 = bitcast %struct.event** %16 to i8**
  store i8* %call29, i8** %17, align 8
  %18 = bitcast { %struct.event*, %struct.event* }* %2 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ %struct.event*, %struct.event* }*, i64, i64)* @_Z10sampleSortI5event6cmpValiEvPT_T1_T0__pfor.detach43.ls to void (i8*, i64, i64)*), i8* nonnull %18, i64 %smax404, i32 0)
  br label %sync.continue54

sync.continue54:                                  ; preds = %sync.continue, %pfor.cond.cleanup42.loopexit
  tail call void @free(i8* %call9) #2
  %conv56 = ashr exact i64 %sub26, 32
  %mul57 = mul nsw i64 %conv56, %add
  %mul58 = shl i64 %mul57, 2
  %call59 = tail call noalias i8* @malloc(i64 %mul58) #2
  %19 = bitcast i8* %call59 to i32*
  %cmp69379 = icmp slt i64 %conv, -1
  br i1 %cmp69379, label %sync.continue104, label %pfor.detach71.lr.ph

pfor.detach71.lr.ph:                              ; preds = %sync.continue54
  %conv79 = sext i32 %n to i64
  %cmp1.i = icmp eq i64 %sext360, 0
  %add.ptr2.i = getelementptr inbounds %struct.event, %struct.event* %13, i64 %conv27
  %cmp396.i = icmp slt i64 %sext360, 0
  %20 = ashr exact i64 %sext360, 30
  %21 = add nsw i64 %20, 4
  %22 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 0
  store i64 %add3, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 1
  store i64 %div, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 2
  store i64 %conv79, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 3
  store %struct.event* %A, %struct.event** %25, align 8
  %26 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 4
  store i64 %conv56, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 5
  %28 = bitcast i32** %27 to i8**
  store i8* %call59, i8** %28, align 8
  %29 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 6
  store i1 %cmp1.i, i1* %29, align 8
  %30 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 7
  store i1 %cmp396.i, i1* %30, align 1
  %31 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 8
  store i64 %21, i64* %31, align 8
  %32 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 9
  %33 = bitcast %struct.event** %32 to i8**
  store i8* %call29, i8** %33, align 8
  %34 = getelementptr inbounds { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1, i64 0, i32 10
  store %struct.event* %add.ptr2.i, %struct.event** %34, align 8
  %35 = bitcast { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %1 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }*, i64, i64)* @_Z10sampleSortI5event6cmpValiEvPT_T1_T0__pfor.detach71.ls to void (i8*, i64, i64)*), i8* nonnull %35, i64 %add, i32 0)
  br label %sync.continue104

sync.continue104:                                 ; preds = %pfor.detach71.lr.ph, %sync.continue54
  %mul107 = shl i64 %add3, 3
  %mul108 = mul i64 %mul107, %add
  %call109 = tail call noalias i8* @malloc(i64 %mul108) #2
  %call113 = tail call noalias i8* @malloc(i64 %mul58) #2
  %36 = bitcast i8* %call113 to i32*
  %call117 = tail call noalias i8* @malloc(i64 %mul58) #2
  %37 = bitcast i8* %call117 to i32*
  %call.i364 = tail call i32 @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb(i32* %36, i64 0, i64 %mul57, i32* %19, i32 0, i1 zeroext false, i1 zeroext false)
  %38 = bitcast %struct.transpose* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #2
  %39 = bitcast %struct.transpose* %ref.tmp to i8**
  store i8* %call59, i8** %39, align 8, !tbaa !64
  %B.i = getelementptr inbounds %struct.transpose, %struct.transpose* %ref.tmp, i64 0, i32 1
  %40 = bitcast i32** %B.i to i8**
  store i8* %call117, i8** %40, align 8, !tbaa !66
  call void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* nonnull %ref.tmp, i32 0, i32 %conv6, i32 %conv6, i32 0, i32 %conv6, i32 %conv6)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #2
  %call.i367 = call i32 @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb(i32* %37, i64 0, i64 %mul57, i32* %37, i32 0, i1 zeroext false, i1 zeroext false)
  %41 = bitcast %struct.blockTrans* %ref.tmp127 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %41) #2
  %A.i365 = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp127, i64 0, i32 0
  store %struct.event* %A, %struct.event** %A.i365, align 8, !tbaa !67
  %B.i366 = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp127, i64 0, i32 1
  %42 = bitcast %struct.event** %B.i366 to i8**
  store i8* %call109, i8** %42, align 8, !tbaa !69
  %OA.i = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp127, i64 0, i32 2
  %43 = bitcast i32** %OA.i to i8**
  store i8* %call113, i8** %43, align 8, !tbaa !70
  %OB.i = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp127, i64 0, i32 3
  %44 = bitcast i32** %OB.i to i8**
  store i8* %call117, i8** %44, align 8, !tbaa !71
  %L.i = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %ref.tmp127, i64 0, i32 4
  %45 = bitcast i32** %L.i to i8**
  store i8* %call59, i8** %45, align 8, !tbaa !72
  call void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* nonnull %ref.tmp127, i32 0, i32 %conv6, i32 %conv6, i32 0, i32 %conv6, i32 %conv6)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %41) #2
  call void @free(i8* %call113) #2
  call void @free(i8* %call59) #2
  %cmp139376 = icmp sgt i64 %sub26, 0
  br i1 %cmp139376, label %pfor.detach141.preheader, label %sync.continue196

pfor.detach141.preheader:                         ; preds = %sync.continue104
  %46 = icmp sgt i64 %conv56, 1
  %smax405 = select i1 %46, i64 %conv56, i64 1
  %47 = getelementptr inbounds { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0, i64 0, i32 0
  store i64 %add, i64* %47, align 8
  %48 = getelementptr inbounds { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0, i64 0, i32 1
  %49 = bitcast i32** %48 to i8**
  store i8* %call117, i8** %49, align 8
  %50 = getelementptr inbounds { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0, i64 0, i32 2
  store i64 %conv27, i64* %50, align 8
  %51 = getelementptr inbounds { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0, i64 0, i32 3
  store i32 %n, i32* %51, align 8
  %52 = getelementptr inbounds { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0, i64 0, i32 4
  %53 = bitcast %struct.event** %52 to i8**
  store i8* %call29, i8** %53, align 8
  %54 = getelementptr inbounds { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0, i64 0, i32 5
  %55 = bitcast %struct.event** %54 to i8**
  store i8* %call109, i8** %55, align 8
  %56 = getelementptr inbounds { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0, i64 0, i32 6
  store %struct.event* %A, %struct.event** %56, align 8
  %57 = getelementptr inbounds { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0, i64 0, i32 7
  store i8* %call109, i8** %57, align 8
  %58 = bitcast { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }*, i64, i64)* @_Z10sampleSortI5event6cmpValiEvPT_T1_T0__pfor.detach141.ls to void (i8*, i64, i64)*), i8* nonnull %58, i64 %smax405, i32 0)
  br label %sync.continue196

sync.continue196:                                 ; preds = %pfor.detach141.preheader, %sync.continue104
  call void @free(i8* %call29) #2
  call void @free(i8* %call117) #2
  call void @free(i8* %call109) #2
  br label %if.end206

if.end206:                                        ; preds = %sync.continue196, %if.then
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) local_unnamed_addr #0

; Function Attrs: stealable uwtable
define linkonce_odr void @_ZN8treeNode3delEPS_(%struct.treeNode* %T) local_unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %struct.__cilkrts_worker* %0, null
  br i1 %1, label %slowpath.i, label %__cilkrts_enter_frame_1.exit

slowpath.i:                                       ; preds = %entry
  %2 = call %struct.__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilkrts_enter_frame_1.exit

__cilkrts_enter_frame_1.exit:                     ; preds = %entry, %slowpath.i
  %.sink = phi i32 [ 16777344, %slowpath.i ], [ 16777216, %entry ]
  %3 = phi %struct.__cilkrts_worker* [ %2, %slowpath.i ], [ %0, %entry ]
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %3, i64 0, i32 9
  %6 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %5 acquire, align 8
  %7 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %6, %struct.__cilkrts_stack_frame** %7 release, align 8
  %8 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %3, %struct.__cilkrts_worker** %8 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %5 release, align 8
  %triangleIndices.i = getelementptr inbounds %struct.treeNode, %struct.treeNode* %T, i64 0, i32 5
  %9 = load i32*, i32** %triangleIndices.i, align 8, !tbaa !27
  %cmp.i = icmp eq i32* %9, null
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %10 = bitcast i32* %9 to i8*
  tail call void @free(i8* %10) #2
  %.pre = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  br label %if.end

if.else:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %left = getelementptr inbounds %struct.treeNode, %struct.treeNode* %T, i64 0, i32 0
  %11 = load %struct.treeNode*, %struct.treeNode** %left, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %13 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %12, i16* nonnull %13) #2
  %14 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %15 = call i8* @llvm.frameaddress(i32 0)
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  store volatile i8* %15, i8** %16, align 8
  %17 = call i8* @llvm.stacksave()
  %18 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %17, i8** %18, align 8
  %19 = bitcast [5 x i8*]* %14 to i8*
  %20 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %19) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.else.split15, label %det.cont

if.else.split15:                                  ; preds = %if.else
  invoke fastcc void @_ZN8treeNode3delEPS__det.achd.cilk(%struct.treeNode* %11)
          to label %det.cont unwind label %lpad1

det.cont:                                         ; preds = %if.else, %if.else.split15
  %right = getelementptr inbounds %struct.treeNode, %struct.treeNode* %T, i64 0, i32 1
  %22 = load %struct.treeNode*, %struct.treeNode** %right, align 8, !tbaa !24
  invoke void @_ZN8treeNode3delEPS_(%struct.treeNode* %22)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %det.cont
  %23 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %24 = load atomic i32, i32* %23 acquire, align 8
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %__cilk_sync.exit, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %invoke.cont5
  %27 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %12, i16* nonnull %13) #2
  store volatile i8* %15, i8** %16, align 8
  %28 = call i8* @llvm.stacksave()
  store volatile i8* %28, i8** %18, align 8
  %29 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %19) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %31 = load atomic i32, i32* %23 acquire, align 8
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %__cilk_sync.exit, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit:                                 ; preds = %invoke.cont5, %cilk.sync.runtimecall.i, %cilk.sync.excepting.i
  %34 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %35 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %34, i64 0, i32 12, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %if.end

lpad1:                                            ; preds = %if.else.split15, %det.cont
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %40 = load atomic i32, i32* %39 acquire, align 8
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %__cilk_sync.exit20, label %cilk.sync.savestate.i16

cilk.sync.savestate.i16:                          ; preds = %lpad1
  %43 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %12, i16* nonnull %13) #2
  store volatile i8* %15, i8** %16, align 8
  %44 = call i8* @llvm.stacksave()
  store volatile i8* %44, i8** %18, align 8
  %45 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %19) #21
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %cilk.sync.runtimecall.i17, label %cilk.sync.excepting.i18

cilk.sync.runtimecall.i17:                        ; preds = %cilk.sync.savestate.i16
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit20

cilk.sync.excepting.i18:                          ; preds = %cilk.sync.savestate.i16
  %47 = load atomic i32, i32* %39 acquire, align 8
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %__cilk_sync.exit20, label %cilk.sync.rethrow.i19

cilk.sync.rethrow.i19:                            ; preds = %cilk.sync.excepting.i18
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit20:                               ; preds = %lpad1, %cilk.sync.runtimecall.i17, %cilk.sync.excepting.i18
  %50 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %51 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %50, i64 0, i32 12, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %55 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %54, i64 0, i32 9
  %58 = bitcast %struct.__cilkrts_stack_frame** %57 to i64*
  store atomic i64 %56, i64* %58 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %59 = load atomic i32, i32* %39 acquire, align 8
  %60 = icmp eq i32 %59, 16777216
  br i1 %60, label %__cilk_parent_epilogue.exit22, label %body.i21

if.end:                                           ; preds = %__cilk_sync.exit, %if.then
  %.pre-phi = phi i32* [ %23, %__cilk_sync.exit ], [ %.pre, %if.then ]
  %61 = bitcast %struct.treeNode* %T to i8*
  tail call void @free(i8* %61) #2
  %62 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %63 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %62, i64 0, i32 9
  %66 = bitcast %struct.__cilkrts_stack_frame** %65 to i64*
  store atomic i64 %64, i64* %66 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %67 = load atomic i32, i32* %.pre-phi acquire, align 8
  %68 = icmp eq i32 %67, 16777216
  br i1 %68, label %__cilk_parent_epilogue.exit, label %body.i

body.i:                                           ; preds = %if.end
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %if.end, %body.i
  ret void

body.i21:                                         ; preds = %__cilk_sync.exit20
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit22

__cilk_parent_epilogue.exit22:                    ; preds = %__cilk_sync.exit20, %body.i21
  resume { i8*, i32 } %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) local_unnamed_addr #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr void @_ZN5timer7reportTEd(%struct.timer* %this, double %time) local_unnamed_addr #6 comdat align 2 {
entry:
  %call1.i = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i64 11)
  %vtable.i = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !58
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %0 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %0, align 8
  %add.ptr.i = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset.i
  %_M_precision.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 8
  %1 = bitcast i8* %_M_precision.i.i to i64*
  store i64 3, i64* %1, align 8, !tbaa !73
  %call.i = tail call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %time)
  %2 = bitcast %"class.std::basic_ostream"* %call.i to i8**
  %vtable.i7 = load i8*, i8** %2, align 8, !tbaa !58
  %vbase.offset.ptr.i8 = getelementptr i8, i8* %vtable.i7, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i8 to i64*
  %vbase.offset.i9 = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::basic_ostream"* %call.i to i8*
  %add.ptr.i10 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i9
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %add.ptr.i10, i64 240
  %5 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %6 = load %"class.std::ctype"*, %"class.std::ctype"** %5, align 8, !tbaa !60
  %tobool.i.i.i = icmp eq %"class.std::ctype"* %6, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %6, i64 0, i32 8
  %7 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !62
  %tobool.i3.i.i = icmp eq i8 %7, 0
  br i1 %tobool.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %6, i64 0, i32 9, i64 10
  %8 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %6)
  %9 = bitcast %"class.std::ctype"* %6 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %9, align 8, !tbaa !58
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

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) local_unnamed_addr #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb(i32* %Out, i32 %s, i32 %e, i32* %g.coerce, i32 %zero, i1 zeroext %inclusive, i1 zeroext %back) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, align 8
  %1 = alloca { i32, i64, i64, i32, i32*, i32* }, align 8
  %sub = sub nsw i32 %e, %s
  %sub2 = add nsw i32 %sub, -1
  %div = sdiv i32 %sub2, 1024
  %add = add nsw i32 %div, 1
  %cmp = icmp slt i32 %sub, 2049
  br i1 %cmp, label %if.then, label %pfor.detach.lr.ph

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
  %2 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !12
  %add.i88.i = add nsw i32 %2, %r.0108.i
  %arrayidx.i = getelementptr inbounds i32, i32* %Out, i64 %i.0109.i
  store i32 %add.i88.i, i32* %arrayidx.i, align 4, !tbaa !12
  %dec.i = add nsw i64 %i.0109.i, -1
  %cmp.i = icmp sgt i64 %i.0109.i, %conv4.i
  br i1 %cmp.i, label %for.body.i, label %cleanup

if.else.i:                                        ; preds = %if.then.i
  %cmp9110.i = icmp sgt i32 %e, %s
  br i1 %cmp9110.i, label %for.body11.lr.ph.i, label %cleanup

for.body11.lr.ph.i:                               ; preds = %if.else.i
  %3 = sext i32 %s to i64
  %wide.trip.count.i = sext i32 %e to i64
  %4 = sub nsw i64 %wide.trip.count.i, %3
  %5 = xor i64 %3, -1
  %6 = add nsw i64 %wide.trip.count.i, %5
  %xtraiter = and i64 %4, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body11.i.prol.loopexit, label %for.body11.i.prol.preheader

for.body11.i.prol.preheader:                      ; preds = %for.body11.lr.ph.i
  br label %for.body11.i.prol

for.body11.i.prol:                                ; preds = %for.body11.i.prol.preheader, %for.body11.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body11.i.prol ], [ %3, %for.body11.i.prol.preheader ]
  %r.1111.i.prol = phi i32 [ %add.i84.i.prol, %for.body11.i.prol ], [ %zero, %for.body11.i.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body11.i.prol ], [ %xtraiter, %for.body11.i.prol.preheader ]
  %arrayidx.i87.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.i.prol
  %7 = load i32, i32* %arrayidx.i87.i.prol, align 4, !tbaa !12
  %add.i84.i.prol = add nsw i32 %7, %r.1111.i.prol
  %arrayidx15.i.prol = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.i.prol
  store i32 %add.i84.i.prol, i32* %arrayidx15.i.prol, align 4, !tbaa !12
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.sub = add nsw i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body11.i.prol.loopexit.loopexit, label %for.body11.i.prol, !llvm.loop !79

for.body11.i.prol.loopexit.loopexit:              ; preds = %for.body11.i.prol
  %8 = add nsw i64 %xtraiter, %3
  br label %for.body11.i.prol.loopexit

for.body11.i.prol.loopexit:                       ; preds = %for.body11.i.prol.loopexit.loopexit, %for.body11.lr.ph.i
  %add.i84.i.lcssa.unr = phi i32 [ undef, %for.body11.lr.ph.i ], [ %add.i84.i.prol, %for.body11.i.prol.loopexit.loopexit ]
  %indvars.iv.i.unr = phi i64 [ %3, %for.body11.lr.ph.i ], [ %8, %for.body11.i.prol.loopexit.loopexit ]
  %r.1111.i.unr = phi i32 [ %zero, %for.body11.lr.ph.i ], [ %add.i84.i.prol, %for.body11.i.prol.loopexit.loopexit ]
  %9 = icmp ult i64 %6, 7
  br i1 %9, label %cleanup, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.body11.i.prol.loopexit
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %for.body11.i ], [ %indvars.iv.i.unr, %for.body11.i.preheader ]
  %r.1111.i = phi i32 [ %add.i84.i.7, %for.body11.i ], [ %r.1111.i.unr, %for.body11.i.preheader ]
  %arrayidx.i87.i = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.i
  %10 = load i32, i32* %arrayidx.i87.i, align 4, !tbaa !12
  %add.i84.i = add nsw i32 %10, %r.1111.i
  %arrayidx15.i = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.i
  store i32 %add.i84.i, i32* %arrayidx15.i, align 4, !tbaa !12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %arrayidx.i87.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i
  %11 = load i32, i32* %arrayidx.i87.i.1, align 4, !tbaa !12
  %add.i84.i.1 = add nsw i32 %11, %add.i84.i
  %arrayidx15.i.1 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i
  store i32 %add.i84.i.1, i32* %arrayidx15.i.1, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %arrayidx.i87.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.1
  %12 = load i32, i32* %arrayidx.i87.i.2, align 4, !tbaa !12
  %add.i84.i.2 = add nsw i32 %12, %add.i84.i.1
  %arrayidx15.i.2 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.1
  store i32 %add.i84.i.2, i32* %arrayidx15.i.2, align 4, !tbaa !12
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %arrayidx.i87.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.2
  %13 = load i32, i32* %arrayidx.i87.i.3, align 4, !tbaa !12
  %add.i84.i.3 = add nsw i32 %13, %add.i84.i.2
  %arrayidx15.i.3 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.2
  store i32 %add.i84.i.3, i32* %arrayidx15.i.3, align 4, !tbaa !12
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %arrayidx.i87.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.3
  %14 = load i32, i32* %arrayidx.i87.i.4, align 4, !tbaa !12
  %add.i84.i.4 = add nsw i32 %14, %add.i84.i.3
  %arrayidx15.i.4 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.3
  store i32 %add.i84.i.4, i32* %arrayidx15.i.4, align 4, !tbaa !12
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5
  %arrayidx.i87.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.4
  %15 = load i32, i32* %arrayidx.i87.i.5, align 4, !tbaa !12
  %add.i84.i.5 = add nsw i32 %15, %add.i84.i.4
  %arrayidx15.i.5 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.4
  store i32 %add.i84.i.5, i32* %arrayidx15.i.5, align 4, !tbaa !12
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6
  %arrayidx.i87.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.5
  %16 = load i32, i32* %arrayidx.i87.i.6, align 4, !tbaa !12
  %add.i84.i.6 = add nsw i32 %16, %add.i84.i.5
  %arrayidx15.i.6 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.5
  store i32 %add.i84.i.6, i32* %arrayidx15.i.6, align 4, !tbaa !12
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7
  %arrayidx.i87.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next.i.6
  %17 = load i32, i32* %arrayidx.i87.i.7, align 4, !tbaa !12
  %add.i84.i.7 = add nsw i32 %17, %add.i84.i.6
  %arrayidx15.i.7 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next.i.6
  store i32 %add.i84.i.7, i32* %arrayidx15.i.7, align 4, !tbaa !12
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
  %18 = load i32, i32* %arrayidx.i83.i, align 4, !tbaa !12
  %arrayidx31.i = getelementptr inbounds i32, i32* %Out, i64 %i21.0116.i
  store i32 %r.2115.i, i32* %arrayidx31.i, align 4, !tbaa !12
  %add.i80.i = add nsw i32 %18, %r.2115.i
  %dec34.i = add nsw i64 %i21.0116.i, -1
  %cmp26.i = icmp sgt i64 %i21.0116.i, %conv25.i
  br i1 %cmp26.i, label %for.body28.i, label %cleanup

if.else36.i:                                      ; preds = %if.else18.i
  %cmp39118.i = icmp sgt i32 %e, %s
  br i1 %cmp39118.i, label %for.body41.lr.ph.i, label %cleanup

for.body41.lr.ph.i:                               ; preds = %if.else36.i
  %19 = sext i32 %s to i64
  %wide.trip.count127.i = sext i32 %e to i64
  %20 = sub nsw i64 %wide.trip.count127.i, %19
  %21 = xor i64 %19, -1
  %22 = add nsw i64 %wide.trip.count127.i, %21
  %xtraiter350 = and i64 %20, 7
  %lcmp.mod351 = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351, label %for.body41.i.prol.loopexit, label %for.body41.i.prol.preheader

for.body41.i.prol.preheader:                      ; preds = %for.body41.lr.ph.i
  br label %for.body41.i.prol

for.body41.i.prol:                                ; preds = %for.body41.i.prol.preheader, %for.body41.i.prol
  %indvars.iv125.i.prol = phi i64 [ %indvars.iv.next126.i.prol, %for.body41.i.prol ], [ %19, %for.body41.i.prol.preheader ]
  %r.3119.i.prol = phi i32 [ %add.i.i.prol, %for.body41.i.prol ], [ %zero, %for.body41.i.prol.preheader ]
  %prol.iter352 = phi i64 [ %prol.iter352.sub, %for.body41.i.prol ], [ %xtraiter350, %for.body41.i.prol.preheader ]
  %arrayidx.i79.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv125.i.prol
  %23 = load i32, i32* %arrayidx.i79.i.prol, align 4, !tbaa !12
  %arrayidx45.i.prol = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv125.i.prol
  store i32 %r.3119.i.prol, i32* %arrayidx45.i.prol, align 4, !tbaa !12
  %add.i.i.prol = add nsw i32 %23, %r.3119.i.prol
  %indvars.iv.next126.i.prol = add nsw i64 %indvars.iv125.i.prol, 1
  %prol.iter352.sub = add nsw i64 %prol.iter352, -1
  %prol.iter352.cmp = icmp eq i64 %prol.iter352.sub, 0
  br i1 %prol.iter352.cmp, label %for.body41.i.prol.loopexit.loopexit, label %for.body41.i.prol, !llvm.loop !80

for.body41.i.prol.loopexit.loopexit:              ; preds = %for.body41.i.prol
  %24 = add nsw i64 %xtraiter350, %19
  br label %for.body41.i.prol.loopexit

for.body41.i.prol.loopexit:                       ; preds = %for.body41.i.prol.loopexit.loopexit, %for.body41.lr.ph.i
  %add.i.i.lcssa.unr = phi i32 [ undef, %for.body41.lr.ph.i ], [ %add.i.i.prol, %for.body41.i.prol.loopexit.loopexit ]
  %indvars.iv125.i.unr = phi i64 [ %19, %for.body41.lr.ph.i ], [ %24, %for.body41.i.prol.loopexit.loopexit ]
  %r.3119.i.unr = phi i32 [ %zero, %for.body41.lr.ph.i ], [ %add.i.i.prol, %for.body41.i.prol.loopexit.loopexit ]
  %25 = icmp ult i64 %22, 7
  br i1 %25, label %cleanup, label %for.body41.i.preheader

for.body41.i.preheader:                           ; preds = %for.body41.i.prol.loopexit
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.preheader, %for.body41.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i.7, %for.body41.i ], [ %indvars.iv125.i.unr, %for.body41.i.preheader ]
  %r.3119.i = phi i32 [ %add.i.i.7, %for.body41.i ], [ %r.3119.i.unr, %for.body41.i.preheader ]
  %arrayidx.i79.i = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv125.i
  %26 = load i32, i32* %arrayidx.i79.i, align 4, !tbaa !12
  %arrayidx45.i = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv125.i
  store i32 %r.3119.i, i32* %arrayidx45.i, align 4, !tbaa !12
  %add.i.i = add nsw i32 %26, %r.3119.i
  %indvars.iv.next126.i = add nsw i64 %indvars.iv125.i, 1
  %arrayidx.i79.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i
  %27 = load i32, i32* %arrayidx.i79.i.1, align 4, !tbaa !12
  %arrayidx45.i.1 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i
  store i32 %add.i.i, i32* %arrayidx45.i.1, align 4, !tbaa !12
  %add.i.i.1 = add nsw i32 %27, %add.i.i
  %indvars.iv.next126.i.1 = add nsw i64 %indvars.iv125.i, 2
  %arrayidx.i79.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.1
  %28 = load i32, i32* %arrayidx.i79.i.2, align 4, !tbaa !12
  %arrayidx45.i.2 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.1
  store i32 %add.i.i.1, i32* %arrayidx45.i.2, align 4, !tbaa !12
  %add.i.i.2 = add nsw i32 %28, %add.i.i.1
  %indvars.iv.next126.i.2 = add nsw i64 %indvars.iv125.i, 3
  %arrayidx.i79.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.2
  %29 = load i32, i32* %arrayidx.i79.i.3, align 4, !tbaa !12
  %arrayidx45.i.3 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.2
  store i32 %add.i.i.2, i32* %arrayidx45.i.3, align 4, !tbaa !12
  %add.i.i.3 = add nsw i32 %29, %add.i.i.2
  %indvars.iv.next126.i.3 = add nsw i64 %indvars.iv125.i, 4
  %arrayidx.i79.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.3
  %30 = load i32, i32* %arrayidx.i79.i.4, align 4, !tbaa !12
  %arrayidx45.i.4 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.3
  store i32 %add.i.i.3, i32* %arrayidx45.i.4, align 4, !tbaa !12
  %add.i.i.4 = add nsw i32 %30, %add.i.i.3
  %indvars.iv.next126.i.4 = add nsw i64 %indvars.iv125.i, 5
  %arrayidx.i79.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.4
  %31 = load i32, i32* %arrayidx.i79.i.5, align 4, !tbaa !12
  %arrayidx45.i.5 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.4
  store i32 %add.i.i.4, i32* %arrayidx45.i.5, align 4, !tbaa !12
  %add.i.i.5 = add nsw i32 %31, %add.i.i.4
  %indvars.iv.next126.i.5 = add nsw i64 %indvars.iv125.i, 6
  %arrayidx.i79.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.5
  %32 = load i32, i32* %arrayidx.i79.i.6, align 4, !tbaa !12
  %arrayidx45.i.6 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.5
  store i32 %add.i.i.5, i32* %arrayidx45.i.6, align 4, !tbaa !12
  %add.i.i.6 = add nsw i32 %32, %add.i.i.5
  %indvars.iv.next126.i.6 = add nsw i64 %indvars.iv125.i, 7
  %arrayidx.i79.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %indvars.iv.next126.i.6
  %33 = load i32, i32* %arrayidx.i79.i.7, align 4, !tbaa !12
  %arrayidx45.i.7 = getelementptr inbounds i32, i32* %Out, i64 %indvars.iv.next126.i.6
  store i32 %add.i.i.6, i32* %arrayidx45.i.7, align 4, !tbaa !12
  %add.i.i.7 = add nsw i32 %33, %add.i.i.6
  %indvars.iv.next126.i.7 = add nsw i64 %indvars.iv125.i, 8
  %exitcond128.i.7 = icmp eq i64 %indvars.iv.next126.i.7, %wide.trip.count127.i
  br i1 %exitcond128.i.7, label %cleanup, label %for.body41.i

pfor.detach.lr.ph:                                ; preds = %entry
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call9 = tail call noalias i8* @malloc(i64 %mul) #2
  %34 = bitcast i8* %call9 to i32*
  %35 = sext i32 %s to i64
  %36 = sext i32 %e to i64
  %37 = sext i32 %div to i64
  %38 = sub i32 -2, %s
  %39 = icmp sgt i64 %37, 0
  %smax = select i1 %39, i64 %37, i64 0
  %40 = add nuw nsw i64 %smax, 1
  %41 = getelementptr inbounds { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %1, i64 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = getelementptr inbounds { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %1, i64 0, i32 1
  store i64 %35, i64* %42, align 8
  %43 = getelementptr inbounds { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %1, i64 0, i32 2
  store i64 %36, i64* %43, align 8
  %44 = getelementptr inbounds { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %1, i64 0, i32 3
  store i32 %e, i32* %44, align 8
  %45 = getelementptr inbounds { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %1, i64 0, i32 4
  store i32* %g.coerce, i32** %45, align 8
  %46 = getelementptr inbounds { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %1, i64 0, i32 5
  %47 = bitcast i32** %46 to i8**
  store i8* %call9, i8** %47, align 8
  %48 = bitcast { i32, i64, i64, i32, i32*, i32* }* %1 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i32, i64, i64, i32, i32*, i32* }*, i64, i64)* @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb_pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %48, i64 %40, i32 0)
  %call52 = tail call i32 @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb(i32* %34, i32 0, i32 %add, i32* %34, i32 %zero, i1 zeroext false, i1 zeroext %back)
  %49 = xor i64 %35, -1
  %50 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 0
  store i64 %35, i64* %50, align 8
  %51 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 2
  store i64 %36, i64* %52, align 8
  %53 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 3
  store i32 %e, i32* %53, align 8
  %54 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 4
  %55 = bitcast i32** %54 to i8**
  store i8* %call9, i8** %55, align 8
  %56 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 5
  store i1 %inclusive, i1* %56, align 8
  %57 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 6
  store i1 %back, i1* %57, align 1
  %58 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 7
  store i32* %g.coerce, i32** %58, align 8
  %59 = getelementptr inbounds { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0, i64 0, i32 8
  store i32* %Out, i32** %59, align 8
  %60 = bitcast { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }*, i64, i64)* @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb_pfor.detach72.ls to void (i8*, i64, i64)*), i8* nonnull %60, i64 %40, i32 0)
  tail call void @free(i8* %call9) #2
  br label %cleanup

cleanup:                                          ; preds = %for.body41.i, %for.body28.i, %for.body11.i, %for.body.i, %for.body41.i.prol.loopexit, %for.body11.i.prol.loopexit, %if.else36.i, %if.then20.i, %if.else.i, %if.then3.i, %pfor.detach.lr.ph
  %retval.0 = phi i32 [ %call52, %pfor.detach.lr.ph ], [ %zero, %if.then3.i ], [ %zero, %if.else.i ], [ %zero, %if.then20.i ], [ %zero, %if.else36.i ], [ %add.i84.i.lcssa.unr, %for.body11.i.prol.loopexit ], [ %add.i.i.lcssa.unr, %for.body41.i.prol.loopexit ], [ %add.i88.i, %for.body.i ], [ %add.i84.i.7, %for.body11.i ], [ %add.i80.i, %for.body28.i ], [ %add.i.i.7, %for.body41.i ]
  ret i32 %retval.0
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN8sequence8maxIndexIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2_(i32 %s, i32 %e, float* %g.coerce) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca { i32, i32, i64, i64, i32, float*, i32* }, align 8
  %sub = sub nsw i32 %e, %s
  %sub1 = add nsw i32 %sub, -1
  %div = sdiv i32 %sub1, 1024
  %cmp = icmp slt i32 %sub, 2049
  br i1 %cmp, label %if.then, label %pfor.detach.lr.ph

if.then:                                          ; preds = %entry
  %j.015.i = add nsw i32 %s, 1
  %cmp16.i = icmp slt i32 %j.015.i, %e
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then
  %idxprom.i.i = sext i32 %s to i64
  %arrayidx.i.i = getelementptr inbounds float, float* %g.coerce, i64 %idxprom.i.i
  %1 = bitcast float* %arrayidx.i.i to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !13
  %3 = sext i32 %j.015.i to i64
  %4 = xor i32 %s, -1
  %5 = add i32 %4, %e
  %6 = sub i32 -2, %s
  %7 = add i32 %6, %e
  %xtraiter = and i32 %5, 3
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %cleanup.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = sub i32 %5, %xtraiter
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %3, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %k.018.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %k.1.i.3, %for.body.i ]
  %r.sroa.0.017.i = phi i32 [ %2, %for.body.lr.ph.i.new ], [ %r.sroa.0.1.i.3, %for.body.i ]
  %niter = phi i32 [ %unroll_iter, %for.body.lr.ph.i.new ], [ %niter.nsub.3, %for.body.i ]
  %arrayidx.i11.i = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.i
  %9 = load float, float* %arrayidx.i11.i, align 4, !tbaa !13
  %10 = bitcast float %9 to i32
  %11 = bitcast i32 %r.sroa.0.017.i to float
  %cmp.i.i = fcmp olt float %9, %11
  %r.sroa.0.1.i = select i1 %cmp.i.i, i32 %10, i32 %r.sroa.0.017.i
  %12 = trunc i64 %indvars.iv.i to i32
  %k.1.i = select i1 %cmp.i.i, i32 %12, i32 %k.018.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %arrayidx.i11.i.1 = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.next.i
  %13 = load float, float* %arrayidx.i11.i.1, align 4, !tbaa !13
  %14 = bitcast float %13 to i32
  %15 = bitcast i32 %r.sroa.0.1.i to float
  %cmp.i.i.1 = fcmp olt float %13, %15
  %r.sroa.0.1.i.1 = select i1 %cmp.i.i.1, i32 %14, i32 %r.sroa.0.1.i
  %16 = trunc i64 %indvars.iv.next.i to i32
  %k.1.i.1 = select i1 %cmp.i.i.1, i32 %16, i32 %k.1.i
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %arrayidx.i11.i.2 = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.next.i.1
  %17 = load float, float* %arrayidx.i11.i.2, align 4, !tbaa !13
  %18 = bitcast float %17 to i32
  %19 = bitcast i32 %r.sroa.0.1.i.1 to float
  %cmp.i.i.2 = fcmp olt float %17, %19
  %r.sroa.0.1.i.2 = select i1 %cmp.i.i.2, i32 %18, i32 %r.sroa.0.1.i.1
  %20 = trunc i64 %indvars.iv.next.i.1 to i32
  %k.1.i.2 = select i1 %cmp.i.i.2, i32 %20, i32 %k.1.i.1
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %arrayidx.i11.i.3 = getelementptr inbounds float, float* %g.coerce, i64 %indvars.iv.next.i.2
  %21 = load float, float* %arrayidx.i11.i.3, align 4, !tbaa !13
  %22 = bitcast float %21 to i32
  %23 = bitcast i32 %r.sroa.0.1.i.2 to float
  %cmp.i.i.3 = fcmp olt float %21, %23
  %r.sroa.0.1.i.3 = select i1 %cmp.i.i.3, i32 %22, i32 %r.sroa.0.1.i.2
  %24 = trunc i64 %indvars.iv.next.i.2 to i32
  %k.1.i.3 = select i1 %cmp.i.i.3, i32 %24, i32 %k.1.i.2
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %niter.nsub.3 = add i32 %niter, -4
  %niter.ncmp.3 = icmp eq i32 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %cleanup.loopexit.unr-lcssa, label %for.body.i

pfor.detach.lr.ph:                                ; preds = %entry
  %add = add nsw i32 %div, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call4 = tail call noalias i8* @malloc(i64 %mul) #2
  %25 = bitcast i8* %call4 to i32*
  %26 = sext i32 %s to i64
  %27 = sext i32 %e to i64
  %28 = sext i32 %div to i64
  %29 = xor i32 %s, -1
  %30 = sub i32 -2, %s
  %31 = icmp sgt i64 %28, 0
  %smax = select i1 %31, i64 %28, i64 0
  %32 = add nuw nsw i64 %smax, 1
  %33 = getelementptr inbounds { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %0, i64 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = getelementptr inbounds { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %0, i64 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = getelementptr inbounds { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %0, i64 0, i32 2
  store i64 %26, i64* %35, align 8
  %36 = getelementptr inbounds { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %0, i64 0, i32 3
  store i64 %27, i64* %36, align 8
  %37 = getelementptr inbounds { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %0, i64 0, i32 4
  store i32 %e, i32* %37, align 8
  %38 = getelementptr inbounds { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %0, i64 0, i32 5
  store float* %g.coerce, float** %38, align 8
  %39 = getelementptr inbounds { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %0, i64 0, i32 6
  %40 = bitcast i32** %39 to i8**
  store i8* %call4, i8** %40, align 8
  %41 = bitcast { i32, i32, i64, i64, i32, float*, i32* }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i32, i32, i64, i64, i32, float*, i32* }*, i64, i64)* @_ZN8sequence8maxIndexIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2__pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %41, i64 %32, i32 0)
  %42 = load i32, i32* %25, align 4, !tbaa !12
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @free(i8* nonnull %call4) #2
  br label %cleanup

for.body:                                         ; preds = %for.body, %pfor.detach.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %pfor.detach.lr.ph ]
  %k.0139 = phi i32 [ %k.1, %for.body ], [ %42, %pfor.detach.lr.ph ]
  %arrayidx47 = getelementptr inbounds i32, i32* %25, i64 %indvars.iv
  %43 = load i32, i32* %arrayidx47, align 4, !tbaa !12
  %idxprom.i107 = sext i32 %43 to i64
  %arrayidx.i108 = getelementptr inbounds float, float* %g.coerce, i64 %idxprom.i107
  %44 = load float, float* %arrayidx.i108, align 4, !tbaa !13
  %idxprom.i = sext i32 %k.0139 to i64
  %arrayidx.i = getelementptr inbounds float, float* %g.coerce, i64 %idxprom.i
  %45 = load float, float* %arrayidx.i, align 4, !tbaa !13
  %cmp.i = fcmp olt float %44, %45
  %k.1 = select i1 %cmp.i, i32 %43, i32 %k.0139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp44 = icmp slt i64 %indvars.iv, %28
  br i1 %cmp44, label %for.body, label %for.cond.cleanup

cleanup.loopexit.unr-lcssa:                       ; preds = %for.body.i, %for.body.lr.ph.i
  %k.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %k.1.i.3, %for.body.i ]
  %indvars.iv.i.unr = phi i64 [ %3, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %k.018.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %k.1.i.3, %for.body.i ]
  %r.sroa.0.017.i.unr = phi i32 [ %2, %for.body.lr.ph.i ], [ %r.sroa.0.1.i.3, %for.body.i ]
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
  %46 = load float, float* %arrayidx.i11.i.epil, align 4, !tbaa !13
  %47 = bitcast float %46 to i32
  %48 = bitcast i32 %r.sroa.0.017.i.epil to float
  %cmp.i.i.epil = fcmp olt float %46, %48
  %r.sroa.0.1.i.epil = select i1 %cmp.i.i.epil, i32 %47, i32 %r.sroa.0.017.i.epil
  %49 = trunc i64 %indvars.iv.i.epil to i32
  %k.1.i.epil = select i1 %cmp.i.i.epil, i32 %49, i32 %k.018.i.epil
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.sub = add nsw i32 %epil.iter, -1
  %epil.iter.cmp = icmp eq i32 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %cleanup, label %for.body.i.epil, !llvm.loop !81

cleanup:                                          ; preds = %for.body.i.epil, %cleanup.loopexit.unr-lcssa, %if.then, %for.cond.cleanup
  %retval.0 = phi i32 [ %k.1, %for.cond.cleanup ], [ 0, %if.then ], [ %k.1.i.lcssa.ph, %cleanup.loopexit.unr-lcssa ], [ %k.1.i.epil, %for.body.i.epil ]
  ret i32 %retval.0
}

; Function Attrs: uwtable
define linkonce_odr { %struct.event*, i64 } @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* %Out, i8* %Fl, i32 %s, i32 %e, %struct.event* %f.coerce) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, align 8
  %1 = alloca { i64, i64, i32, i8*, i32* }, align 8
  %sub = sub nsw i32 %e, %s
  %sub1 = add nsw i32 %sub, -1
  %div = sdiv i32 %sub1, 2048
  %add = add nsw i32 %div, 1
  %cmp = icmp slt i32 %sub, 2049
  br i1 %cmp, label %if.then, label %pfor.detach.lr.ph

if.then:                                          ; preds = %entry
  %call = tail call { %struct.event*, i64 } @_ZN8sequence10packSerialI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* %Out, i8* %Fl, i32 %s, i32 %e, %struct.event* %f.coerce)
  %2 = extractvalue { %struct.event*, i64 } %call, 0
  %3 = extractvalue { %struct.event*, i64 } %call, 1
  br label %cleanup

pfor.detach.lr.ph:                                ; preds = %entry
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call3 = tail call noalias i8* @malloc(i64 %mul) #2
  %4 = bitcast i8* %call3 to i32*
  %5 = sext i32 %s to i64
  %6 = sext i32 %e to i64
  %7 = sext i32 %div to i64
  %8 = icmp sgt i64 %7, 0
  %smax = select i1 %8, i64 %7, i64 0
  %9 = add nuw nsw i64 %smax, 1
  %10 = getelementptr inbounds { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %1, i64 0, i32 0
  store i64 %5, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %1, i64 0, i32 1
  store i64 %6, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %1, i64 0, i32 2
  store i32 %e, i32* %12, align 8
  %13 = getelementptr inbounds { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %1, i64 0, i32 3
  store i8* %Fl, i8** %13, align 8
  %14 = getelementptr inbounds { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %1, i64 0, i32 4
  %15 = bitcast i32** %14 to i8**
  store i8* %call3, i8** %15, align 8
  %16 = bitcast { i64, i64, i32, i8*, i32* }* %1 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i64, i64, i32, i8*, i32* }*, i64, i64)* @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1__pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %16, i64 %9, i32 0)
  %call.i = tail call i32 @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb(i32* %4, i32 0, i32 %add, i32* %4, i32 0, i1 zeroext false, i1 zeroext false)
  %cmp41 = icmp eq %struct.event* %Out, null
  br i1 %cmp41, label %if.then42, label %pfor.detach66.lr.ph

if.then42:                                        ; preds = %pfor.detach.lr.ph
  %conv43 = sext i32 %call.i to i64
  %mul44 = shl nsw i64 %conv43, 3
  %call45 = tail call noalias i8* @malloc(i64 %mul44) #2
  %17 = bitcast i8* %call45 to %struct.event*
  br label %pfor.detach66.lr.ph

pfor.detach66.lr.ph:                              ; preds = %pfor.detach.lr.ph, %if.then42
  %Out.addr.0 = phi %struct.event* [ %17, %if.then42 ], [ %Out, %pfor.detach.lr.ph ]
  %18 = getelementptr inbounds { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %0, i64 0, i32 0
  store i64 %5, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %0, i64 0, i32 1
  store i64 %6, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %0, i64 0, i32 2
  store i32 %e, i32* %20, align 8
  %21 = getelementptr inbounds { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %0, i64 0, i32 3
  %22 = bitcast i32** %21 to i8**
  store i8* %call3, i8** %22, align 8
  %23 = getelementptr inbounds { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %0, i64 0, i32 4
  store %struct.event* %Out.addr.0, %struct.event** %23, align 8
  %24 = getelementptr inbounds { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %0, i64 0, i32 5
  store i8* %Fl, i8** %24, align 8
  %25 = getelementptr inbounds { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %0, i64 0, i32 6
  store %struct.event* %f.coerce, %struct.event** %25, align 8
  %26 = bitcast { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }*, i64, i64)* @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1__pfor.detach66.ls to void (i8*, i64, i64)*), i8* nonnull %26, i64 %9, i32 0)
  tail call void @free(i8* %call3) #2
  %conv117 = sext i32 %call.i to i64
  br label %cleanup

cleanup:                                          ; preds = %pfor.detach66.lr.ph, %if.then
  %retval.sroa.0.0 = phi %struct.event* [ %2, %if.then ], [ %Out.addr.0, %pfor.detach66.lr.ph ]
  %retval.sroa.3.0 = phi i64 [ %3, %if.then ], [ %conv117, %pfor.detach66.lr.ph ]
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
  %wide.load68 = load <8 x i32>, <8 x i32>* %2, align 4, !tbaa !12
  %3 = getelementptr i32, i32* %IFl.063.i, i64 8
  %4 = bitcast i32* %3 to <8 x i32>*
  %wide.load69 = load <8 x i32>, <8 x i32>* %4, align 4, !tbaa !12
  %5 = getelementptr i32, i32* %IFl.063.i, i64 16
  %6 = bitcast i32* %5 to <8 x i32>*
  %wide.load70 = load <8 x i32>, <8 x i32>* %6, align 4, !tbaa !12
  %7 = getelementptr i32, i32* %IFl.063.i, i64 24
  %8 = bitcast i32* %7 to <8 x i32>*
  %wide.load71 = load <8 x i32>, <8 x i32>* %8, align 4, !tbaa !12
  %9 = getelementptr inbounds i32, i32* %IFl.063.i, i64 32
  %10 = bitcast i32* %9 to <8 x i32>*
  %wide.load68.1 = load <8 x i32>, <8 x i32>* %10, align 4, !tbaa !12
  %11 = getelementptr i32, i32* %IFl.063.i, i64 40
  %12 = bitcast i32* %11 to <8 x i32>*
  %wide.load69.1 = load <8 x i32>, <8 x i32>* %12, align 4, !tbaa !12
  %13 = getelementptr i32, i32* %IFl.063.i, i64 48
  %14 = bitcast i32* %13 to <8 x i32>*
  %wide.load70.1 = load <8 x i32>, <8 x i32>* %14, align 4, !tbaa !12
  %15 = getelementptr i32, i32* %IFl.063.i, i64 56
  %16 = bitcast i32* %15 to <8 x i32>*
  %wide.load71.1 = load <8 x i32>, <8 x i32>* %16, align 4, !tbaa !12
  %17 = getelementptr inbounds i32, i32* %IFl.063.i, i64 64
  %18 = bitcast i32* %17 to <8 x i32>*
  %wide.load68.2 = load <8 x i32>, <8 x i32>* %18, align 4, !tbaa !12
  %19 = getelementptr i32, i32* %IFl.063.i, i64 72
  %20 = bitcast i32* %19 to <8 x i32>*
  %wide.load69.2 = load <8 x i32>, <8 x i32>* %20, align 4, !tbaa !12
  %21 = getelementptr i32, i32* %IFl.063.i, i64 80
  %22 = bitcast i32* %21 to <8 x i32>*
  %wide.load70.2 = load <8 x i32>, <8 x i32>* %22, align 4, !tbaa !12
  %23 = getelementptr i32, i32* %IFl.063.i, i64 88
  %24 = bitcast i32* %23 to <8 x i32>*
  %wide.load71.2 = load <8 x i32>, <8 x i32>* %24, align 4, !tbaa !12
  %25 = getelementptr inbounds i32, i32* %IFl.063.i, i64 96
  %26 = bitcast i32* %25 to <8 x i32>*
  %wide.load68.3 = load <8 x i32>, <8 x i32>* %26, align 4, !tbaa !12
  %27 = getelementptr i32, i32* %IFl.063.i, i64 104
  %28 = bitcast i32* %27 to <8 x i32>*
  %wide.load69.3 = load <8 x i32>, <8 x i32>* %28, align 4, !tbaa !12
  %29 = getelementptr i32, i32* %IFl.063.i, i64 112
  %30 = bitcast i32* %29 to <8 x i32>*
  %wide.load70.3 = load <8 x i32>, <8 x i32>* %30, align 4, !tbaa !12
  %31 = getelementptr i32, i32* %IFl.063.i, i64 120
  %32 = bitcast i32* %31 to <8 x i32>*
  %wide.load71.3 = load <8 x i32>, <8 x i32>* %32, align 4, !tbaa !12
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
  %wide.load = load <8 x i8>, <8 x i8>* %54, align 1, !tbaa !82
  %55 = getelementptr i8, i8* %53, i64 8
  %56 = bitcast i8* %55 to <8 x i8>*
  %wide.load40 = load <8 x i8>, <8 x i8>* %56, align 1, !tbaa !82
  %57 = getelementptr i8, i8* %53, i64 16
  %58 = bitcast i8* %57 to <8 x i8>*
  %wide.load41 = load <8 x i8>, <8 x i8>* %58, align 1, !tbaa !82
  %59 = getelementptr i8, i8* %53, i64 24
  %60 = bitcast i8* %59 to <8 x i8>*
  %wide.load42 = load <8 x i8>, <8 x i8>* %60, align 1, !tbaa !82
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
  %wide.load.1 = load <8 x i8>, <8 x i8>* %70, align 1, !tbaa !82
  %71 = getelementptr i8, i8* %69, i64 8
  %72 = bitcast i8* %71 to <8 x i8>*
  %wide.load40.1 = load <8 x i8>, <8 x i8>* %72, align 1, !tbaa !82
  %73 = getelementptr i8, i8* %69, i64 16
  %74 = bitcast i8* %73 to <8 x i8>*
  %wide.load41.1 = load <8 x i8>, <8 x i8>* %74, align 1, !tbaa !82
  %75 = getelementptr i8, i8* %69, i64 24
  %76 = bitcast i8* %75 to <8 x i8>*
  %wide.load42.1 = load <8 x i8>, <8 x i8>* %76, align 1, !tbaa !82
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
  %wide.load.2 = load <8 x i8>, <8 x i8>* %86, align 1, !tbaa !82
  %87 = getelementptr i8, i8* %85, i64 8
  %88 = bitcast i8* %87 to <8 x i8>*
  %wide.load40.2 = load <8 x i8>, <8 x i8>* %88, align 1, !tbaa !82
  %89 = getelementptr i8, i8* %85, i64 16
  %90 = bitcast i8* %89 to <8 x i8>*
  %wide.load41.2 = load <8 x i8>, <8 x i8>* %90, align 1, !tbaa !82
  %91 = getelementptr i8, i8* %85, i64 24
  %92 = bitcast i8* %91 to <8 x i8>*
  %wide.load42.2 = load <8 x i8>, <8 x i8>* %92, align 1, !tbaa !82
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
  %wide.load.3 = load <8 x i8>, <8 x i8>* %102, align 1, !tbaa !82
  %103 = getelementptr i8, i8* %101, i64 8
  %104 = bitcast i8* %103 to <8 x i8>*
  %wide.load40.3 = load <8 x i8>, <8 x i8>* %104, align 1, !tbaa !82
  %105 = getelementptr i8, i8* %101, i64 16
  %106 = bitcast i8* %105 to <8 x i8>*
  %wide.load41.3 = load <8 x i8>, <8 x i8>* %106, align 1, !tbaa !82
  %107 = getelementptr i8, i8* %101, i64 24
  %108 = bitcast i8* %107 to <8 x i8>*
  %wide.load42.3 = load <8 x i8>, <8 x i8>* %108, align 1, !tbaa !82
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
  br i1 %niter99.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !83

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
  %wide.load.epil = load <8 x i8>, <8 x i8>* %118, align 1, !tbaa !82
  %119 = getelementptr i8, i8* %117, i64 8
  %120 = bitcast i8* %119 to <8 x i8>*
  %wide.load40.epil = load <8 x i8>, <8 x i8>* %120, align 1, !tbaa !82
  %121 = getelementptr i8, i8* %117, i64 16
  %122 = bitcast i8* %121 to <8 x i8>*
  %wide.load41.epil = load <8 x i8>, <8 x i8>* %122, align 1, !tbaa !82
  %123 = getelementptr i8, i8* %117, i64 24
  %124 = bitcast i8* %123 to <8 x i8>*
  %wide.load42.epil = load <8 x i8>, <8 x i8>* %124, align 1, !tbaa !82
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
  br i1 %epil.iter92.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !85

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
  %134 = load i8, i8* %arrayidx30.i, align 1, !tbaa !82, !range !55
  %135 = zext i8 %134 to i32
  %add31.i = add nuw nsw i32 %r.166.i, %135
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  %exitcond72.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count.i118
  br i1 %exitcond72.i, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit, label %for.body28.i, !llvm.loop !86

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
  %140 = add nsw i64 %wide.trip.count, %139
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
  %142 = load i8, i8* %arrayidx.epil, align 1, !tbaa !82, !range !55
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
  br i1 %epil.iter.cmp, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !88

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
  %143 = load i8, i8* %arrayidx, align 1, !tbaa !82, !range !55
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
  %144 = load i8, i8* %arrayidx.1, align 1, !tbaa !82, !range !55
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
  %145 = load i8, i8* %arrayidx.2, align 1, !tbaa !82, !range !55
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
  %146 = load i8, i8* %arrayidx.3, align 1, !tbaa !82, !range !55
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

; Function Attrs: stealable uwtable
define linkonce_odr void @_Z9quickSortI5event6cmpValiEvPT_T1_T0_(%struct.event* %A, i32 %n) local_unnamed_addr #8 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %struct.__cilkrts_worker* %0, null
  br i1 %1, label %slowpath.i, label %__cilkrts_enter_frame_1.exit

slowpath.i:                                       ; preds = %entry
  %2 = call %struct.__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilkrts_enter_frame_1.exit

__cilkrts_enter_frame_1.exit:                     ; preds = %entry, %slowpath.i
  %.sink = phi i32 [ 16777344, %slowpath.i ], [ 16777216, %entry ]
  %3 = phi %struct.__cilkrts_worker* [ %2, %slowpath.i ], [ %0, %entry ]
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %3, i64 0, i32 9
  %6 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %5 acquire, align 8
  %7 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %6, %struct.__cilkrts_stack_frame** %7 release, align 8
  %8 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %3, %struct.__cilkrts_worker** %8 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %5 release, align 8
  %cmp = icmp slt i32 %n, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %cmp19.i = icmp sgt i32 %n, 20
  br i1 %cmp19.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then
  %sub.ptr.rhs.cast4.i = ptrtoint %struct.event* %A to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %n.addr.020.i = phi i32 [ %n, %while.body.lr.ph.i ], [ %conv.i, %while.body.i ]
  %call.i = tail call { %struct.event*, %struct.event* } @_Z5splitI5event6cmpValiESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i32 %n.addr.020.i)
  %9 = extractvalue { %struct.event*, %struct.event* } %call.i, 0
  %10 = extractvalue { %struct.event*, %struct.event* } %call.i, 1
  %idx.ext.i = sext i32 %n.addr.020.i to i64
  %add.ptr.i = getelementptr inbounds %struct.event, %struct.event* %A, i64 %idx.ext.i
  %sub.ptr.lhs.cast.i = ptrtoint %struct.event* %add.ptr.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint %struct.event* %10 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  tail call void @_Z15quickSortSerialI5event6cmpVallEvPT_T1_T0_(%struct.event* %10, i64 %sub.ptr.div.i)
  %sub.ptr.lhs.cast3.i = ptrtoint %struct.event* %9 to i64
  %sub.ptr.sub5.i = sub i64 %sub.ptr.lhs.cast3.i, %sub.ptr.rhs.cast4.i
  %11 = lshr exact i64 %sub.ptr.sub5.i, 3
  %conv.i = trunc i64 %11 to i32
  %cmp.i = icmp sgt i32 %conv.i, 20
  br i1 %cmp.i, label %while.body.i, label %while.end.i.loopexit

while.end.i.loopexit:                             ; preds = %while.body.i
  %conv.i.le = trunc i64 %11 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.then
  %n.addr.0.lcssa.i = phi i32 [ %n, %if.then ], [ %conv.i.le, %while.end.i.loopexit ]
  %cmp24.i.i = icmp sgt i32 %n.addr.0.lcssa.i, 0
  br i1 %cmp24.i.i, label %for.body.lr.ph.i.i, label %if.end

for.body.lr.ph.i.i:                               ; preds = %while.end.i
  %wide.trip.count.i.i = zext i32 %n.addr.0.lcssa.i to i64
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %12 = icmp eq i32 %n.addr.0.lcssa.i, 1
  br i1 %12, label %if.end.loopexit.unr-lcssa, label %for.body.lr.ph.i.i.new

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
  %13 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.i to float
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i, %land.rhs.lr.ph.i.i
  %incdec.ptr22.i.i = phi %struct.event* [ %incdec.ptr19.i.i, %land.rhs.lr.ph.i.i ], [ %incdec.ptr.i.i, %while.body.i.i ]
  %B.021.i.i = phi %struct.event* [ %arrayidx.i.i, %land.rhs.lr.ph.i.i ], [ %incdec.ptr22.i.i, %while.body.i.i ]
  %agg.tmp2.sroa.0.0..sroa_cast.i.i = bitcast %struct.event* %incdec.ptr22.i.i to i64*
  %agg.tmp2.sroa.0.0.copyload.i.i = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i.i, align 4
  %b.sroa.0.0.extract.trunc.i.i.i = trunc i64 %agg.tmp2.sroa.0.0.copyload.i.i to i32
  %14 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i.i to float
  %cmp.i.i.i = fcmp olt float %13, %14
  %15 = bitcast %struct.event* %B.021.i.i to i64*
  br i1 %cmp.i.i.i, label %while.body.i.i, label %while.end.i.i.loopexit107

while.body.i.i:                                   ; preds = %land.rhs.i.i
  store i64 %agg.tmp2.sroa.0.0.copyload.i.i, i64* %15, align 4
  %incdec.ptr.i.i = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.i, i64 -1
  %cmp1.i.i = icmp ult %struct.event* %incdec.ptr.i.i, %A
  br i1 %cmp1.i.i, label %while.end.i.i.loopexit, label %land.rhs.i.i

while.end.i.i.loopexit:                           ; preds = %while.body.i.i
  %agg.tmp2.sroa.0.0..sroa_cast.i.i.le = bitcast %struct.event* %incdec.ptr22.i.i to i64*
  br label %while.end.i.i

while.end.i.i.loopexit107:                        ; preds = %land.rhs.i.i
  %16 = bitcast %struct.event* %B.021.i.i to i64*
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.i.loopexit107, %while.end.i.i.loopexit, %for.body.i.i
  %v.sroa.0.0..sroa_cast10.pre-phi.i.i = phi i64* [ %v.sroa.0.0..sroa_cast9.i.i, %for.body.i.i ], [ %agg.tmp2.sroa.0.0..sroa_cast.i.i.le, %while.end.i.i.loopexit ], [ %16, %while.end.i.i.loopexit107 ]
  store i64 %v.sroa.0.0.copyload.i.i, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.i, align 4
  %indvars.iv.next.i.i = or i64 %indvars.iv.i.i, 1
  %arrayidx.i.i.1 = getelementptr inbounds %struct.event, %struct.event* %A, i64 %indvars.iv.next.i.i
  %v.sroa.0.0..sroa_cast9.i.i.1 = bitcast %struct.event* %arrayidx.i.i.1 to i64*
  %v.sroa.0.0.copyload.i.i.1 = load i64, i64* %v.sroa.0.0..sroa_cast9.i.i.1, align 4
  %a.sroa.0.0.extract.trunc.i.i.i.1 = trunc i64 %v.sroa.0.0.copyload.i.i.1 to i32
  %17 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.i.1 to float
  br label %land.rhs.i.i.1

if.else:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %call = tail call { %struct.event*, %struct.event* } @_Z5splitI5event6cmpValiESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i32 %n)
  %18 = extractvalue { %struct.event*, %struct.event* } %call, 1
  %19 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %20 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %19, i16* nonnull %20) #2
  %21 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %22 = call i8* @llvm.frameaddress(i32 0)
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 0
  store volatile i8* %22, i8** %23, align 8
  %24 = call i8* @llvm.stacksave()
  %25 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %24, i8** %25, align 8
  %26 = bitcast [5 x i8*]* %21 to i8*
  %27 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %26) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %if.else.split77, label %det.cont

if.else.split77:                                  ; preds = %if.else
  invoke fastcc void @_Z9quickSortI5event6cmpValiEvPT_T1_T0__det.achd.cilk({ %struct.event*, %struct.event* } %call, %struct.event* %A)
          to label %det.cont unwind label %lpad3

det.cont:                                         ; preds = %if.else, %if.else.split77
  %idx.ext = sext i32 %n to i64
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %A, i64 %idx.ext
  %sub.ptr.lhs.cast8 = ptrtoint %struct.event* %add.ptr to i64
  %sub.ptr.rhs.cast9 = ptrtoint %struct.event* %18 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %sub.ptr.div11 = ashr exact i64 %sub.ptr.sub10, 3
  invoke void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %18, i64 %sub.ptr.div11)
          to label %invoke.cont13 unwind label %lpad3

invoke.cont13:                                    ; preds = %det.cont
  %29 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %30 = load atomic i32, i32* %29 acquire, align 8
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %__cilk_sync.exit, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %invoke.cont13
  %33 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %19, i16* nonnull %20) #2
  store volatile i8* %22, i8** %23, align 8
  %34 = call i8* @llvm.stacksave()
  store volatile i8* %34, i8** %25, align 8
  %35 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %26) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %37 = load atomic i32, i32* %29 acquire, align 8
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %__cilk_sync.exit, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit:                                 ; preds = %invoke.cont13, %cilk.sync.runtimecall.i, %cilk.sync.excepting.i
  %40 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %41 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %40, i64 0, i32 12, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %if.end

lpad3:                                            ; preds = %if.else.split77, %det.cont
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %46 = load atomic i32, i32* %45 acquire, align 8
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %__cilk_sync.exit82, label %cilk.sync.savestate.i78

cilk.sync.savestate.i78:                          ; preds = %lpad3
  %49 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %19, i16* nonnull %20) #2
  store volatile i8* %22, i8** %23, align 8
  %50 = call i8* @llvm.stacksave()
  store volatile i8* %50, i8** %25, align 8
  %51 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %26) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %cilk.sync.runtimecall.i79, label %cilk.sync.excepting.i80

cilk.sync.runtimecall.i79:                        ; preds = %cilk.sync.savestate.i78
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit82

cilk.sync.excepting.i80:                          ; preds = %cilk.sync.savestate.i78
  %53 = load atomic i32, i32* %45 acquire, align 8
  %54 = and i32 %53, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %__cilk_sync.exit82, label %cilk.sync.rethrow.i81

cilk.sync.rethrow.i81:                            ; preds = %cilk.sync.excepting.i80
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit82:                               ; preds = %lpad3, %cilk.sync.runtimecall.i79, %cilk.sync.excepting.i80
  %56 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %57 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %56, i64 0, i32 12, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %61 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %60, i64 0, i32 9
  %64 = bitcast %struct.__cilkrts_stack_frame** %63 to i64*
  store atomic i64 %62, i64* %64 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %65 = load atomic i32, i32* %45 acquire, align 8
  %66 = icmp eq i32 %65, 16777216
  br i1 %66, label %__cilk_parent_epilogue.exit, label %body.i

body.i:                                           ; preds = %__cilk_sync.exit82
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %__cilk_sync.exit82, %body.i
  resume { i8*, i32 } %44

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
  %67 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.i.epil to float
  br label %land.rhs.i.i.epil

land.rhs.i.i.epil:                                ; preds = %while.body.i.i.epil, %land.rhs.lr.ph.i.i.epil
  %incdec.ptr22.i.i.epil = phi %struct.event* [ %incdec.ptr19.i.i.epil, %land.rhs.lr.ph.i.i.epil ], [ %incdec.ptr.i.i.epil, %while.body.i.i.epil ]
  %B.021.i.i.epil = phi %struct.event* [ %arrayidx.i.i.epil, %land.rhs.lr.ph.i.i.epil ], [ %incdec.ptr22.i.i.epil, %while.body.i.i.epil ]
  %agg.tmp2.sroa.0.0..sroa_cast.i.i.epil = bitcast %struct.event* %incdec.ptr22.i.i.epil to i64*
  %agg.tmp2.sroa.0.0.copyload.i.i.epil = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i.i.epil, align 4
  %b.sroa.0.0.extract.trunc.i.i.i.epil = trunc i64 %agg.tmp2.sroa.0.0.copyload.i.i.epil to i32
  %68 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i.i.epil to float
  %cmp.i.i.i.epil = fcmp olt float %67, %68
  %69 = bitcast %struct.event* %B.021.i.i.epil to i64*
  br i1 %cmp.i.i.i.epil, label %while.body.i.i.epil, label %while.end.i.i.epil.loopexit106

while.body.i.i.epil:                              ; preds = %land.rhs.i.i.epil
  store i64 %agg.tmp2.sroa.0.0.copyload.i.i.epil, i64* %69, align 4
  %incdec.ptr.i.i.epil = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.i.epil, i64 -1
  %cmp1.i.i.epil = icmp ult %struct.event* %incdec.ptr.i.i.epil, %A
  br i1 %cmp1.i.i.epil, label %while.end.i.i.epil.loopexit, label %land.rhs.i.i.epil

while.end.i.i.epil.loopexit:                      ; preds = %while.body.i.i.epil
  %agg.tmp2.sroa.0.0..sroa_cast.i.i.epil.le = bitcast %struct.event* %incdec.ptr22.i.i.epil to i64*
  br label %while.end.i.i.epil

while.end.i.i.epil.loopexit106:                   ; preds = %land.rhs.i.i.epil
  %70 = bitcast %struct.event* %B.021.i.i.epil to i64*
  br label %while.end.i.i.epil

while.end.i.i.epil:                               ; preds = %while.end.i.i.epil.loopexit106, %while.end.i.i.epil.loopexit, %for.body.i.i.epil
  %v.sroa.0.0..sroa_cast10.pre-phi.i.i.epil = phi i64* [ %v.sroa.0.0..sroa_cast9.i.i.epil, %for.body.i.i.epil ], [ %agg.tmp2.sroa.0.0..sroa_cast.i.i.epil.le, %while.end.i.i.epil.loopexit ], [ %70, %while.end.i.i.epil.loopexit106 ]
  store i64 %v.sroa.0.0.copyload.i.i.epil, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.i.epil, align 4
  br label %if.end

if.end:                                           ; preds = %__cilk_sync.exit, %while.end.i.i.epil, %if.end.loopexit.unr-lcssa, %while.end.i
  %71 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %72 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %71, i64 0, i32 9
  %75 = bitcast %struct.__cilkrts_stack_frame** %74 to i64*
  store atomic i64 %73, i64* %75 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %76 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %77 = load atomic i32, i32* %76 acquire, align 8
  %78 = icmp eq i32 %77, 16777216
  br i1 %78, label %__cilk_parent_epilogue.exit84, label %body.i83

body.i83:                                         ; preds = %if.end
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit84

__cilk_parent_epilogue.exit84:                    ; preds = %if.end, %body.i83
  ret void

land.rhs.i.i.1:                                   ; preds = %while.body.i.i.1, %while.end.i.i
  %incdec.ptr22.i.i.1 = phi %struct.event* [ %arrayidx.i.i, %while.end.i.i ], [ %incdec.ptr.i.i.1, %while.body.i.i.1 ]
  %B.021.i.i.1 = phi %struct.event* [ %arrayidx.i.i.1, %while.end.i.i ], [ %incdec.ptr22.i.i.1, %while.body.i.i.1 ]
  %agg.tmp2.sroa.0.0..sroa_cast.i.i.1 = bitcast %struct.event* %incdec.ptr22.i.i.1 to i64*
  %agg.tmp2.sroa.0.0.copyload.i.i.1 = load i64, i64* %agg.tmp2.sroa.0.0..sroa_cast.i.i.1, align 4
  %b.sroa.0.0.extract.trunc.i.i.i.1 = trunc i64 %agg.tmp2.sroa.0.0.copyload.i.i.1 to i32
  %79 = bitcast i32 %b.sroa.0.0.extract.trunc.i.i.i.1 to float
  %cmp.i.i.i.1 = fcmp olt float %17, %79
  br i1 %cmp.i.i.i.1, label %while.body.i.i.1, label %while.end.i.i.1

while.body.i.i.1:                                 ; preds = %land.rhs.i.i.1
  %80 = bitcast %struct.event* %B.021.i.i.1 to i64*
  store i64 %agg.tmp2.sroa.0.0.copyload.i.i.1, i64* %80, align 4
  %incdec.ptr.i.i.1 = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.i.1, i64 -1
  %cmp1.i.i.1 = icmp ult %struct.event* %incdec.ptr.i.i.1, %A
  br i1 %cmp1.i.i.1, label %while.end.i.i.1, label %land.rhs.i.i.1

while.end.i.i.1:                                  ; preds = %while.body.i.i.1, %land.rhs.i.i.1
  %v.sroa.0.0..sroa_cast10.pre-phi.i.i.1.pre-phi.pre-phi.in = phi %struct.event* [ %B.021.i.i.1, %land.rhs.i.i.1 ], [ %incdec.ptr22.i.i.1, %while.body.i.i.1 ]
  %v.sroa.0.0..sroa_cast10.pre-phi.i.i.1.pre-phi.pre-phi = bitcast %struct.event* %v.sroa.0.0..sroa_cast10.pre-phi.i.i.1.pre-phi.pre-phi.in to i64*
  store i64 %v.sroa.0.0.copyload.i.i.1, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.i.1.pre-phi.pre-phi, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %for.body.i.i
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.ceil.f64(double) #15

; Function Attrs: stealable uwtable
define linkonce_odr void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %A, i64 %n) local_unnamed_addr #8 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %struct.__cilkrts_worker* %0, null
  br i1 %1, label %slowpath.i, label %__cilkrts_enter_frame_1.exit

slowpath.i:                                       ; preds = %entry
  %2 = call %struct.__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilkrts_enter_frame_1.exit

__cilkrts_enter_frame_1.exit:                     ; preds = %entry, %slowpath.i
  %.sink = phi i32 [ 16777344, %slowpath.i ], [ 16777216, %entry ]
  %3 = phi %struct.__cilkrts_worker* [ %2, %slowpath.i ], [ %0, %entry ]
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %3, i64 0, i32 9
  %6 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %5 acquire, align 8
  %7 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %6, %struct.__cilkrts_stack_frame** %7 release, align 8
  %8 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %3, %struct.__cilkrts_worker** %8 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %5 release, align 8
  %cmp = icmp slt i64 %n, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %__cilkrts_enter_frame_1.exit
  tail call void @_Z15quickSortSerialI5event6cmpVallEvPT_T1_T0_(%struct.event* %A, i64 %n)
  %.pre = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  br label %if.end

if.else:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %call = tail call { %struct.event*, %struct.event* } @_Z5splitI5event6cmpVallESt4pairIPT_S4_ES4_T1_T0_(%struct.event* %A, i64 %n)
  %9 = extractvalue { %struct.event*, %struct.event* } %call, 1
  %10 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %11 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i16* nonnull %11) #2
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %13 = call i8* @llvm.frameaddress(i32 0)
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  store volatile i8* %13, i8** %14, align 8
  %15 = call i8* @llvm.stacksave()
  %16 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %15, i8** %16, align 8
  %17 = bitcast [5 x i8*]* %12 to i8*
  %18 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %17) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.else.split32, label %det.cont

if.else.split32:                                  ; preds = %if.else
  invoke fastcc void @_Z9quickSortI5event6cmpValiEvPT_T1_T0__det.achd.cilk({ %struct.event*, %struct.event* } %call, %struct.event* align 1 %A)
          to label %det.cont unwind label %lpad3

det.cont:                                         ; preds = %if.else, %if.else.split32
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %A, i64 %n
  %sub.ptr.lhs.cast8 = ptrtoint %struct.event* %add.ptr to i64
  %sub.ptr.rhs.cast9 = ptrtoint %struct.event* %9 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %sub.ptr.div11 = ashr exact i64 %sub.ptr.sub10, 3
  invoke void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %9, i64 %sub.ptr.div11)
          to label %invoke.cont13 unwind label %lpad3

invoke.cont13:                                    ; preds = %det.cont
  %20 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %21 = load atomic i32, i32* %20 acquire, align 8
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %__cilk_sync.exit, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %invoke.cont13
  %24 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i16* nonnull %11) #2
  store volatile i8* %13, i8** %14, align 8
  %25 = call i8* @llvm.stacksave()
  store volatile i8* %25, i8** %16, align 8
  %26 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %17) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %28 = load atomic i32, i32* %20 acquire, align 8
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %__cilk_sync.exit, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit:                                 ; preds = %invoke.cont13, %cilk.sync.runtimecall.i, %cilk.sync.excepting.i
  %31 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %32 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %31, i64 0, i32 12, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  br label %if.end

lpad3:                                            ; preds = %if.else.split32, %det.cont
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %37 = load atomic i32, i32* %36 acquire, align 8
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %__cilk_sync.exit37, label %cilk.sync.savestate.i33

cilk.sync.savestate.i33:                          ; preds = %lpad3
  %40 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i16* nonnull %11) #2
  store volatile i8* %13, i8** %14, align 8
  %41 = call i8* @llvm.stacksave()
  store volatile i8* %41, i8** %16, align 8
  %42 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %17) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %cilk.sync.runtimecall.i34, label %cilk.sync.excepting.i35

cilk.sync.runtimecall.i34:                        ; preds = %cilk.sync.savestate.i33
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit37

cilk.sync.excepting.i35:                          ; preds = %cilk.sync.savestate.i33
  %44 = load atomic i32, i32* %36 acquire, align 8
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %__cilk_sync.exit37, label %cilk.sync.rethrow.i36

cilk.sync.rethrow.i36:                            ; preds = %cilk.sync.excepting.i35
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit37:                               ; preds = %lpad3, %cilk.sync.runtimecall.i34, %cilk.sync.excepting.i35
  %47 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %48 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %47, i64 0, i32 12, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %52 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %51, i64 0, i32 9
  %55 = bitcast %struct.__cilkrts_stack_frame** %54 to i64*
  store atomic i64 %53, i64* %55 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %56 = load atomic i32, i32* %36 acquire, align 8
  %57 = icmp eq i32 %56, 16777216
  br i1 %57, label %__cilk_parent_epilogue.exit, label %body.i

body.i:                                           ; preds = %__cilk_sync.exit37
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %__cilk_sync.exit37, %body.i
  resume { i8*, i32 } %35

if.end:                                           ; preds = %__cilk_sync.exit, %if.then
  %.pre-phi = phi i32* [ %20, %__cilk_sync.exit ], [ %.pre, %if.then ]
  %58 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %59 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %58, i64 0, i32 9
  %62 = bitcast %struct.__cilkrts_stack_frame** %61 to i64*
  store atomic i64 %60, i64* %62 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %63 = load atomic i32, i32* %.pre-phi acquire, align 8
  %64 = icmp eq i32 %63, 16777216
  br i1 %64, label %__cilk_parent_epilogue.exit39, label %body.i38

body.i38:                                         ; preds = %if.end
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit39

__cilk_parent_epilogue.exit39:                    ; preds = %if.end, %body.i38
  ret void
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
  %a.i.0.a.i.0.a.i.0..sroa_cast = bitcast i64* %a.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %a.i.0.a.i.0.a.i.0..sroa_cast)
  %b.i.0.b.i.0.b.i.0..sroa_cast = bitcast i64* %b.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %b.i.0.b.i.0.b.i.0..sroa_cast)
  %c.i.0.c.i.0.c.i.0..sroa_cast = bitcast i64* %c.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %c.i.0.c.i.0.c.i.0..sroa_cast)
  %a.i.0.a.i.0.a.i.0.a.0.tmpcast.sroa_cast = bitcast i64* %a.i to %struct.event*
  %b.i.0.b.i.0.b.i.0.b.0.tmpcast30.sroa_cast = bitcast i64* %b.i to %struct.event*
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
  %c.i.0.c.i.0.c.i.0.c.0.tmpcast31.sroa_cast141 = bitcast i64* %c.i to %struct.event*
  %c.a.i = select i1 %cmp.i40.i, %struct.event* %c.i.0.c.i.0.c.i.0.c.0.tmpcast31.sroa_cast141, %struct.event* %a.i.0.a.i.0.a.i.0.a.0.tmpcast.sroa_cast
  br label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit

cond.false13.i:                                   ; preds = %entry
  %cmp.i37.i = fcmp olt float %0, %2
  br i1 %cmp.i37.i, label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit, label %cond.false18.i

cond.false18.i:                                   ; preds = %cond.false13.i
  %cmp.i34.i = fcmp olt float %1, %2
  %c.i.0.c.i.0.c.i.0.c.0.tmpcast31.sroa_cast = bitcast i64* %c.i to %struct.event*
  %c.b.i = select i1 %cmp.i34.i, %struct.event* %c.i.0.c.i.0.c.i.0.c.0.tmpcast31.sroa_cast, %struct.event* %b.i.0.b.i.0.b.i.0.b.0.tmpcast30.sroa_cast
  br label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit

_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit: ; preds = %cond.true.i, %cond.false.i, %cond.false13.i, %cond.false18.i
  %cond-lvalue29.i = phi %struct.event* [ %c.a.i, %cond.false.i ], [ %b.i.0.b.i.0.b.i.0.b.0.tmpcast30.sroa_cast, %cond.true.i ], [ %c.b.i, %cond.false18.i ], [ %a.i.0.a.i.0.a.i.0.a.0.tmpcast.sroa_cast, %cond.false13.i ]
  %retval.sroa.0.0..sroa_cast.i = bitcast %struct.event* %cond-lvalue29.i to i64*
  %retval.sroa.0.0.copyload.i = load i64, i64* %retval.sroa.0.0..sroa_cast.i, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %a.i.0.a.i.0.a.i.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %b.i.0.b.i.0.b.i.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %c.i.0.c.i.0.c.i.0..sroa_cast)
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
  br i1 %cmp.i.i, label %while.body.i, label %while.end.i.loopexit85

while.body.i:                                     ; preds = %land.rhs.i
  store i64 %agg.tmp2.sroa.0.0.copyload.i, i64* %5, align 4
  %incdec.ptr.i = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i, i64 -1
  %cmp1.i = icmp ult %struct.event* %incdec.ptr.i, %A
  br i1 %cmp1.i, label %while.end.i.loopexit, label %land.rhs.i

while.end.i.loopexit:                             ; preds = %while.body.i
  %agg.tmp2.sroa.0.0..sroa_cast.i.le = bitcast %struct.event* %incdec.ptr22.i to i64*
  br label %while.end.i

while.end.i.loopexit85:                           ; preds = %land.rhs.i
  %6 = bitcast %struct.event* %B.021.i to i64*
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit85, %while.end.i.loopexit, %for.body.i
  %v.sroa.0.0..sroa_cast10.pre-phi.i = phi i64* [ %v.sroa.0.0..sroa_cast9.i, %for.body.i ], [ %agg.tmp2.sroa.0.0..sroa_cast.i.le, %while.end.i.loopexit ], [ %6, %while.end.i.loopexit85 ]
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
  br i1 %cmp.i.i.epil, label %while.body.i.epil, label %while.end.i.epil.loopexit84

while.body.i.epil:                                ; preds = %land.rhs.i.epil
  store i64 %agg.tmp2.sroa.0.0.copyload.i.epil, i64* %10, align 4
  %incdec.ptr.i.epil = getelementptr inbounds %struct.event, %struct.event* %incdec.ptr22.i.epil, i64 -1
  %cmp1.i.epil = icmp ult %struct.event* %incdec.ptr.i.epil, %A
  br i1 %cmp1.i.epil, label %while.end.i.epil.loopexit, label %land.rhs.i.epil

while.end.i.epil.loopexit:                        ; preds = %while.body.i.epil
  %agg.tmp2.sroa.0.0..sroa_cast.i.epil.le = bitcast %struct.event* %incdec.ptr22.i.epil to i64*
  br label %while.end.i.epil

while.end.i.epil.loopexit84:                      ; preds = %land.rhs.i.epil
  %11 = bitcast %struct.event* %B.021.i.epil to i64*
  br label %while.end.i.epil

while.end.i.epil:                                 ; preds = %while.end.i.epil.loopexit84, %while.end.i.epil.loopexit, %for.body.i.epil
  %v.sroa.0.0..sroa_cast10.pre-phi.i.epil = phi i64* [ %v.sroa.0.0..sroa_cast9.i.epil, %for.body.i.epil ], [ %agg.tmp2.sroa.0.0..sroa_cast.i.epil.le, %while.end.i.epil.loopexit ], [ %11, %while.end.i.epil.loopexit84 ]
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
  %v.sroa.0.0..sroa_cast10.pre-phi.i.1.pre-phi.pre-phi.in = phi %struct.event* [ %B.021.i.1, %land.rhs.i.1 ], [ %incdec.ptr22.i.1, %while.body.i.1 ]
  %v.sroa.0.0..sroa_cast10.pre-phi.i.1.pre-phi.pre-phi = bitcast %struct.event* %v.sroa.0.0..sroa_cast10.pre-phi.i.1.pre-phi.pre-phi.in to i64*
  store i64 %v.sroa.0.0.copyload.i.1, i64* %v.sroa.0.0..sroa_cast10.pre-phi.i.1.pre-phi.pre-phi, align 4
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
  %a.i.0.a.i.0.a.i.0..sroa_cast = bitcast i64* %a.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %a.i.0.a.i.0.a.i.0..sroa_cast)
  %b.i.0.b.i.0.b.i.0..sroa_cast = bitcast i64* %b.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %b.i.0.b.i.0.b.i.0..sroa_cast)
  %c.i.0.c.i.0.c.i.0..sroa_cast = bitcast i64* %c.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %c.i.0.c.i.0.c.i.0..sroa_cast)
  %a.i.0.a.i.0.a.i.0.a.0.tmpcast.sroa_cast = bitcast i64* %a.i to %struct.event*
  %b.i.0.b.i.0.b.i.0.b.0.tmpcast30.sroa_cast = bitcast i64* %b.i to %struct.event*
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
  %c.i.0.c.i.0.c.i.0.c.0.tmpcast31.sroa_cast139 = bitcast i64* %c.i to %struct.event*
  %c.a.i = select i1 %cmp.i40.i, %struct.event* %c.i.0.c.i.0.c.i.0.c.0.tmpcast31.sroa_cast139, %struct.event* %a.i.0.a.i.0.a.i.0.a.0.tmpcast.sroa_cast
  br label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit

cond.false13.i:                                   ; preds = %entry
  %cmp.i37.i = fcmp olt float %0, %2
  br i1 %cmp.i37.i, label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit, label %cond.false18.i

cond.false18.i:                                   ; preds = %cond.false13.i
  %cmp.i34.i = fcmp olt float %1, %2
  %c.i.0.c.i.0.c.i.0.c.0.tmpcast31.sroa_cast = bitcast i64* %c.i to %struct.event*
  %c.b.i = select i1 %cmp.i34.i, %struct.event* %c.i.0.c.i.0.c.i.0.c.0.tmpcast31.sroa_cast, %struct.event* %b.i.0.b.i.0.b.i.0.b.0.tmpcast30.sroa_cast
  br label %_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit

_Z13medianOfThreeI5event6cmpValET_S2_S2_S2_T0_.exit: ; preds = %cond.true.i, %cond.false.i, %cond.false13.i, %cond.false18.i
  %cond-lvalue29.i = phi %struct.event* [ %c.a.i, %cond.false.i ], [ %b.i.0.b.i.0.b.i.0.b.0.tmpcast30.sroa_cast, %cond.true.i ], [ %c.b.i, %cond.false18.i ], [ %a.i.0.a.i.0.a.i.0.a.0.tmpcast.sroa_cast, %cond.false13.i ]
  %retval.sroa.0.0..sroa_cast.i = bitcast %struct.event* %cond-lvalue29.i to i64*
  %retval.sroa.0.0.copyload.i = load i64, i64* %retval.sroa.0.0..sroa_cast.i, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %a.i.0.a.i.0.a.i.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %b.i.0.b.i.0.b.i.0..sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %c.i.0.c.i.0.c.i.0..sroa_cast)
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
define linkonce_odr i32 @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb(i32* %Out, i64 %s, i64 %e, i32* %g.coerce, i32 %zero, i1 zeroext %inclusive, i1 zeroext %back) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, align 8
  %1 = alloca { i64, i64, i64, i64, i64, i32*, i32* }, align 8
  %sub = sub i64 %e, %s
  %sub2 = add nsw i64 %sub, -1
  %div = sdiv i64 %sub2, 1024
  %add = add nsw i64 %div, 1
  %cmp = icmp slt i64 %sub, 2049
  br i1 %cmp, label %if.then, label %pfor.detach.lr.ph

if.then:                                          ; preds = %entry
  %cmp98.i = icmp sgt i64 %e, %s
  br i1 %inclusive, label %if.then.i, label %if.else16.i

if.then.i:                                        ; preds = %if.then
  br i1 %back, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  br i1 %cmp98.i, label %for.body.i.preheader, label %cleanup

for.body.i.preheader:                             ; preds = %if.then3.i
  %2 = add i64 %e, -1
  %3 = sub i64 %2, %s
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
  %4 = load i32, i32* %arrayidx.i.i.prol, align 4, !tbaa !12
  %add.i79.i.prol = add nsw i32 %4, %r.099.i.prol
  %arrayidx.i.prol = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.prol
  store i32 %add.i79.i.prol, i32* %arrayidx.i.prol, align 4, !tbaa !12
  %prol.iter.sub = add nsw i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.i.prol.loopexit.loopexit, label %for.body.i.prol, !llvm.loop !89

for.body.i.prol.loopexit.loopexit:                ; preds = %for.body.i.prol
  %5 = sub i64 %e, %xtraiter
  br label %for.body.i.prol.loopexit

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol.loopexit.loopexit, %for.body.i.preheader
  %i.0100.in.i.unr = phi i64 [ %e, %for.body.i.preheader ], [ %5, %for.body.i.prol.loopexit.loopexit ]
  %r.099.i.unr = phi i32 [ %zero, %for.body.i.preheader ], [ %add.i79.i.prol, %for.body.i.prol.loopexit.loopexit ]
  %add.i79.i.lcssa.unr = phi i32 [ undef, %for.body.i.preheader ], [ %add.i79.i.prol, %for.body.i.prol.loopexit.loopexit ]
  %6 = icmp ult i64 %3, 7
  br i1 %6, label %cleanup, label %for.body.i.preheader409

for.body.i.preheader409:                          ; preds = %for.body.i.prol.loopexit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader409, %for.body.i
  %i.0100.in.i = phi i64 [ %i.0100.i.7, %for.body.i ], [ %i.0100.in.i.unr, %for.body.i.preheader409 ]
  %r.099.i = phi i32 [ %add.i79.i.7, %for.body.i ], [ %r.099.i.unr, %for.body.i.preheader409 ]
  %i.0100.i = add nsw i64 %i.0100.in.i, -1
  %arrayidx.i.i = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i
  %7 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !12
  %add.i79.i = add nsw i32 %7, %r.099.i
  %arrayidx.i = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i
  store i32 %add.i79.i, i32* %arrayidx.i, align 4, !tbaa !12
  %i.0100.i.1 = add nsw i64 %i.0100.in.i, -2
  %arrayidx.i.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.1
  %8 = load i32, i32* %arrayidx.i.i.1, align 4, !tbaa !12
  %add.i79.i.1 = add nsw i32 %8, %add.i79.i
  %arrayidx.i.1 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.1
  store i32 %add.i79.i.1, i32* %arrayidx.i.1, align 4, !tbaa !12
  %i.0100.i.2 = add nsw i64 %i.0100.in.i, -3
  %arrayidx.i.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.2
  %9 = load i32, i32* %arrayidx.i.i.2, align 4, !tbaa !12
  %add.i79.i.2 = add nsw i32 %9, %add.i79.i.1
  %arrayidx.i.2 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.2
  store i32 %add.i79.i.2, i32* %arrayidx.i.2, align 4, !tbaa !12
  %i.0100.i.3 = add nsw i64 %i.0100.in.i, -4
  %arrayidx.i.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.3
  %10 = load i32, i32* %arrayidx.i.i.3, align 4, !tbaa !12
  %add.i79.i.3 = add nsw i32 %10, %add.i79.i.2
  %arrayidx.i.3 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.3
  store i32 %add.i79.i.3, i32* %arrayidx.i.3, align 4, !tbaa !12
  %i.0100.i.4 = add nsw i64 %i.0100.in.i, -5
  %arrayidx.i.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.4
  %11 = load i32, i32* %arrayidx.i.i.4, align 4, !tbaa !12
  %add.i79.i.4 = add nsw i32 %11, %add.i79.i.3
  %arrayidx.i.4 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.4
  store i32 %add.i79.i.4, i32* %arrayidx.i.4, align 4, !tbaa !12
  %i.0100.i.5 = add nsw i64 %i.0100.in.i, -6
  %arrayidx.i.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.5
  %12 = load i32, i32* %arrayidx.i.i.5, align 4, !tbaa !12
  %add.i79.i.5 = add nsw i32 %12, %add.i79.i.4
  %arrayidx.i.5 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.5
  store i32 %add.i79.i.5, i32* %arrayidx.i.5, align 4, !tbaa !12
  %i.0100.i.6 = add nsw i64 %i.0100.in.i, -7
  %arrayidx.i.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.6
  %13 = load i32, i32* %arrayidx.i.i.6, align 4, !tbaa !12
  %add.i79.i.6 = add nsw i32 %13, %add.i79.i.5
  %arrayidx.i.6 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.6
  store i32 %add.i79.i.6, i32* %arrayidx.i.6, align 4, !tbaa !12
  %i.0100.i.7 = add nsw i64 %i.0100.in.i, -8
  %arrayidx.i.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %i.0100.i.7
  %14 = load i32, i32* %arrayidx.i.i.7, align 4, !tbaa !12
  %add.i79.i.7 = add nsw i32 %14, %add.i79.i.6
  %arrayidx.i.7 = getelementptr inbounds i32, i32* %Out, i64 %i.0100.i.7
  store i32 %add.i79.i.7, i32* %arrayidx.i.7, align 4, !tbaa !12
  %cmp.i.7 = icmp sgt i64 %i.0100.i.7, %s
  br i1 %cmp.i.7, label %for.body.i, label %cleanup

if.else.i:                                        ; preds = %if.then.i
  br i1 %cmp98.i, label %for.body9.i.preheader, label %cleanup

for.body9.i.preheader:                            ; preds = %if.else.i
  %15 = add i64 %e, -1
  %16 = sub i64 %15, %s
  %xtraiter325 = and i64 %sub, 7
  %lcmp.mod326 = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326, label %for.body9.i.prol.loopexit, label %for.body9.i.prol.preheader

for.body9.i.prol.preheader:                       ; preds = %for.body9.i.preheader
  br label %for.body9.i.prol

for.body9.i.prol:                                 ; preds = %for.body9.i.prol.preheader, %for.body9.i.prol
  %i5.0103.i.prol = phi i64 [ %inc.i.prol, %for.body9.i.prol ], [ %s, %for.body9.i.prol.preheader ]
  %r.1102.i.prol = phi i32 [ %add.i76.i.prol, %for.body9.i.prol ], [ %zero, %for.body9.i.prol.preheader ]
  %prol.iter327 = phi i64 [ %prol.iter327.sub, %for.body9.i.prol ], [ %xtraiter325, %for.body9.i.prol.preheader ]
  %arrayidx.i78.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %i5.0103.i.prol
  %17 = load i32, i32* %arrayidx.i78.i.prol, align 4, !tbaa !12
  %add.i76.i.prol = add nsw i32 %17, %r.1102.i.prol
  %arrayidx13.i.prol = getelementptr inbounds i32, i32* %Out, i64 %i5.0103.i.prol
  store i32 %add.i76.i.prol, i32* %arrayidx13.i.prol, align 4, !tbaa !12
  %inc.i.prol = add nsw i64 %i5.0103.i.prol, 1
  %prol.iter327.sub = add nsw i64 %prol.iter327, -1
  %prol.iter327.cmp = icmp eq i64 %prol.iter327.sub, 0
  br i1 %prol.iter327.cmp, label %for.body9.i.prol.loopexit.loopexit, label %for.body9.i.prol, !llvm.loop !90

for.body9.i.prol.loopexit.loopexit:               ; preds = %for.body9.i.prol
  %18 = add i64 %xtraiter325, %s
  br label %for.body9.i.prol.loopexit

for.body9.i.prol.loopexit:                        ; preds = %for.body9.i.prol.loopexit.loopexit, %for.body9.i.preheader
  %add.i76.i.lcssa.unr = phi i32 [ undef, %for.body9.i.preheader ], [ %add.i76.i.prol, %for.body9.i.prol.loopexit.loopexit ]
  %i5.0103.i.unr = phi i64 [ %s, %for.body9.i.preheader ], [ %18, %for.body9.i.prol.loopexit.loopexit ]
  %r.1102.i.unr = phi i32 [ %zero, %for.body9.i.preheader ], [ %add.i76.i.prol, %for.body9.i.prol.loopexit.loopexit ]
  %19 = icmp ult i64 %16, 7
  br i1 %19, label %cleanup, label %for.body9.i.preheader410

for.body9.i.preheader410:                         ; preds = %for.body9.i.prol.loopexit
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.preheader410, %for.body9.i
  %i5.0103.i = phi i64 [ %inc.i.7, %for.body9.i ], [ %i5.0103.i.unr, %for.body9.i.preheader410 ]
  %r.1102.i = phi i32 [ %add.i76.i.7, %for.body9.i ], [ %r.1102.i.unr, %for.body9.i.preheader410 ]
  %arrayidx.i78.i = getelementptr inbounds i32, i32* %g.coerce, i64 %i5.0103.i
  %20 = load i32, i32* %arrayidx.i78.i, align 4, !tbaa !12
  %add.i76.i = add nsw i32 %20, %r.1102.i
  %arrayidx13.i = getelementptr inbounds i32, i32* %Out, i64 %i5.0103.i
  store i32 %add.i76.i, i32* %arrayidx13.i, align 4, !tbaa !12
  %inc.i = add nsw i64 %i5.0103.i, 1
  %arrayidx.i78.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i
  %21 = load i32, i32* %arrayidx.i78.i.1, align 4, !tbaa !12
  %add.i76.i.1 = add nsw i32 %21, %add.i76.i
  %arrayidx13.i.1 = getelementptr inbounds i32, i32* %Out, i64 %inc.i
  store i32 %add.i76.i.1, i32* %arrayidx13.i.1, align 4, !tbaa !12
  %inc.i.1 = add nsw i64 %i5.0103.i, 2
  %arrayidx.i78.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.1
  %22 = load i32, i32* %arrayidx.i78.i.2, align 4, !tbaa !12
  %add.i76.i.2 = add nsw i32 %22, %add.i76.i.1
  %arrayidx13.i.2 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.1
  store i32 %add.i76.i.2, i32* %arrayidx13.i.2, align 4, !tbaa !12
  %inc.i.2 = add nsw i64 %i5.0103.i, 3
  %arrayidx.i78.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.2
  %23 = load i32, i32* %arrayidx.i78.i.3, align 4, !tbaa !12
  %add.i76.i.3 = add nsw i32 %23, %add.i76.i.2
  %arrayidx13.i.3 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.2
  store i32 %add.i76.i.3, i32* %arrayidx13.i.3, align 4, !tbaa !12
  %inc.i.3 = add nsw i64 %i5.0103.i, 4
  %arrayidx.i78.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.3
  %24 = load i32, i32* %arrayidx.i78.i.4, align 4, !tbaa !12
  %add.i76.i.4 = add nsw i32 %24, %add.i76.i.3
  %arrayidx13.i.4 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.3
  store i32 %add.i76.i.4, i32* %arrayidx13.i.4, align 4, !tbaa !12
  %inc.i.4 = add nsw i64 %i5.0103.i, 5
  %arrayidx.i78.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.4
  %25 = load i32, i32* %arrayidx.i78.i.5, align 4, !tbaa !12
  %add.i76.i.5 = add nsw i32 %25, %add.i76.i.4
  %arrayidx13.i.5 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.4
  store i32 %add.i76.i.5, i32* %arrayidx13.i.5, align 4, !tbaa !12
  %inc.i.5 = add nsw i64 %i5.0103.i, 6
  %arrayidx.i78.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.5
  %26 = load i32, i32* %arrayidx.i78.i.6, align 4, !tbaa !12
  %add.i76.i.6 = add nsw i32 %26, %add.i76.i.5
  %arrayidx13.i.6 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.5
  store i32 %add.i76.i.6, i32* %arrayidx13.i.6, align 4, !tbaa !12
  %inc.i.6 = add nsw i64 %i5.0103.i, 7
  %arrayidx.i78.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc.i.6
  %27 = load i32, i32* %arrayidx.i78.i.7, align 4, !tbaa !12
  %add.i76.i.7 = add nsw i32 %27, %add.i76.i.6
  %arrayidx13.i.7 = getelementptr inbounds i32, i32* %Out, i64 %inc.i.6
  store i32 %add.i76.i.7, i32* %arrayidx13.i.7, align 4, !tbaa !12
  %inc.i.7 = add nsw i64 %i5.0103.i, 8
  %exitcond.i.7 = icmp eq i64 %inc.i.7, %e
  br i1 %exitcond.i.7, label %cleanup, label %for.body9.i

if.else16.i:                                      ; preds = %if.then
  br i1 %back, label %if.then18.i, label %if.else31.i

if.then18.i:                                      ; preds = %if.else16.i
  br i1 %cmp98.i, label %for.body24.i.preheader, label %cleanup

for.body24.i.preheader:                           ; preds = %if.then18.i
  %28 = add i64 %e, -1
  %29 = sub i64 %28, %s
  %xtraiter328 = and i64 %sub, 7
  %lcmp.mod329 = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329, label %for.body24.i.prol.loopexit, label %for.body24.i.prol.preheader

for.body24.i.prol.preheader:                      ; preds = %for.body24.i.preheader
  br label %for.body24.i.prol

for.body24.i.prol:                                ; preds = %for.body24.i.prol.preheader, %for.body24.i.prol
  %i19.0108.in.i.prol = phi i64 [ %i19.0108.i.prol, %for.body24.i.prol ], [ %e, %for.body24.i.prol.preheader ]
  %r.2107.i.prol = phi i32 [ %add.i73.i.prol, %for.body24.i.prol ], [ %zero, %for.body24.i.prol.preheader ]
  %prol.iter330 = phi i64 [ %prol.iter330.sub, %for.body24.i.prol ], [ %xtraiter328, %for.body24.i.prol.preheader ]
  %i19.0108.i.prol = add nsw i64 %i19.0108.in.i.prol, -1
  %arrayidx.i75.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.prol
  %30 = load i32, i32* %arrayidx.i75.i.prol, align 4, !tbaa !12
  %arrayidx26.i.prol = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.prol
  store i32 %r.2107.i.prol, i32* %arrayidx26.i.prol, align 4, !tbaa !12
  %add.i73.i.prol = add nsw i32 %30, %r.2107.i.prol
  %prol.iter330.sub = add nsw i64 %prol.iter330, -1
  %prol.iter330.cmp = icmp eq i64 %prol.iter330.sub, 0
  br i1 %prol.iter330.cmp, label %for.body24.i.prol.loopexit.loopexit, label %for.body24.i.prol, !llvm.loop !91

for.body24.i.prol.loopexit.loopexit:              ; preds = %for.body24.i.prol
  %31 = sub i64 %e, %xtraiter328
  br label %for.body24.i.prol.loopexit

for.body24.i.prol.loopexit:                       ; preds = %for.body24.i.prol.loopexit.loopexit, %for.body24.i.preheader
  %i19.0108.in.i.unr = phi i64 [ %e, %for.body24.i.preheader ], [ %31, %for.body24.i.prol.loopexit.loopexit ]
  %r.2107.i.unr = phi i32 [ %zero, %for.body24.i.preheader ], [ %add.i73.i.prol, %for.body24.i.prol.loopexit.loopexit ]
  %add.i73.i.lcssa.unr = phi i32 [ undef, %for.body24.i.preheader ], [ %add.i73.i.prol, %for.body24.i.prol.loopexit.loopexit ]
  %32 = icmp ult i64 %29, 7
  br i1 %32, label %cleanup, label %for.body24.i.preheader412

for.body24.i.preheader412:                        ; preds = %for.body24.i.prol.loopexit
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.preheader412, %for.body24.i
  %i19.0108.in.i = phi i64 [ %i19.0108.i.7, %for.body24.i ], [ %i19.0108.in.i.unr, %for.body24.i.preheader412 ]
  %r.2107.i = phi i32 [ %add.i73.i.7, %for.body24.i ], [ %r.2107.i.unr, %for.body24.i.preheader412 ]
  %i19.0108.i = add nsw i64 %i19.0108.in.i, -1
  %arrayidx.i75.i = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i
  %33 = load i32, i32* %arrayidx.i75.i, align 4, !tbaa !12
  %arrayidx26.i = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i
  store i32 %r.2107.i, i32* %arrayidx26.i, align 4, !tbaa !12
  %add.i73.i = add nsw i32 %33, %r.2107.i
  %i19.0108.i.1 = add nsw i64 %i19.0108.in.i, -2
  %arrayidx.i75.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.1
  %34 = load i32, i32* %arrayidx.i75.i.1, align 4, !tbaa !12
  %arrayidx26.i.1 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.1
  store i32 %add.i73.i, i32* %arrayidx26.i.1, align 4, !tbaa !12
  %add.i73.i.1 = add nsw i32 %34, %add.i73.i
  %i19.0108.i.2 = add nsw i64 %i19.0108.in.i, -3
  %arrayidx.i75.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.2
  %35 = load i32, i32* %arrayidx.i75.i.2, align 4, !tbaa !12
  %arrayidx26.i.2 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.2
  store i32 %add.i73.i.1, i32* %arrayidx26.i.2, align 4, !tbaa !12
  %add.i73.i.2 = add nsw i32 %35, %add.i73.i.1
  %i19.0108.i.3 = add nsw i64 %i19.0108.in.i, -4
  %arrayidx.i75.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.3
  %36 = load i32, i32* %arrayidx.i75.i.3, align 4, !tbaa !12
  %arrayidx26.i.3 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.3
  store i32 %add.i73.i.2, i32* %arrayidx26.i.3, align 4, !tbaa !12
  %add.i73.i.3 = add nsw i32 %36, %add.i73.i.2
  %i19.0108.i.4 = add nsw i64 %i19.0108.in.i, -5
  %arrayidx.i75.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.4
  %37 = load i32, i32* %arrayidx.i75.i.4, align 4, !tbaa !12
  %arrayidx26.i.4 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.4
  store i32 %add.i73.i.3, i32* %arrayidx26.i.4, align 4, !tbaa !12
  %add.i73.i.4 = add nsw i32 %37, %add.i73.i.3
  %i19.0108.i.5 = add nsw i64 %i19.0108.in.i, -6
  %arrayidx.i75.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.5
  %38 = load i32, i32* %arrayidx.i75.i.5, align 4, !tbaa !12
  %arrayidx26.i.5 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.5
  store i32 %add.i73.i.4, i32* %arrayidx26.i.5, align 4, !tbaa !12
  %add.i73.i.5 = add nsw i32 %38, %add.i73.i.4
  %i19.0108.i.6 = add nsw i64 %i19.0108.in.i, -7
  %arrayidx.i75.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.6
  %39 = load i32, i32* %arrayidx.i75.i.6, align 4, !tbaa !12
  %arrayidx26.i.6 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.6
  store i32 %add.i73.i.5, i32* %arrayidx26.i.6, align 4, !tbaa !12
  %add.i73.i.6 = add nsw i32 %39, %add.i73.i.5
  %i19.0108.i.7 = add nsw i64 %i19.0108.in.i, -8
  %arrayidx.i75.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %i19.0108.i.7
  %40 = load i32, i32* %arrayidx.i75.i.7, align 4, !tbaa !12
  %arrayidx26.i.7 = getelementptr inbounds i32, i32* %Out, i64 %i19.0108.i.7
  store i32 %add.i73.i.6, i32* %arrayidx26.i.7, align 4, !tbaa !12
  %add.i73.i.7 = add nsw i32 %40, %add.i73.i.6
  %cmp22.i.7 = icmp sgt i64 %i19.0108.i.7, %s
  br i1 %cmp22.i.7, label %for.body24.i, label %cleanup

if.else31.i:                                      ; preds = %if.else16.i
  br i1 %cmp98.i, label %for.body36.i.preheader, label %cleanup

for.body36.i.preheader:                           ; preds = %if.else31.i
  %41 = add i64 %e, -1
  %42 = sub i64 %41, %s
  %xtraiter331 = and i64 %sub, 7
  %lcmp.mod332 = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332, label %for.body36.i.prol.loopexit, label %for.body36.i.prol.preheader

for.body36.i.prol.preheader:                      ; preds = %for.body36.i.preheader
  br label %for.body36.i.prol

for.body36.i.prol:                                ; preds = %for.body36.i.prol.preheader, %for.body36.i.prol
  %i32.0112.i.prol = phi i64 [ %inc42.i.prol, %for.body36.i.prol ], [ %s, %for.body36.i.prol.preheader ]
  %r.3111.i.prol = phi i32 [ %add.i.i.prol, %for.body36.i.prol ], [ %zero, %for.body36.i.prol.preheader ]
  %prol.iter333 = phi i64 [ %prol.iter333.sub, %for.body36.i.prol ], [ %xtraiter331, %for.body36.i.prol.preheader ]
  %arrayidx.i72.i.prol = getelementptr inbounds i32, i32* %g.coerce, i64 %i32.0112.i.prol
  %43 = load i32, i32* %arrayidx.i72.i.prol, align 4, !tbaa !12
  %arrayidx39.i.prol = getelementptr inbounds i32, i32* %Out, i64 %i32.0112.i.prol
  store i32 %r.3111.i.prol, i32* %arrayidx39.i.prol, align 4, !tbaa !12
  %add.i.i.prol = add nsw i32 %43, %r.3111.i.prol
  %inc42.i.prol = add nsw i64 %i32.0112.i.prol, 1
  %prol.iter333.sub = add nsw i64 %prol.iter333, -1
  %prol.iter333.cmp = icmp eq i64 %prol.iter333.sub, 0
  br i1 %prol.iter333.cmp, label %for.body36.i.prol.loopexit.loopexit, label %for.body36.i.prol, !llvm.loop !92

for.body36.i.prol.loopexit.loopexit:              ; preds = %for.body36.i.prol
  %44 = add i64 %xtraiter331, %s
  br label %for.body36.i.prol.loopexit

for.body36.i.prol.loopexit:                       ; preds = %for.body36.i.prol.loopexit.loopexit, %for.body36.i.preheader
  %add.i.i.lcssa.unr = phi i32 [ undef, %for.body36.i.preheader ], [ %add.i.i.prol, %for.body36.i.prol.loopexit.loopexit ]
  %i32.0112.i.unr = phi i64 [ %s, %for.body36.i.preheader ], [ %44, %for.body36.i.prol.loopexit.loopexit ]
  %r.3111.i.unr = phi i32 [ %zero, %for.body36.i.preheader ], [ %add.i.i.prol, %for.body36.i.prol.loopexit.loopexit ]
  %45 = icmp ult i64 %42, 7
  br i1 %45, label %cleanup, label %for.body36.i.preheader414

for.body36.i.preheader414:                        ; preds = %for.body36.i.prol.loopexit
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.body36.i.preheader414, %for.body36.i
  %i32.0112.i = phi i64 [ %inc42.i.7, %for.body36.i ], [ %i32.0112.i.unr, %for.body36.i.preheader414 ]
  %r.3111.i = phi i32 [ %add.i.i.7, %for.body36.i ], [ %r.3111.i.unr, %for.body36.i.preheader414 ]
  %arrayidx.i72.i = getelementptr inbounds i32, i32* %g.coerce, i64 %i32.0112.i
  %46 = load i32, i32* %arrayidx.i72.i, align 4, !tbaa !12
  %arrayidx39.i = getelementptr inbounds i32, i32* %Out, i64 %i32.0112.i
  store i32 %r.3111.i, i32* %arrayidx39.i, align 4, !tbaa !12
  %add.i.i = add nsw i32 %46, %r.3111.i
  %inc42.i = add nsw i64 %i32.0112.i, 1
  %arrayidx.i72.i.1 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i
  %47 = load i32, i32* %arrayidx.i72.i.1, align 4, !tbaa !12
  %arrayidx39.i.1 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i
  store i32 %add.i.i, i32* %arrayidx39.i.1, align 4, !tbaa !12
  %add.i.i.1 = add nsw i32 %47, %add.i.i
  %inc42.i.1 = add nsw i64 %i32.0112.i, 2
  %arrayidx.i72.i.2 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.1
  %48 = load i32, i32* %arrayidx.i72.i.2, align 4, !tbaa !12
  %arrayidx39.i.2 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.1
  store i32 %add.i.i.1, i32* %arrayidx39.i.2, align 4, !tbaa !12
  %add.i.i.2 = add nsw i32 %48, %add.i.i.1
  %inc42.i.2 = add nsw i64 %i32.0112.i, 3
  %arrayidx.i72.i.3 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.2
  %49 = load i32, i32* %arrayidx.i72.i.3, align 4, !tbaa !12
  %arrayidx39.i.3 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.2
  store i32 %add.i.i.2, i32* %arrayidx39.i.3, align 4, !tbaa !12
  %add.i.i.3 = add nsw i32 %49, %add.i.i.2
  %inc42.i.3 = add nsw i64 %i32.0112.i, 4
  %arrayidx.i72.i.4 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.3
  %50 = load i32, i32* %arrayidx.i72.i.4, align 4, !tbaa !12
  %arrayidx39.i.4 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.3
  store i32 %add.i.i.3, i32* %arrayidx39.i.4, align 4, !tbaa !12
  %add.i.i.4 = add nsw i32 %50, %add.i.i.3
  %inc42.i.4 = add nsw i64 %i32.0112.i, 5
  %arrayidx.i72.i.5 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.4
  %51 = load i32, i32* %arrayidx.i72.i.5, align 4, !tbaa !12
  %arrayidx39.i.5 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.4
  store i32 %add.i.i.4, i32* %arrayidx39.i.5, align 4, !tbaa !12
  %add.i.i.5 = add nsw i32 %51, %add.i.i.4
  %inc42.i.5 = add nsw i64 %i32.0112.i, 6
  %arrayidx.i72.i.6 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.5
  %52 = load i32, i32* %arrayidx.i72.i.6, align 4, !tbaa !12
  %arrayidx39.i.6 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.5
  store i32 %add.i.i.5, i32* %arrayidx39.i.6, align 4, !tbaa !12
  %add.i.i.6 = add nsw i32 %52, %add.i.i.5
  %inc42.i.6 = add nsw i64 %i32.0112.i, 7
  %arrayidx.i72.i.7 = getelementptr inbounds i32, i32* %g.coerce, i64 %inc42.i.6
  %53 = load i32, i32* %arrayidx.i72.i.7, align 4, !tbaa !12
  %arrayidx39.i.7 = getelementptr inbounds i32, i32* %Out, i64 %inc42.i.6
  store i32 %add.i.i.6, i32* %arrayidx39.i.7, align 4, !tbaa !12
  %add.i.i.7 = add nsw i32 %53, %add.i.i.6
  %inc42.i.7 = add nsw i64 %i32.0112.i, 8
  %exitcond117.i.7 = icmp eq i64 %inc42.i.7, %e
  br i1 %exitcond117.i.7, label %cleanup, label %for.body36.i

pfor.detach.lr.ph:                                ; preds = %entry
  %mul = shl nsw i64 %add, 2
  %call9 = tail call noalias i8* @malloc(i64 %mul) #2
  %54 = bitcast i8* %call9 to i32*
  %55 = sub i64 -2, %s
  %56 = sub i64 -1025, %s
  %57 = xor i64 %e, -1
  %58 = icmp sgt i64 %div, 0
  %smax385 = select i1 %58, i64 %div, i64 0
  %59 = add nuw nsw i64 %smax385, 1
  %60 = getelementptr inbounds { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %1, i64 0, i32 0
  store i64 %55, i64* %60, align 8
  %61 = getelementptr inbounds { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %1, i64 0, i32 1
  store i64 %56, i64* %61, align 8
  %62 = getelementptr inbounds { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %1, i64 0, i32 2
  store i64 %57, i64* %62, align 8
  %63 = getelementptr inbounds { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %1, i64 0, i32 3
  store i64 %s, i64* %63, align 8
  %64 = getelementptr inbounds { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %1, i64 0, i32 4
  store i64 %e, i64* %64, align 8
  %65 = getelementptr inbounds { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %1, i64 0, i32 5
  store i32* %g.coerce, i32** %65, align 8
  %66 = getelementptr inbounds { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %1, i64 0, i32 6
  %67 = bitcast i32** %66 to i8**
  store i8* %call9, i8** %67, align 8
  %68 = bitcast { i64, i64, i64, i64, i64, i32*, i32* }* %1 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i64, i64, i64, i64, i64, i32*, i32* }*, i64, i64)* @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb_pfor.detach.ls to void (i8*, i64, i64)*), i8* nonnull %68, i64 %59, i32 0)
  %call52 = tail call i32 @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb(i32* %54, i64 0, i64 %add, i32* %54, i32 %zero, i1 zeroext false, i1 zeroext %back)
  %69 = xor i64 %s, -1
  %70 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 0
  store i32* %g.coerce, i32** %70, align 8
  %71 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 1
  store i32* %Out, i32** %71, align 8
  %72 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 2
  store i1 %back, i1* %72, align 8
  %73 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 3
  store i64 %s, i64* %73, align 8
  %74 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 4
  store i64 %e, i64* %74, align 8
  %75 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 5
  %76 = bitcast i32** %75 to i8**
  store i8* %call9, i8** %76, align 8
  %77 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 6
  store i1 %inclusive, i1* %77, align 8
  %78 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 7
  store i64 %56, i64* %78, align 8
  %79 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 8
  store i64 %57, i64* %79, align 8
  %80 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 9
  store i64 %69, i64* %80, align 8
  %81 = getelementptr inbounds { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0, i64 0, i32 10
  store i64 %55, i64* %81, align 8
  %82 = bitcast { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %0 to i8*
  call fastcc void @__cilkrts_cilk_for_64(void (i8*, i64, i64)* bitcast (void ({ i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }*, i64, i64)* @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb_pfor.detach72.ls to void (i8*, i64, i64)*), i8* nonnull %82, i64 %59, i32 0)
  tail call void @free(i8* %call9) #2
  br label %cleanup

cleanup:                                          ; preds = %for.body36.i, %for.body24.i, %for.body9.i, %for.body.i, %for.body36.i.prol.loopexit, %for.body24.i.prol.loopexit, %for.body9.i.prol.loopexit, %for.body.i.prol.loopexit, %if.else31.i, %if.then18.i, %if.else.i, %if.then3.i, %pfor.detach.lr.ph
  %retval.0 = phi i32 [ %call52, %pfor.detach.lr.ph ], [ %zero, %if.then3.i ], [ %zero, %if.else.i ], [ %zero, %if.then18.i ], [ %zero, %if.else31.i ], [ %add.i79.i.lcssa.unr, %for.body.i.prol.loopexit ], [ %add.i76.i.lcssa.unr, %for.body9.i.prol.loopexit ], [ %add.i73.i.lcssa.unr, %for.body24.i.prol.loopexit ], [ %add.i.i.lcssa.unr, %for.body36.i.prol.loopexit ], [ %add.i79.i.7, %for.body.i ], [ %add.i76.i.7, %for.body9.i ], [ %add.i73.i.7, %for.body24.i ], [ %add.i.i.7, %for.body36.i ]
  ret i32 %retval.0
}

; Function Attrs: stealable uwtable
define linkonce_odr void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %this, i32 %rStart, i32 %rCount, i32 %rLength, i32 %cStart, i32 %cCount, i32 %cLength) local_unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %struct.__cilkrts_worker* %0, null
  br i1 %1, label %slowpath.i, label %__cilkrts_enter_frame_1.exit

slowpath.i:                                       ; preds = %entry
  %2 = call %struct.__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilkrts_enter_frame_1.exit

__cilkrts_enter_frame_1.exit:                     ; preds = %entry, %slowpath.i
  %.sink = phi i32 [ 16777344, %slowpath.i ], [ 16777216, %entry ]
  %3 = phi %struct.__cilkrts_worker* [ %2, %slowpath.i ], [ %0, %entry ]
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %3, i64 0, i32 9
  %6 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %5 acquire, align 8
  %7 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %6, %struct.__cilkrts_stack_frame** %7 release, align 8
  %8 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %3, %struct.__cilkrts_worker** %8 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %5 release, align 8
  %cmp = icmp slt i32 %cCount, 64
  %cmp2 = icmp slt i32 %rCount, 64
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %cmp3108 = icmp sgt i32 %rCount, 0
  br i1 %cmp3108, label %for.body.lr.ph, label %if.end50

for.body.lr.ph:                                   ; preds = %if.then
  %add = add nsw i32 %rCount, %rStart
  %add5 = add nsw i32 %cCount, %cStart
  %cmp6106 = icmp sgt i32 %cCount, 0
  %A = getelementptr inbounds %struct.transpose, %struct.transpose* %this, i64 0, i32 0
  %B = getelementptr inbounds %struct.transpose, %struct.transpose* %this, i64 0, i32 1
  %9 = sext i32 %cStart to i64
  %10 = sext i32 %cLength to i64
  %11 = sext i32 %add5 to i64
  %12 = sext i32 %rStart to i64
  %13 = sext i32 %rLength to i64
  %14 = sext i32 %add to i64
  %15 = add nsw i64 %9, 1
  %16 = icmp sgt i64 %15, %11
  %smax = select i1 %16, i64 %15, i64 %11
  %17 = sub nsw i64 %smax, %9
  %18 = add nsw i64 %17, -8
  %19 = lshr i64 %18, 3
  %20 = add nuw nsw i64 %19, 1
  %min.iters.check = icmp ugt i64 %17, 7
  %ident.check = icmp eq i32 %cLength, 1
  %or.cond125 = and i1 %ident.check, %min.iters.check
  %n.vec = and i64 %17, -8
  %ind.end = add nsw i64 %n.vec, %9
  %xtraiter = and i64 %20, 3
  %21 = icmp ult i64 %18, 24
  %unroll_iter = sub nsw i64 %20, %xtraiter
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  %cmp.n = icmp eq i64 %17, %n.vec
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup7
  %indvar = phi i64 [ 0, %for.body.lr.ph ], [ %indvar.next, %for.cond.cleanup7 ]
  %indvars.iv114 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next115, %for.cond.cleanup7 ]
  %22 = add nsw i64 %indvar, %12
  %23 = add i64 %22, %9
  %24 = add i64 %22, %smax
  %25 = mul i64 %22, %13
  %26 = add i64 %25, %9
  %27 = add i64 %25, %smax
  br i1 %cmp6106, label %for.body8.lr.ph, label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.body
  %28 = load i32*, i32** %A, align 8, !tbaa !64
  %29 = mul nsw i64 %indvars.iv114, %13
  %30 = load i32*, i32** %B, align 8, !tbaa !66
  br i1 %or.cond125, label %vector.memcheck, label %for.body8.preheader

vector.memcheck:                                  ; preds = %for.body8.lr.ph
  %scevgep = getelementptr i32, i32* %30, i64 %23
  %scevgep119 = getelementptr i32, i32* %30, i64 %24
  %scevgep121 = getelementptr i32, i32* %28, i64 %26
  %scevgep123 = getelementptr i32, i32* %28, i64 %27
  %bound0 = icmp ult i32* %scevgep, %scevgep123
  %bound1 = icmp ult i32* %scevgep121, %scevgep119
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %for.body8.preheader, label %vector.ph

for.body8.preheader:                              ; preds = %for.body8.lr.ph, %middle.block, %vector.memcheck
  %indvars.iv.ph = phi i64 [ %ind.end, %middle.block ], [ %9, %for.body8.lr.ph ], [ %9, %vector.memcheck ]
  br label %for.body8

vector.ph:                                        ; preds = %vector.memcheck
  br i1 %21, label %middle.block.unr-lcssa, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.ph
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.body.preheader ]
  %niter = phi i64 [ %niter.nsub.3, %vector.body ], [ %unroll_iter, %vector.body.preheader ]
  %31 = add i64 %index, %9
  %32 = add nsw i64 %31, %29
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = bitcast i32* %33 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %34, align 4, !tbaa !12, !alias.scope !93
  %35 = mul nsw i64 %31, %10
  %36 = add nsw i64 %35, %indvars.iv114
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = bitcast i32* %37 to <8 x i32>*
  store <8 x i32> %wide.load, <8 x i32>* %38, align 4, !tbaa !12, !alias.scope !96, !noalias !93
  %index.next = or i64 %index, 8
  %39 = add i64 %index.next, %9
  %40 = add nsw i64 %39, %29
  %41 = getelementptr inbounds i32, i32* %28, i64 %40
  %42 = bitcast i32* %41 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %42, align 4, !tbaa !12, !alias.scope !93
  %43 = mul nsw i64 %39, %10
  %44 = add nsw i64 %43, %indvars.iv114
  %45 = getelementptr inbounds i32, i32* %30, i64 %44
  %46 = bitcast i32* %45 to <8 x i32>*
  store <8 x i32> %wide.load.1, <8 x i32>* %46, align 4, !tbaa !12, !alias.scope !96, !noalias !93
  %index.next.1 = or i64 %index, 16
  %47 = add i64 %index.next.1, %9
  %48 = add nsw i64 %47, %29
  %49 = getelementptr inbounds i32, i32* %28, i64 %48
  %50 = bitcast i32* %49 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %50, align 4, !tbaa !12, !alias.scope !93
  %51 = mul nsw i64 %47, %10
  %52 = add nsw i64 %51, %indvars.iv114
  %53 = getelementptr inbounds i32, i32* %30, i64 %52
  %54 = bitcast i32* %53 to <8 x i32>*
  store <8 x i32> %wide.load.2, <8 x i32>* %54, align 4, !tbaa !12, !alias.scope !96, !noalias !93
  %index.next.2 = or i64 %index, 24
  %55 = add i64 %index.next.2, %9
  %56 = add nsw i64 %55, %29
  %57 = getelementptr inbounds i32, i32* %28, i64 %56
  %58 = bitcast i32* %57 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %58, align 4, !tbaa !12, !alias.scope !93
  %59 = mul nsw i64 %55, %10
  %60 = add nsw i64 %59, %indvars.iv114
  %61 = getelementptr inbounds i32, i32* %30, i64 %60
  %62 = bitcast i32* %61 to <8 x i32>*
  store <8 x i32> %wide.load.3, <8 x i32>* %62, align 4, !tbaa !12, !alias.scope !96, !noalias !93
  %index.next.3 = add i64 %index, 32
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !98

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil.preheader

vector.body.epil.preheader:                       ; preds = %middle.block.unr-lcssa
  br label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil.preheader, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %vector.body.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %vector.body.epil.preheader ]
  %63 = add i64 %index.epil, %9
  %64 = add nsw i64 %63, %29
  %65 = getelementptr inbounds i32, i32* %28, i64 %64
  %66 = bitcast i32* %65 to <8 x i32>*
  %wide.load.epil = load <8 x i32>, <8 x i32>* %66, align 4, !tbaa !12, !alias.scope !93
  %67 = mul nsw i64 %63, %10
  %68 = add nsw i64 %67, %indvars.iv114
  %69 = getelementptr inbounds i32, i32* %30, i64 %68
  %70 = bitcast i32* %69 to <8 x i32>*
  store <8 x i32> %wide.load.epil, <8 x i32>* %70, align 4, !tbaa !12, !alias.scope !96, !noalias !93
  %index.next.epil = add i64 %index.epil, 8
  %epil.iter.sub = add nsw i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !99

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  br i1 %cmp.n, label %for.cond.cleanup7, label %for.body8.preheader

for.cond.cleanup7:                                ; preds = %for.body8, %middle.block, %for.body
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1
  %cmp3 = icmp slt i64 %indvars.iv.next115, %14
  %indvar.next = add nuw nsw i64 %indvar, 1
  br i1 %cmp3, label %for.body, label %if.end50

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ %indvars.iv.ph, %for.body8.preheader ]
  %71 = add nsw i64 %indvars.iv, %29
  %arrayidx = getelementptr inbounds i32, i32* %28, i64 %71
  %72 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %73 = mul nsw i64 %indvars.iv, %10
  %74 = add nsw i64 %73, %indvars.iv114
  %arrayidx13 = getelementptr inbounds i32, i32* %30, i64 %74
  store i32 %72, i32* %arrayidx13, align 4, !tbaa !12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp6 = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7, !llvm.loop !100

if.else:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %cmp17 = icmp sgt i32 %cCount, %rCount
  br i1 %cmp17, label %if.then18, label %if.else27

if.then18:                                        ; preds = %if.else
  %div = sdiv i32 %cCount, 2
  %sub = sub nsw i32 %cCount, %div
  %75 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %76 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %75, i16* nonnull %76) #2
  %77 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %78 = call i8* @llvm.frameaddress(i32 0)
  %79 = getelementptr inbounds [5 x i8*], [5 x i8*]* %77, i64 0, i64 0
  store volatile i8* %78, i8** %79, align 8
  %80 = call i8* @llvm.stacksave()
  %81 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %80, i8** %81, align 8
  %82 = bitcast [5 x i8*]* %77 to i8*
  %83 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %82) #21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %if.then18.split126, label %det.cont

if.then18.split126:                               ; preds = %if.then18
  invoke fastcc void @_ZN9transposeIiiE6transREiiiiii_det.achd.cilk(%struct.transpose* %this, i32 %rStart, i32 %rCount, i32 %rLength, i32 %cStart, i32 %div, i32 %cLength)
          to label %det.cont unwind label %lpad20

det.cont:                                         ; preds = %if.then18, %if.then18.split126
  %add24 = add nsw i32 %div, %cStart
  invoke void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %this, i32 %rStart, i32 %rCount, i32 %rLength, i32 %add24, i32 %sub, i32 %cLength)
          to label %invoke.cont25 unwind label %lpad20

invoke.cont25:                                    ; preds = %det.cont
  %85 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %86 = load atomic i32, i32* %85 acquire, align 8
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %__cilk_sync.exit, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %invoke.cont25
  %89 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %75, i16* nonnull %76) #2
  store volatile i8* %78, i8** %79, align 8
  %90 = call i8* @llvm.stacksave()
  store volatile i8* %90, i8** %81, align 8
  %91 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %82) #21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %93 = load atomic i32, i32* %85 acquire, align 8
  %94 = and i32 %93, 16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %__cilk_sync.exit, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit:                                 ; preds = %invoke.cont25, %cilk.sync.runtimecall.i, %cilk.sync.excepting.i
  %96 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %97 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %96, i64 0, i32 12, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %if.end50

lpad20:                                           ; preds = %if.then18.split126, %det.cont
  %100 = landingpad { i8*, i32 }
          cleanup
  %101 = extractvalue { i8*, i32 } %100, 0
  %102 = extractvalue { i8*, i32 } %100, 1
  %103 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %104 = load atomic i32, i32* %103 acquire, align 8
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %eh.resume, label %cilk.sync.savestate.i128

cilk.sync.savestate.i128:                         ; preds = %lpad20
  %107 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %75, i16* nonnull %76) #2
  store volatile i8* %78, i8** %79, align 8
  %108 = call i8* @llvm.stacksave()
  store volatile i8* %108, i8** %81, align 8
  %109 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %82) #21
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %cilk.sync.runtimecall.i129, label %cilk.sync.excepting.i130

cilk.sync.runtimecall.i129:                       ; preds = %cilk.sync.savestate.i128
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %eh.resume

cilk.sync.excepting.i130:                         ; preds = %cilk.sync.savestate.i128
  %111 = load atomic i32, i32* %103 acquire, align 8
  %112 = and i32 %111, 16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %eh.resume, label %cilk.sync.rethrow.i131

cilk.sync.rethrow.i131:                           ; preds = %cilk.sync.excepting.i130
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

if.else27:                                        ; preds = %if.else
  %div29 = sdiv i32 %rCount, 2
  %sub32 = sub nsw i32 %rCount, %div29
  %114 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %115 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %114, i16* nonnull %115) #2
  %116 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %117 = call i8* @llvm.frameaddress(i32 0)
  %118 = getelementptr inbounds [5 x i8*], [5 x i8*]* %116, i64 0, i64 0
  store volatile i8* %117, i8** %118, align 8
  %119 = call i8* @llvm.stacksave()
  %120 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %119, i8** %120, align 8
  %121 = bitcast [5 x i8*]* %116 to i8*
  %122 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %121) #21
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %if.else27.split127, label %det.cont38

if.else27.split127:                               ; preds = %if.else27
  invoke fastcc void @_ZN9transposeIiiE6transREiiiiii_det.achd33.cilk(%struct.transpose* %this, i32 %rStart, i32 %div29, i32 %rLength, i32 %cStart, i32 %cCount, i32 %cLength)
          to label %det.cont38 unwind label %lpad39

det.cont38:                                       ; preds = %if.else27, %if.else27.split127
  %add46 = add nsw i32 %div29, %rStart
  invoke void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %this, i32 %add46, i32 %sub32, i32 %rLength, i32 %cStart, i32 %cCount, i32 %cLength)
          to label %invoke.cont47 unwind label %lpad39

invoke.cont47:                                    ; preds = %det.cont38
  %124 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %125 = load atomic i32, i32* %124 acquire, align 8
  %126 = and i32 %125, 2
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %__cilk_sync.exit137, label %cilk.sync.savestate.i133

cilk.sync.savestate.i133:                         ; preds = %invoke.cont47
  %128 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %114, i16* nonnull %115) #2
  store volatile i8* %117, i8** %118, align 8
  %129 = call i8* @llvm.stacksave()
  store volatile i8* %129, i8** %120, align 8
  %130 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %121) #21
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %cilk.sync.runtimecall.i134, label %cilk.sync.excepting.i135

cilk.sync.runtimecall.i134:                       ; preds = %cilk.sync.savestate.i133
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit137

cilk.sync.excepting.i135:                         ; preds = %cilk.sync.savestate.i133
  %132 = load atomic i32, i32* %124 acquire, align 8
  %133 = and i32 %132, 16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %__cilk_sync.exit137, label %cilk.sync.rethrow.i136

cilk.sync.rethrow.i136:                           ; preds = %cilk.sync.excepting.i135
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit137:                              ; preds = %invoke.cont47, %cilk.sync.runtimecall.i134, %cilk.sync.excepting.i135
  %135 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %136 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %135, i64 0, i32 12, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %136, align 8
  br label %if.end50

lpad39:                                           ; preds = %if.else27.split127, %det.cont38
  %139 = landingpad { i8*, i32 }
          cleanup
  %140 = extractvalue { i8*, i32 } %139, 0
  %141 = extractvalue { i8*, i32 } %139, 1
  %142 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %143 = load atomic i32, i32* %142 acquire, align 8
  %144 = and i32 %143, 2
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %eh.resume, label %cilk.sync.savestate.i138

cilk.sync.savestate.i138:                         ; preds = %lpad39
  %146 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %114, i16* nonnull %115) #2
  store volatile i8* %117, i8** %118, align 8
  %147 = call i8* @llvm.stacksave()
  store volatile i8* %147, i8** %120, align 8
  %148 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %121) #21
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %cilk.sync.runtimecall.i139, label %cilk.sync.excepting.i140

cilk.sync.runtimecall.i139:                       ; preds = %cilk.sync.savestate.i138
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %eh.resume

cilk.sync.excepting.i140:                         ; preds = %cilk.sync.savestate.i138
  %150 = load atomic i32, i32* %142 acquire, align 8
  %151 = and i32 %150, 16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %eh.resume, label %cilk.sync.rethrow.i141

cilk.sync.rethrow.i141:                           ; preds = %cilk.sync.excepting.i140
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

if.end50:                                         ; preds = %for.cond.cleanup7, %__cilk_sync.exit137, %__cilk_sync.exit, %if.then
  %153 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %154 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %153, i64 0, i32 9
  %157 = bitcast %struct.__cilkrts_stack_frame** %156 to i64*
  store atomic i64 %155, i64* %157 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %158 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %159 = load atomic i32, i32* %158 acquire, align 8
  %160 = icmp eq i32 %159, 16777216
  br i1 %160, label %__cilk_parent_epilogue.exit, label %body.i

body.i:                                           ; preds = %if.end50
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %if.end50, %body.i
  ret void

eh.resume:                                        ; preds = %cilk.sync.excepting.i140, %cilk.sync.runtimecall.i139, %lpad39, %cilk.sync.excepting.i130, %cilk.sync.runtimecall.i129, %lpad20
  %.pre-phi = phi i32* [ %103, %lpad20 ], [ %103, %cilk.sync.runtimecall.i129 ], [ %103, %cilk.sync.excepting.i130 ], [ %142, %lpad39 ], [ %142, %cilk.sync.runtimecall.i139 ], [ %142, %cilk.sync.excepting.i140 ]
  %ehselector.slot22.0 = phi i32 [ %102, %lpad20 ], [ %102, %cilk.sync.runtimecall.i129 ], [ %102, %cilk.sync.excepting.i130 ], [ %141, %lpad39 ], [ %141, %cilk.sync.runtimecall.i139 ], [ %141, %cilk.sync.excepting.i140 ]
  %exn.slot21.0 = phi i8* [ %101, %lpad20 ], [ %101, %cilk.sync.runtimecall.i129 ], [ %101, %cilk.sync.excepting.i130 ], [ %140, %lpad39 ], [ %140, %cilk.sync.runtimecall.i139 ], [ %140, %cilk.sync.excepting.i140 ]
  %161 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %162 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %161, i64 0, i32 12, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %162, align 8
  %lpad.val54 = insertvalue { i8*, i32 } undef, i8* %exn.slot21.0, 0
  %lpad.val55 = insertvalue { i8*, i32 } %lpad.val54, i32 %ehselector.slot22.0, 1
  %165 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %166 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %165, i64 0, i32 9
  %169 = bitcast %struct.__cilkrts_stack_frame** %168 to i64*
  store atomic i64 %167, i64* %169 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %170 = load atomic i32, i32* %.pre-phi acquire, align 8
  %171 = icmp eq i32 %170, 16777216
  br i1 %171, label %__cilk_parent_epilogue.exit144, label %body.i143

body.i143:                                        ; preds = %eh.resume
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit144

__cilk_parent_epilogue.exit144:                   ; preds = %eh.resume, %body.i143
  resume { i8*, i32 } %lpad.val55
}

; Function Attrs: stealable uwtable
define linkonce_odr void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %this, i32 %rStart, i32 %rCount, i32 %rLength, i32 %cStart, i32 %cCount, i32 %cLength) local_unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker() #2
  %1 = icmp eq %struct.__cilkrts_worker* %0, null
  br i1 %1, label %slowpath.i, label %__cilkrts_enter_frame_1.exit

slowpath.i:                                       ; preds = %entry
  %2 = call %struct.__cilkrts_worker* @__cilkrts_bind_thread_1() #2
  br label %__cilkrts_enter_frame_1.exit

__cilkrts_enter_frame_1.exit:                     ; preds = %entry, %slowpath.i
  %.sink = phi i32 [ 16777344, %slowpath.i ], [ 16777216, %entry ]
  %3 = phi %struct.__cilkrts_worker* [ %2, %slowpath.i ], [ %0, %entry ]
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 %.sink, i32* %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %3, i64 0, i32 9
  %6 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %5 acquire, align 8
  %7 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %6, %struct.__cilkrts_stack_frame** %7 release, align 8
  %8 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %3, %struct.__cilkrts_worker** %8 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %5 release, align 8
  %cmp = icmp slt i32 %cCount, 64
  %cmp2 = icmp slt i32 %rCount, 64
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %cmp3134 = icmp sgt i32 %rCount, 0
  br i1 %cmp3134, label %for.body.lr.ph, label %if.end64

for.body.lr.ph:                                   ; preds = %if.then
  %add = add nsw i32 %rCount, %rStart
  %add5 = add nsw i32 %cCount, %cStart
  %cmp6132 = icmp sgt i32 %cCount, 0
  %A = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 0
  %OA = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 2
  %B = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 1
  %OB = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 3
  %L = getelementptr inbounds %struct.blockTrans, %struct.blockTrans* %this, i64 0, i32 4
  %9 = sext i32 %cStart to i64
  %10 = sext i32 %cLength to i64
  %11 = sext i32 %add5 to i64
  %12 = sext i32 %rStart to i64
  %13 = sext i32 %rLength to i64
  %14 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup7
  %indvars.iv141 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next142, %for.cond.cleanup7 ]
  br i1 %cmp6132, label %for.body8.lr.ph, label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.body
  %15 = mul nsw i64 %indvars.iv141, %13
  br label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond.cleanup22, %for.body
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1
  %cmp3 = icmp slt i64 %indvars.iv.next142, %14
  br i1 %cmp3, label %for.body, label %if.end64

for.body8:                                        ; preds = %for.body8.lr.ph, %for.cond.cleanup22
  %indvars.iv = phi i64 [ %9, %for.body8.lr.ph ], [ %indvars.iv.next, %for.cond.cleanup22 ]
  %16 = add nsw i64 %indvars.iv, %15
  %17 = load i32*, i32** %L, align 8, !tbaa !72
  %arrayidx19 = getelementptr inbounds i32, i32* %17, i64 %16
  %18 = load i32, i32* %arrayidx19, align 4, !tbaa !12
  %cmp21128 = icmp sgt i32 %18, 0
  br i1 %cmp21128, label %for.body23.lr.ph, label %for.cond.cleanup22

for.body23.lr.ph:                                 ; preds = %for.body8
  %19 = load %struct.event*, %struct.event** %B, align 8, !tbaa !69
  %20 = load i32*, i32** %OB, align 8, !tbaa !71
  %21 = mul nsw i64 %indvars.iv, %10
  %22 = add nsw i64 %21, %indvars.iv141
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %22
  %23 = load i32, i32* %arrayidx13, align 4, !tbaa !12
  %idx.ext14 = sext i32 %23 to i64
  %add.ptr15 = getelementptr inbounds %struct.event, %struct.event* %19, i64 %idx.ext14
  %24 = load %struct.event*, %struct.event** %A, align 8, !tbaa !67
  %25 = load i32*, i32** %OA, align 8, !tbaa !70
  %arrayidx = getelementptr inbounds i32, i32* %25, i64 %16
  %26 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds %struct.event, %struct.event* %24, i64 %idx.ext
  %27 = add i32 %18, -1
  %28 = zext i32 %27 to i64
  %29 = add nuw nsw i64 %28, 1
  %min.iters.check = icmp ult i64 %29, 16
  br i1 %min.iters.check, label %for.body23.preheader, label %vector.memcheck

for.body23.preheader:                             ; preds = %middle.block, %vector.memcheck, %for.body23.lr.ph
  %pa.0131.ph = phi %struct.event* [ %add.ptr, %vector.memcheck ], [ %add.ptr, %for.body23.lr.ph ], [ %ind.end, %middle.block ]
  %pb.0130.ph = phi %struct.event* [ %add.ptr15, %vector.memcheck ], [ %add.ptr15, %for.body23.lr.ph ], [ %ind.end152, %middle.block ]
  %k.0129.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body23.lr.ph ], [ %cast.crd, %middle.block ]
  %30 = sub i32 %18, %k.0129.ph
  %31 = sub i32 %27, %k.0129.ph
  %xtraiter = and i32 %30, 7
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body23.prol.loopexit, label %for.body23.prol.preheader

for.body23.prol.preheader:                        ; preds = %for.body23.preheader
  %32 = add nsw i32 %xtraiter, -1
  br label %for.body23.prol

for.body23.prol:                                  ; preds = %for.body23.prol, %for.body23.prol.preheader
  %pa.0131.prol = phi %struct.event* [ %incdec.ptr.prol, %for.body23.prol ], [ %pa.0131.ph, %for.body23.prol.preheader ]
  %pb.0130.prol = phi %struct.event* [ %incdec.ptr24.prol, %for.body23.prol ], [ %pb.0130.ph, %for.body23.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body23.prol ], [ %xtraiter, %for.body23.prol.preheader ]
  %incdec.ptr.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0131.prol, i64 1
  %incdec.ptr24.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0130.prol, i64 1
  %33 = bitcast %struct.event* %pa.0131.prol to i64*
  %34 = bitcast %struct.event* %pb.0130.prol to i64*
  %35 = load i64, i64* %33, align 4
  store i64 %35, i64* %34, align 4
  %prol.iter.sub = add nsw i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body23.prol.loopexit.loopexit, label %for.body23.prol, !llvm.loop !101

for.body23.prol.loopexit.loopexit:                ; preds = %for.body23.prol
  %scevgep170 = getelementptr %struct.event, %struct.event* %pb.0130.ph, i64 1
  %36 = zext i32 %32 to i64
  %scevgep171 = getelementptr %struct.event, %struct.event* %scevgep170, i64 %36
  %scevgep168 = getelementptr %struct.event, %struct.event* %pa.0131.ph, i64 1
  %scevgep169 = getelementptr %struct.event, %struct.event* %scevgep168, i64 %36
  %37 = add i32 %xtraiter, %k.0129.ph
  br label %for.body23.prol.loopexit

for.body23.prol.loopexit:                         ; preds = %for.body23.prol.loopexit.loopexit, %for.body23.preheader
  %pa.0131.unr = phi %struct.event* [ %pa.0131.ph, %for.body23.preheader ], [ %scevgep169, %for.body23.prol.loopexit.loopexit ]
  %pb.0130.unr = phi %struct.event* [ %pb.0130.ph, %for.body23.preheader ], [ %scevgep171, %for.body23.prol.loopexit.loopexit ]
  %k.0129.unr = phi i32 [ %k.0129.ph, %for.body23.preheader ], [ %37, %for.body23.prol.loopexit.loopexit ]
  %38 = icmp ult i32 %31, 7
  br i1 %38, label %for.cond.cleanup22, label %for.body23.preheader199

for.body23.preheader199:                          ; preds = %for.body23.prol.loopexit
  %39 = add i32 %18, -8
  %40 = sub i32 %39, %k.0129.unr
  %41 = and i32 %40, 8
  %lcmp.mod203 = icmp eq i32 %41, 0
  br i1 %lcmp.mod203, label %for.body23.prol204, label %for.body23.prol.loopexit201

for.body23.prol204:                               ; preds = %for.body23.preheader199
  %incdec.ptr.prol207 = getelementptr inbounds %struct.event, %struct.event* %pa.0131.unr, i64 1
  %incdec.ptr24.prol208 = getelementptr inbounds %struct.event, %struct.event* %pb.0130.unr, i64 1
  %42 = bitcast %struct.event* %pa.0131.unr to i64*
  %43 = bitcast %struct.event* %pb.0130.unr to i64*
  %44 = load i64, i64* %42, align 4
  store i64 %44, i64* %43, align 4
  %incdec.ptr.1.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0131.unr, i64 2
  %incdec.ptr24.1.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0130.unr, i64 2
  %45 = bitcast %struct.event* %incdec.ptr.prol207 to i64*
  %46 = bitcast %struct.event* %incdec.ptr24.prol208 to i64*
  %47 = load i64, i64* %45, align 4
  store i64 %47, i64* %46, align 4
  %incdec.ptr.2.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0131.unr, i64 3
  %incdec.ptr24.2.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0130.unr, i64 3
  %48 = bitcast %struct.event* %incdec.ptr.1.prol to i64*
  %49 = bitcast %struct.event* %incdec.ptr24.1.prol to i64*
  %50 = load i64, i64* %48, align 4
  store i64 %50, i64* %49, align 4
  %incdec.ptr.3.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0131.unr, i64 4
  %incdec.ptr24.3.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0130.unr, i64 4
  %51 = bitcast %struct.event* %incdec.ptr.2.prol to i64*
  %52 = bitcast %struct.event* %incdec.ptr24.2.prol to i64*
  %53 = load i64, i64* %51, align 4
  store i64 %53, i64* %52, align 4
  %incdec.ptr.4.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0131.unr, i64 5
  %incdec.ptr24.4.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0130.unr, i64 5
  %54 = bitcast %struct.event* %incdec.ptr.3.prol to i64*
  %55 = bitcast %struct.event* %incdec.ptr24.3.prol to i64*
  %56 = load i64, i64* %54, align 4
  store i64 %56, i64* %55, align 4
  %incdec.ptr.5.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0131.unr, i64 6
  %incdec.ptr24.5.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0130.unr, i64 6
  %57 = bitcast %struct.event* %incdec.ptr.4.prol to i64*
  %58 = bitcast %struct.event* %incdec.ptr24.4.prol to i64*
  %59 = load i64, i64* %57, align 4
  store i64 %59, i64* %58, align 4
  %incdec.ptr.6.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0131.unr, i64 7
  %incdec.ptr24.6.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0130.unr, i64 7
  %60 = bitcast %struct.event* %incdec.ptr.5.prol to i64*
  %61 = bitcast %struct.event* %incdec.ptr24.5.prol to i64*
  %62 = load i64, i64* %60, align 4
  store i64 %62, i64* %61, align 4
  %incdec.ptr.7.prol = getelementptr inbounds %struct.event, %struct.event* %pa.0131.unr, i64 8
  %incdec.ptr24.7.prol = getelementptr inbounds %struct.event, %struct.event* %pb.0130.unr, i64 8
  %63 = bitcast %struct.event* %incdec.ptr.6.prol to i64*
  %64 = bitcast %struct.event* %incdec.ptr24.6.prol to i64*
  %65 = load i64, i64* %63, align 4
  store i64 %65, i64* %64, align 4
  %inc.7.prol = add nsw i32 %k.0129.unr, 8
  br label %for.body23.prol.loopexit201

for.body23.prol.loopexit201:                      ; preds = %for.body23.prol204, %for.body23.preheader199
  %pa.0131.unr209.ph = phi %struct.event* [ %incdec.ptr.7.prol, %for.body23.prol204 ], [ %pa.0131.unr, %for.body23.preheader199 ]
  %pb.0130.unr210.ph = phi %struct.event* [ %incdec.ptr24.7.prol, %for.body23.prol204 ], [ %pb.0130.unr, %for.body23.preheader199 ]
  %k.0129.unr211.ph = phi i32 [ %inc.7.prol, %for.body23.prol204 ], [ %k.0129.unr, %for.body23.preheader199 ]
  %66 = icmp ult i32 %40, 8
  br i1 %66, label %for.cond.cleanup22, label %for.body23.preheader199.new

for.body23.preheader199.new:                      ; preds = %for.body23.prol.loopexit201
  br label %for.body23

vector.memcheck:                                  ; preds = %for.body23.lr.ph
  %scevgep = getelementptr %struct.event, %struct.event* %19, i64 1
  %67 = add nsw i64 %idx.ext14, %28
  %scevgep145 = getelementptr %struct.event, %struct.event* %scevgep, i64 %67
  %scevgep148 = getelementptr %struct.event, %struct.event* %24, i64 1
  %68 = add nsw i64 %idx.ext, %28
  %scevgep149 = getelementptr %struct.event, %struct.event* %scevgep148, i64 %68
  %bound0 = icmp ult %struct.event* %add.ptr15, %scevgep149
  %bound1 = icmp ult %struct.event* %add.ptr, %scevgep145
  %memcheck.conflict = and i1 %bound1, %bound0
  br i1 %memcheck.conflict, label %for.body23.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %69 = and i32 %18, 15
  %n.mod.vf = zext i32 %69 to i64
  %n.vec = sub nsw i64 %29, %n.mod.vf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr %struct.event, %struct.event* %add.ptr, i64 %index
  %next.gep158 = getelementptr %struct.event, %struct.event* %add.ptr15, i64 %index
  %70 = bitcast %struct.event* %next.gep to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %70, align 4, !alias.scope !102
  %71 = getelementptr %struct.event, %struct.event* %next.gep, i64 4
  %72 = bitcast %struct.event* %71 to <4 x i64>*
  %wide.load165 = load <4 x i64>, <4 x i64>* %72, align 4, !alias.scope !102
  %73 = getelementptr %struct.event, %struct.event* %next.gep, i64 8
  %74 = bitcast %struct.event* %73 to <4 x i64>*
  %wide.load166 = load <4 x i64>, <4 x i64>* %74, align 4, !alias.scope !102
  %75 = getelementptr %struct.event, %struct.event* %next.gep, i64 12
  %76 = bitcast %struct.event* %75 to <4 x i64>*
  %wide.load167 = load <4 x i64>, <4 x i64>* %76, align 4, !alias.scope !102
  %77 = bitcast %struct.event* %next.gep158 to <4 x i64>*
  store <4 x i64> %wide.load, <4 x i64>* %77, align 4, !alias.scope !105, !noalias !102
  %78 = getelementptr %struct.event, %struct.event* %next.gep158, i64 4
  %79 = bitcast %struct.event* %78 to <4 x i64>*
  store <4 x i64> %wide.load165, <4 x i64>* %79, align 4, !alias.scope !105, !noalias !102
  %80 = getelementptr %struct.event, %struct.event* %next.gep158, i64 8
  %81 = bitcast %struct.event* %80 to <4 x i64>*
  store <4 x i64> %wide.load166, <4 x i64>* %81, align 4, !alias.scope !105, !noalias !102
  %82 = getelementptr %struct.event, %struct.event* %next.gep158, i64 12
  %83 = bitcast %struct.event* %82 to <4 x i64>*
  store <4 x i64> %wide.load167, <4 x i64>* %83, align 4, !alias.scope !105, !noalias !102
  %index.next = add i64 %index, 16
  %84 = icmp eq i64 %index.next, %n.vec
  br i1 %84, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %ind.end152 = getelementptr %struct.event, %struct.event* %add.ptr15, i64 %n.vec
  %ind.end = getelementptr %struct.event, %struct.event* %add.ptr, i64 %n.vec
  %cast.crd = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i32 %69, 0
  br i1 %cmp.n, label %for.cond.cleanup22, label %for.body23.preheader

for.cond.cleanup22:                               ; preds = %for.body23.prol.loopexit201, %for.body23, %for.body23.prol.loopexit, %middle.block, %for.body8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp6 = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.body23:                                       ; preds = %for.body23, %for.body23.preheader199.new
  %pa.0131 = phi %struct.event* [ %pa.0131.unr209.ph, %for.body23.preheader199.new ], [ %incdec.ptr.7.1, %for.body23 ]
  %pb.0130 = phi %struct.event* [ %pb.0130.unr210.ph, %for.body23.preheader199.new ], [ %incdec.ptr24.7.1, %for.body23 ]
  %k.0129 = phi i32 [ %k.0129.unr211.ph, %for.body23.preheader199.new ], [ %inc.7.1, %for.body23 ]
  %incdec.ptr = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 1
  %incdec.ptr24 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 1
  %85 = bitcast %struct.event* %pa.0131 to i64*
  %86 = bitcast %struct.event* %pb.0130 to i64*
  %87 = load i64, i64* %85, align 4
  store i64 %87, i64* %86, align 4
  %incdec.ptr.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 2
  %incdec.ptr24.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 2
  %88 = bitcast %struct.event* %incdec.ptr to i64*
  %89 = bitcast %struct.event* %incdec.ptr24 to i64*
  %90 = load i64, i64* %88, align 4
  store i64 %90, i64* %89, align 4
  %incdec.ptr.2 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 3
  %incdec.ptr24.2 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 3
  %91 = bitcast %struct.event* %incdec.ptr.1 to i64*
  %92 = bitcast %struct.event* %incdec.ptr24.1 to i64*
  %93 = load i64, i64* %91, align 4
  store i64 %93, i64* %92, align 4
  %incdec.ptr.3 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 4
  %incdec.ptr24.3 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 4
  %94 = bitcast %struct.event* %incdec.ptr.2 to i64*
  %95 = bitcast %struct.event* %incdec.ptr24.2 to i64*
  %96 = load i64, i64* %94, align 4
  store i64 %96, i64* %95, align 4
  %incdec.ptr.4 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 5
  %incdec.ptr24.4 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 5
  %97 = bitcast %struct.event* %incdec.ptr.3 to i64*
  %98 = bitcast %struct.event* %incdec.ptr24.3 to i64*
  %99 = load i64, i64* %97, align 4
  store i64 %99, i64* %98, align 4
  %incdec.ptr.5 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 6
  %incdec.ptr24.5 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 6
  %100 = bitcast %struct.event* %incdec.ptr.4 to i64*
  %101 = bitcast %struct.event* %incdec.ptr24.4 to i64*
  %102 = load i64, i64* %100, align 4
  store i64 %102, i64* %101, align 4
  %incdec.ptr.6 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 7
  %incdec.ptr24.6 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 7
  %103 = bitcast %struct.event* %incdec.ptr.5 to i64*
  %104 = bitcast %struct.event* %incdec.ptr24.5 to i64*
  %105 = load i64, i64* %103, align 4
  store i64 %105, i64* %104, align 4
  %incdec.ptr.7 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 8
  %incdec.ptr24.7 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 8
  %106 = bitcast %struct.event* %incdec.ptr.6 to i64*
  %107 = bitcast %struct.event* %incdec.ptr24.6 to i64*
  %108 = load i64, i64* %106, align 4
  store i64 %108, i64* %107, align 4
  %incdec.ptr.1212 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 9
  %incdec.ptr24.1213 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 9
  %109 = bitcast %struct.event* %incdec.ptr.7 to i64*
  %110 = bitcast %struct.event* %incdec.ptr24.7 to i64*
  %111 = load i64, i64* %109, align 4
  store i64 %111, i64* %110, align 4
  %incdec.ptr.1.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 10
  %incdec.ptr24.1.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 10
  %112 = bitcast %struct.event* %incdec.ptr.1212 to i64*
  %113 = bitcast %struct.event* %incdec.ptr24.1213 to i64*
  %114 = load i64, i64* %112, align 4
  store i64 %114, i64* %113, align 4
  %incdec.ptr.2.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 11
  %incdec.ptr24.2.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 11
  %115 = bitcast %struct.event* %incdec.ptr.1.1 to i64*
  %116 = bitcast %struct.event* %incdec.ptr24.1.1 to i64*
  %117 = load i64, i64* %115, align 4
  store i64 %117, i64* %116, align 4
  %incdec.ptr.3.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 12
  %incdec.ptr24.3.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 12
  %118 = bitcast %struct.event* %incdec.ptr.2.1 to i64*
  %119 = bitcast %struct.event* %incdec.ptr24.2.1 to i64*
  %120 = load i64, i64* %118, align 4
  store i64 %120, i64* %119, align 4
  %incdec.ptr.4.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 13
  %incdec.ptr24.4.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 13
  %121 = bitcast %struct.event* %incdec.ptr.3.1 to i64*
  %122 = bitcast %struct.event* %incdec.ptr24.3.1 to i64*
  %123 = load i64, i64* %121, align 4
  store i64 %123, i64* %122, align 4
  %incdec.ptr.5.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 14
  %incdec.ptr24.5.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 14
  %124 = bitcast %struct.event* %incdec.ptr.4.1 to i64*
  %125 = bitcast %struct.event* %incdec.ptr24.4.1 to i64*
  %126 = load i64, i64* %124, align 4
  store i64 %126, i64* %125, align 4
  %incdec.ptr.6.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 15
  %incdec.ptr24.6.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 15
  %127 = bitcast %struct.event* %incdec.ptr.5.1 to i64*
  %128 = bitcast %struct.event* %incdec.ptr24.5.1 to i64*
  %129 = load i64, i64* %127, align 4
  store i64 %129, i64* %128, align 4
  %incdec.ptr.7.1 = getelementptr inbounds %struct.event, %struct.event* %pa.0131, i64 16
  %incdec.ptr24.7.1 = getelementptr inbounds %struct.event, %struct.event* %pb.0130, i64 16
  %130 = bitcast %struct.event* %incdec.ptr.6.1 to i64*
  %131 = bitcast %struct.event* %incdec.ptr24.6.1 to i64*
  %132 = load i64, i64* %130, align 4
  store i64 %132, i64* %131, align 4
  %inc.7.1 = add nsw i32 %k.0129, 16
  %exitcond.7.1 = icmp eq i32 %inc.7.1, %18
  br i1 %exitcond.7.1, label %for.cond.cleanup22, label %for.body23, !llvm.loop !108

if.else:                                          ; preds = %__cilkrts_enter_frame_1.exit
  %cmp31 = icmp sgt i32 %cCount, %rCount
  br i1 %cmp31, label %if.then32, label %if.else41

if.then32:                                        ; preds = %if.else
  %div = sdiv i32 %cCount, 2
  %sub = sub nsw i32 %cCount, %div
  %133 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %134 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %133, i16* nonnull %134) #2
  %135 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %136 = call i8* @llvm.frameaddress(i32 0)
  %137 = getelementptr inbounds [5 x i8*], [5 x i8*]* %135, i64 0, i64 0
  store volatile i8* %136, i8** %137, align 8
  %138 = call i8* @llvm.stacksave()
  %139 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %138, i8** %139, align 8
  %140 = bitcast [5 x i8*]* %135 to i8*
  %141 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %140) #21
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %if.then32.split173, label %det.cont

if.then32.split173:                               ; preds = %if.then32
  invoke fastcc void @_ZN10blockTransI5eventiE6transREiiiiii_det.achd.cilk(%struct.blockTrans* %this, i32 %rStart, i32 %rCount, i32 %rLength, i32 %cStart, i32 %div, i32 %cLength)
          to label %det.cont unwind label %lpad34

det.cont:                                         ; preds = %if.then32, %if.then32.split173
  %add38 = add nsw i32 %div, %cStart
  invoke void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %this, i32 %rStart, i32 %rCount, i32 %rLength, i32 %add38, i32 %sub, i32 %cLength)
          to label %invoke.cont39 unwind label %lpad34

invoke.cont39:                                    ; preds = %det.cont
  %143 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %144 = load atomic i32, i32* %143 acquire, align 8
  %145 = and i32 %144, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %__cilk_sync.exit, label %cilk.sync.savestate.i

cilk.sync.savestate.i:                            ; preds = %invoke.cont39
  %147 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %133, i16* nonnull %134) #2
  store volatile i8* %136, i8** %137, align 8
  %148 = call i8* @llvm.stacksave()
  store volatile i8* %148, i8** %139, align 8
  %149 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %140) #21
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %cilk.sync.runtimecall.i, label %cilk.sync.excepting.i

cilk.sync.runtimecall.i:                          ; preds = %cilk.sync.savestate.i
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit

cilk.sync.excepting.i:                            ; preds = %cilk.sync.savestate.i
  %151 = load atomic i32, i32* %143 acquire, align 8
  %152 = and i32 %151, 16
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %__cilk_sync.exit, label %cilk.sync.rethrow.i

cilk.sync.rethrow.i:                              ; preds = %cilk.sync.excepting.i
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit:                                 ; preds = %invoke.cont39, %cilk.sync.runtimecall.i, %cilk.sync.excepting.i
  %154 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %155 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %154, i64 0, i32 12, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  br label %if.end64

lpad34:                                           ; preds = %if.then32.split173, %det.cont
  %158 = landingpad { i8*, i32 }
          cleanup
  %159 = extractvalue { i8*, i32 } %158, 0
  %160 = extractvalue { i8*, i32 } %158, 1
  %161 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %162 = load atomic i32, i32* %161 acquire, align 8
  %163 = and i32 %162, 2
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %eh.resume, label %cilk.sync.savestate.i175

cilk.sync.savestate.i175:                         ; preds = %lpad34
  %165 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %133, i16* nonnull %134) #2
  store volatile i8* %136, i8** %137, align 8
  %166 = call i8* @llvm.stacksave()
  store volatile i8* %166, i8** %139, align 8
  %167 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %140) #21
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %cilk.sync.runtimecall.i176, label %cilk.sync.excepting.i177

cilk.sync.runtimecall.i176:                       ; preds = %cilk.sync.savestate.i175
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %eh.resume

cilk.sync.excepting.i177:                         ; preds = %cilk.sync.savestate.i175
  %169 = load atomic i32, i32* %161 acquire, align 8
  %170 = and i32 %169, 16
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %eh.resume, label %cilk.sync.rethrow.i178

cilk.sync.rethrow.i178:                           ; preds = %cilk.sync.excepting.i177
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

if.else41:                                        ; preds = %if.else
  %div43 = sdiv i32 %rCount, 2
  %sub46 = sub nsw i32 %rCount, %div43
  %172 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 6
  %173 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 7
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %172, i16* nonnull %173) #2
  %174 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5
  %175 = call i8* @llvm.frameaddress(i32 0)
  %176 = getelementptr inbounds [5 x i8*], [5 x i8*]* %174, i64 0, i64 0
  store volatile i8* %175, i8** %176, align 8
  %177 = call i8* @llvm.stacksave()
  %178 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 5, i64 2
  store volatile i8* %177, i8** %178, align 8
  %179 = bitcast [5 x i8*]* %174 to i8*
  %180 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %179) #21
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %if.else41.split174, label %det.cont52

if.else41.split174:                               ; preds = %if.else41
  invoke fastcc void @_ZN10blockTransI5eventiE6transREiiiiii_det.achd47.cilk(%struct.blockTrans* %this, i32 %rStart, i32 %div43, i32 %rLength, i32 %cStart, i32 %cCount, i32 %cLength)
          to label %det.cont52 unwind label %lpad53

det.cont52:                                       ; preds = %if.else41, %if.else41.split174
  %add60 = add nsw i32 %div43, %rStart
  invoke void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %this, i32 %add60, i32 %sub46, i32 %rLength, i32 %cStart, i32 %cCount, i32 %cLength)
          to label %invoke.cont61 unwind label %lpad53

invoke.cont61:                                    ; preds = %det.cont52
  %182 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %183 = load atomic i32, i32* %182 acquire, align 8
  %184 = and i32 %183, 2
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %__cilk_sync.exit184, label %cilk.sync.savestate.i180

cilk.sync.savestate.i180:                         ; preds = %invoke.cont61
  %186 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %172, i16* nonnull %173) #2
  store volatile i8* %175, i8** %176, align 8
  %187 = call i8* @llvm.stacksave()
  store volatile i8* %187, i8** %178, align 8
  %188 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %179) #21
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %cilk.sync.runtimecall.i181, label %cilk.sync.excepting.i182

cilk.sync.runtimecall.i181:                       ; preds = %cilk.sync.savestate.i180
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %__cilk_sync.exit184

cilk.sync.excepting.i182:                         ; preds = %cilk.sync.savestate.i180
  %190 = load atomic i32, i32* %182 acquire, align 8
  %191 = and i32 %190, 16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %__cilk_sync.exit184, label %cilk.sync.rethrow.i183

cilk.sync.rethrow.i183:                           ; preds = %cilk.sync.excepting.i182
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

__cilk_sync.exit184:                              ; preds = %invoke.cont61, %cilk.sync.runtimecall.i181, %cilk.sync.excepting.i182
  %193 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %194 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %193, i64 0, i32 12, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %194, align 8
  br label %if.end64

lpad53:                                           ; preds = %if.else41.split174, %det.cont52
  %197 = landingpad { i8*, i32 }
          cleanup
  %198 = extractvalue { i8*, i32 } %197, 0
  %199 = extractvalue { i8*, i32 } %197, 1
  %200 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %201 = load atomic i32, i32* %200 acquire, align 8
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %eh.resume, label %cilk.sync.savestate.i185

cilk.sync.savestate.i185:                         ; preds = %lpad53
  %204 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  call void asm sideeffect "stmxcsr $0\0A\09fnstcw $1", "*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %172, i16* nonnull %173) #2
  store volatile i8* %175, i8** %176, align 8
  %205 = call i8* @llvm.stacksave()
  store volatile i8* %205, i8** %178, align 8
  %206 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %179) #21
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %cilk.sync.runtimecall.i186, label %cilk.sync.excepting.i187

cilk.sync.runtimecall.i186:                       ; preds = %cilk.sync.savestate.i185
  call void @__cilkrts_sync(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf)
  br label %eh.resume

cilk.sync.excepting.i187:                         ; preds = %cilk.sync.savestate.i185
  %208 = load atomic i32, i32* %200 acquire, align 8
  %209 = and i32 %208, 16
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %eh.resume, label %cilk.sync.rethrow.i188

cilk.sync.rethrow.i188:                           ; preds = %cilk.sync.excepting.i187
  call void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #22
  unreachable

if.end64:                                         ; preds = %for.cond.cleanup7, %__cilk_sync.exit184, %__cilk_sync.exit, %if.then
  %211 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %212 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %211, i64 0, i32 9
  %215 = bitcast %struct.__cilkrts_stack_frame** %214 to i64*
  store atomic i64 %213, i64* %215 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %216 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  %217 = load atomic i32, i32* %216 acquire, align 8
  %218 = icmp eq i32 %217, 16777216
  br i1 %218, label %__cilk_parent_epilogue.exit, label %body.i

body.i:                                           ; preds = %if.end64
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %if.end64, %body.i
  ret void

eh.resume:                                        ; preds = %cilk.sync.excepting.i187, %cilk.sync.runtimecall.i186, %lpad53, %cilk.sync.excepting.i177, %cilk.sync.runtimecall.i176, %lpad34
  %.pre-phi = phi i32* [ %161, %lpad34 ], [ %161, %cilk.sync.runtimecall.i176 ], [ %161, %cilk.sync.excepting.i177 ], [ %200, %lpad53 ], [ %200, %cilk.sync.runtimecall.i186 ], [ %200, %cilk.sync.excepting.i187 ]
  %exn.slot35.0 = phi i8* [ %159, %lpad34 ], [ %159, %cilk.sync.runtimecall.i176 ], [ %159, %cilk.sync.excepting.i177 ], [ %198, %lpad53 ], [ %198, %cilk.sync.runtimecall.i186 ], [ %198, %cilk.sync.excepting.i187 ]
  %ehselector.slot36.0 = phi i32 [ %160, %lpad34 ], [ %160, %cilk.sync.runtimecall.i176 ], [ %160, %cilk.sync.excepting.i177 ], [ %199, %lpad53 ], [ %199, %cilk.sync.runtimecall.i186 ], [ %199, %cilk.sync.excepting.i187 ]
  %219 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %220 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %219, i64 0, i32 12, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %220, align 8
  %lpad.val68 = insertvalue { i8*, i32 } undef, i8* %exn.slot35.0, 0
  %lpad.val69 = insertvalue { i8*, i32 } %lpad.val68, i32 %ehselector.slot36.0, 1
  %223 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %8 acquire, align 8
  %224 = bitcast %struct.__cilkrts_stack_frame** %7 to i64*
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %223, i64 0, i32 9
  %227 = bitcast %struct.__cilkrts_stack_frame** %226 to i64*
  store atomic i64 %225, i64* %227 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %7 release, align 8
  %228 = load atomic i32, i32* %.pre-phi acquire, align 8
  %229 = icmp eq i32 %228, 16777216
  br i1 %229, label %__cilk_parent_epilogue.exit191, label %body.i190

body.i190:                                        ; preds = %eh.resume
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit191

__cilk_parent_epilogue.exit191:                   ; preds = %eh.resume, %body.i190
  resume { i8*, i32 } %lpad.val69
}

declare i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_kdTree.C() #6 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  store double 0.000000e+00, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 0), align 8, !tbaa !56
  store double 0.000000e+00, double* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 2), align 8, !tbaa !109
  store i8 0, i8* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 3), align 8, !tbaa !39
  store i64 0, i64* bitcast (%struct.timezone* getelementptr inbounds (%struct.timer, %struct.timer* @_ZL3_tm, i64 0, i32 5) to i64*), align 4
  %call.i = tail call i32 @mallopt(i32 -4, i32 0) #2
  %call.i1 = tail call i32 @mallopt(i32 -1, i32 -1) #2
  ret void
}

declare double @sqrt(double) local_unnamed_addr

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #15

declare void @__cilkrts_cilk_for_64(void (i8*, i64, i64)*, i8*, i64, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z7bestCutP5event5rangeS1_S1_i_pfor.detach.ls({ %struct.event*, i32* }* nocapture readonly %.ls, i64 %indvars.iv218.start.ls, i64 %wide.trip.count220.ls) local_unnamed_addr #13 {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { %struct.event*, i32* }, { %struct.event*, i32* }* %.ls, i64 0, i32 0
  %1 = load %struct.event*, %struct.event** %0, align 8
  %2 = getelementptr { %struct.event*, i32* }, { %struct.event*, i32* }* %.ls, i64 0, i32 1
  %3 = load i32*, i32** %2, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.loopexit.ls.split:              ; preds = %pfor.detach.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %pfor.detach.ls
  %indvars.iv218.ls = phi i64 [ %indvars.iv218.start.ls, %pfor.detach.lr.ph.ls ], [ %5, %pfor.detach.ls ]
  %p.ls = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv218.ls, i32 1
  %4 = load i32, i32* %p.ls, align 4, !tbaa !8
  %and.ls = and i32 %4, 1
  %arrayidx31.ls = getelementptr inbounds i32, i32* %3, i64 %indvars.iv218.ls
  store i32 %and.ls, i32* %arrayidx31.ls, align 4, !tbaa !12
  %5 = add i64 %indvars.iv218.ls, 1
  %6 = icmp ult i64 %5, %wide.trip.count220.ls
  br i1 %6, label %pfor.detach.ls, label %pfor.cond.cleanup.loopexit.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z7bestCutP5event5rangeS1_S1_i_pfor.detach47.ls({ i32*, %struct.event*, i32, float, float, float, float, float* }* nocapture readonly %.ls, i64 %indvars.iv.start.ls, i64 %wide.trip.count.ls) local_unnamed_addr #13 {
pfor.detach47.lr.ph.ls:
  %0 = getelementptr { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %.ls, i64 0, i32 0
  %1 = load i32*, i32** %0, align 8
  %2 = getelementptr { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %.ls, i64 0, i32 1
  %3 = load %struct.event*, %struct.event** %2, align 8
  %4 = getelementptr { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %.ls, i64 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %.ls, i64 0, i32 3
  %7 = load float, float* %6, align 4
  %8 = getelementptr { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %.ls, i64 0, i32 4
  %9 = load float, float* %8, align 4
  %10 = getelementptr { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %.ls, i64 0, i32 5
  %11 = load float, float* %10, align 4
  %12 = getelementptr { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %.ls, i64 0, i32 6
  %13 = load float, float* %12, align 4
  %14 = getelementptr { i32*, %struct.event*, i32, float, float, float, float, float* }, { i32*, %struct.event*, i32, float, float, float, float, float* }* %.ls, i64 0, i32 7
  %15 = load float*, float** %14, align 8
  %16 = add i64 %indvars.iv.start.ls, 1
  %17 = icmp ult i64 %16, %wide.trip.count.ls
  %umax = select i1 %17, i64 %wide.trip.count.ls, i64 %16
  %18 = sub i64 %umax, %indvars.iv.start.ls
  %min.iters.check = icmp ult i64 %18, 8
  br i1 %min.iters.check, label %pfor.detach47.ls.preheader, label %vector.memcheck

pfor.detach47.ls.preheader:                       ; preds = %middle.block, %vector.memcheck, %pfor.detach47.lr.ph.ls
  %indvars.iv.ls.ph = phi i64 [ %indvars.iv.start.ls, %vector.memcheck ], [ %indvars.iv.start.ls, %pfor.detach47.lr.ph.ls ], [ %ind.end, %middle.block ]
  br label %pfor.detach47.ls

vector.memcheck:                                  ; preds = %pfor.detach47.lr.ph.ls
  %scevgep = getelementptr float, float* %15, i64 %indvars.iv.start.ls
  %19 = add i64 %indvars.iv.start.ls, 1
  %20 = icmp ult i64 %19, %wide.trip.count.ls
  %umax2 = select i1 %20, i64 %wide.trip.count.ls, i64 %19
  %scevgep3 = getelementptr float, float* %15, i64 %umax2
  %scevgep5 = getelementptr %struct.event, %struct.event* %3, i64 %indvars.iv.start.ls
  %scevgep7 = getelementptr %struct.event, %struct.event* %3, i64 %umax2, i32 0
  %scevgep8 = getelementptr float, float* %scevgep7, i64 -1
  %bound0 = icmp ult float* %scevgep, %scevgep8
  %21 = bitcast float* %scevgep3 to %struct.event*
  %bound1 = icmp ult %struct.event* %scevgep5, %21
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %pfor.detach47.ls.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %18, -8
  %ind.end = add i64 %n.vec, %indvars.iv.start.ls
  %22 = trunc i64 %indvars.iv.start.ls to i32
  %.splatinsert10 = insertelement <8 x i32> undef, i32 %22, i32 0
  %.splat11 = shufflevector <8 x i32> %.splatinsert10, <8 x i32> undef, <8 x i32> zeroinitializer
  %induction12 = add <8 x i32> %.splat11, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %broadcast.splatinsert = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <8 x float> undef, float %7, i32 0
  %broadcast.splat17 = shufflevector <8 x float> %broadcast.splatinsert16, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x float> undef, float %9, i32 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x float> undef, float %11, i32 0
  %broadcast.splat21 = shufflevector <8 x float> %broadcast.splatinsert20, <8 x float> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x float> undef, float %13, i32 0
  %broadcast.splat23 = shufflevector <8 x float> %broadcast.splatinsert22, <8 x float> undef, <8 x i32> zeroinitializer
  %23 = add i64 %n.vec, -8
  %24 = lshr exact i64 %23, 3
  %25 = add nuw nsw i64 %24, 1
  %xtraiter = and i64 %25, 1
  %26 = icmp eq i64 %23, 0
  br i1 %26, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %25, %xtraiter
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %vec.ind13 = phi <8 x i32> [ %induction12, %vector.ph.new ], [ %vec.ind.next14.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %27 = add i64 %index, %indvars.iv.start.ls
  %28 = getelementptr inbounds i32, i32* %1, i64 %27
  %29 = bitcast i32* %28 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %29, align 4, !tbaa !12, !alias.scope !110
  %30 = sub nsw <8 x i32> %vec.ind13, %wide.load
  %31 = getelementptr inbounds %struct.event, %struct.event* %3, i64 %27, i32 1
  %32 = getelementptr i32, i32* %31, i64 -1
  %33 = bitcast i32* %32 to <16 x i32>*
  %wide.vec = load <16 x i32>, <16 x i32>* %33, align 4, !tbaa !53
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %34 = bitcast <8 x i32> %strided.vec to <8 x float>
  %strided.vec15 = shufflevector <16 x i32> %wide.vec, <16 x i32> undef, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %35 = and <8 x i32> %strided.vec15, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %36 = sub <8 x i32> %broadcast.splat, %wide.load
  %37 = sub <8 x i32> %36, %35
  %38 = fsub <8 x float> %34, %broadcast.splat17
  %39 = fmul <8 x float> %broadcast.splat19, %38
  %40 = fadd <8 x float> %broadcast.splat21, %39
  %41 = fsub <8 x float> %broadcast.splat23, %34
  %42 = fmul <8 x float> %broadcast.splat19, %41
  %43 = fadd <8 x float> %broadcast.splat21, %42
  %44 = sitofp <8 x i32> %30 to <8 x float>
  %45 = fmul <8 x float> %40, %44
  %46 = sitofp <8 x i32> %37 to <8 x float>
  %47 = fmul <8 x float> %43, %46
  %48 = fadd <8 x float> %45, %47
  %49 = getelementptr inbounds float, float* %15, i64 %27
  %50 = bitcast float* %49 to <8 x float>*
  store <8 x float> %48, <8 x float>* %50, align 4, !tbaa !13, !alias.scope !113, !noalias !115
  %index.next = or i64 %index, 8
  %vec.ind.next14 = add <8 x i32> %vec.ind13, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %51 = add i64 %index.next, %indvars.iv.start.ls
  %52 = getelementptr inbounds i32, i32* %1, i64 %51
  %53 = bitcast i32* %52 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %53, align 4, !tbaa !12, !alias.scope !110
  %54 = sub nsw <8 x i32> %vec.ind.next14, %wide.load.1
  %55 = getelementptr inbounds %struct.event, %struct.event* %3, i64 %51, i32 1
  %56 = getelementptr i32, i32* %55, i64 -1
  %57 = bitcast i32* %56 to <16 x i32>*
  %wide.vec.1 = load <16 x i32>, <16 x i32>* %57, align 4, !tbaa !53
  %strided.vec.1 = shufflevector <16 x i32> %wide.vec.1, <16 x i32> undef, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %58 = bitcast <8 x i32> %strided.vec.1 to <8 x float>
  %strided.vec15.1 = shufflevector <16 x i32> %wide.vec.1, <16 x i32> undef, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %59 = and <8 x i32> %strided.vec15.1, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %60 = sub <8 x i32> %broadcast.splat, %wide.load.1
  %61 = sub <8 x i32> %60, %59
  %62 = fsub <8 x float> %58, %broadcast.splat17
  %63 = fmul <8 x float> %broadcast.splat19, %62
  %64 = fadd <8 x float> %broadcast.splat21, %63
  %65 = fsub <8 x float> %broadcast.splat23, %58
  %66 = fmul <8 x float> %broadcast.splat19, %65
  %67 = fadd <8 x float> %broadcast.splat21, %66
  %68 = sitofp <8 x i32> %54 to <8 x float>
  %69 = fmul <8 x float> %64, %68
  %70 = sitofp <8 x i32> %61 to <8 x float>
  %71 = fmul <8 x float> %67, %70
  %72 = fadd <8 x float> %69, %71
  %73 = getelementptr inbounds float, float* %15, i64 %51
  %74 = bitcast float* %73 to <8 x float>*
  store <8 x float> %72, <8 x float>* %74, align 4, !tbaa !13, !alias.scope !113, !noalias !115
  %index.next.1 = add i64 %index, 16
  %vec.ind.next14.1 = add <8 x i32> %vec.ind13, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !117

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind13.unr = phi <8 x i32> [ %induction12, %vector.ph ], [ %vec.ind.next14.1, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %75 = add i64 %index.unr, %indvars.iv.start.ls
  %76 = getelementptr inbounds i32, i32* %1, i64 %75
  %77 = bitcast i32* %76 to <8 x i32>*
  %wide.load.epil = load <8 x i32>, <8 x i32>* %77, align 4, !tbaa !12, !alias.scope !110
  %78 = sub nsw <8 x i32> %vec.ind13.unr, %wide.load.epil
  %79 = getelementptr inbounds %struct.event, %struct.event* %3, i64 %75, i32 1
  %80 = getelementptr i32, i32* %79, i64 -1
  %81 = bitcast i32* %80 to <16 x i32>*
  %wide.vec.epil = load <16 x i32>, <16 x i32>* %81, align 4, !tbaa !53
  %strided.vec.epil = shufflevector <16 x i32> %wide.vec.epil, <16 x i32> undef, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %82 = bitcast <8 x i32> %strided.vec.epil to <8 x float>
  %strided.vec15.epil = shufflevector <16 x i32> %wide.vec.epil, <16 x i32> undef, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %83 = and <8 x i32> %strided.vec15.epil, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %84 = sub <8 x i32> %broadcast.splat, %wide.load.epil
  %85 = sub <8 x i32> %84, %83
  %86 = fsub <8 x float> %82, %broadcast.splat17
  %87 = fmul <8 x float> %broadcast.splat19, %86
  %88 = fadd <8 x float> %broadcast.splat21, %87
  %89 = fsub <8 x float> %broadcast.splat23, %82
  %90 = fmul <8 x float> %broadcast.splat19, %89
  %91 = fadd <8 x float> %broadcast.splat21, %90
  %92 = sitofp <8 x i32> %78 to <8 x float>
  %93 = fmul <8 x float> %88, %92
  %94 = sitofp <8 x i32> %85 to <8 x float>
  %95 = fmul <8 x float> %91, %94
  %96 = fadd <8 x float> %93, %95
  %97 = getelementptr inbounds float, float* %15, i64 %75
  %98 = bitcast float* %97 to <8 x float>*
  store <8 x float> %96, <8 x float>* %98, align 4, !tbaa !13, !alias.scope !113, !noalias !115
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %18, %n.vec
  br i1 %cmp.n, label %pfor.cond.cleanup46.loopexit.ls.split, label %pfor.detach47.ls.preheader

pfor.cond.cleanup46.loopexit.ls.split:            ; preds = %pfor.detach47.ls, %middle.block
  ret void

pfor.detach47.ls:                                 ; preds = %pfor.detach47.ls.preheader, %pfor.detach47.ls
  %indvars.iv.ls = phi i64 [ %103, %pfor.detach47.ls ], [ %indvars.iv.ls.ph, %pfor.detach47.ls.preheader ]
  %arrayidx54.ls = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.ls
  %99 = load i32, i32* %arrayidx54.ls, align 4, !tbaa !12
  %100 = trunc i64 %indvars.iv.ls to i32
  %sub55.ls = sub nsw i32 %100, %99
  %p61.ls = getelementptr inbounds %struct.event, %struct.event* %3, i64 %indvars.iv.ls, i32 1
  %101 = load i32, i32* %p61.ls, align 4, !tbaa !8
  %and62.ls = and i32 %101, 1
  %add63.neg.ls = sub i32 %5, %99
  %sub64.ls = sub i32 %add63.neg.ls, %and62.ls
  %v.ls = getelementptr inbounds %struct.event, %struct.event* %3, i64 %indvars.iv.ls, i32 0
  %102 = load float, float* %v.ls, align 4, !tbaa !11
  %sub68.ls = fsub float %102, %7
  %mul69.ls = fmul float %9, %sub68.ls
  %add70.ls = fadd float %11, %mul69.ls
  %sub75.ls = fsub float %13, %102
  %mul76.ls = fmul float %9, %sub75.ls
  %add77.ls = fadd float %11, %mul76.ls
  %conv78.ls = sitofp i32 %sub55.ls to float
  %mul79.ls = fmul float %add70.ls, %conv78.ls
  %conv80.ls = sitofp i32 %sub64.ls to float
  %mul81.ls = fmul float %add77.ls, %conv80.ls
  %add82.ls = fadd float %mul79.ls, %mul81.ls
  %arrayidx84.ls = getelementptr inbounds float, float* %15, i64 %indvars.iv.ls
  store float %add82.ls, float* %arrayidx84.ls, align 4, !tbaa !13
  %103 = add i64 %indvars.iv.ls, 1
  %104 = icmp ult i64 %103, %wide.trip.count.ls
  br i1 %104, label %pfor.detach47.ls, label %pfor.cond.cleanup46.loopexit.ls.split, !llvm.loop !118
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z11splitEventsP5rangeP5eventfi_pfor.detach.ls({ %struct.event*, %struct.range*, float, i8*, i8* }* nocapture readonly %.ls, i64 %indvars.iv.start.ls, i64 %wide.trip.count.ls) local_unnamed_addr #13 {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %.ls, i64 0, i32 0
  %1 = load %struct.event*, %struct.event** %0, align 8
  %2 = getelementptr { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %.ls, i64 0, i32 1
  %3 = load %struct.range*, %struct.range** %2, align 8
  %4 = getelementptr { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %.ls, i64 0, i32 2
  %5 = load float, float* %4, align 4
  %6 = getelementptr { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %.ls, i64 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr { %struct.event*, %struct.range*, float, i8*, i8* }, { %struct.event*, %struct.range*, float, i8*, i8* }* %.ls, i64 0, i32 4
  %9 = load i8*, i8** %8, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.loopexit.ls.split:              ; preds = %pfor.detach.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %pfor.detach.ls
  %indvars.iv.ls = phi i64 [ %indvars.iv.start.ls, %pfor.detach.lr.ph.ls ], [ %13, %pfor.detach.ls ]
  %p.ls = getelementptr inbounds %struct.event, %struct.event* %1, i64 %indvars.iv.ls, i32 1
  %10 = load i32, i32* %p.ls, align 4, !tbaa !8
  %shr.ls = ashr i32 %10, 1
  %idxprom8.ls = sext i32 %shr.ls to i64
  %min.ls = getelementptr inbounds %struct.range, %struct.range* %3, i64 %idxprom8.ls, i32 0
  %11 = load float, float* %min.ls, align 4, !tbaa !7
  %cmp10.ls = fcmp olt float %11, %5
  %arrayidx12.ls = getelementptr inbounds i8, i8* %7, i64 %indvars.iv.ls
  %frombool.ls = zext i1 %cmp10.ls to i8
  store i8 %frombool.ls, i8* %arrayidx12.ls, align 1, !tbaa !82
  %max.ls = getelementptr inbounds %struct.range, %struct.range* %3, i64 %idxprom8.ls, i32 1
  %12 = load float, float* %max.ls, align 4, !tbaa !2
  %cmp15.ls = fcmp ogt float %12, %5
  %arrayidx17.ls = getelementptr inbounds i8, i8* %9, i64 %indvars.iv.ls
  %frombool18.ls = zext i1 %cmp15.ls to i8
  store i8 %frombool18.ls, i8* %arrayidx17.ls, align 1, !tbaa !82
  %13 = add i64 %indvars.iv.ls, 1
  %14 = icmp ult i64 %13, %wide.trip.count.ls
  br i1 %14, label %pfor.detach.ls, label %pfor.cond.cleanup.loopexit.ls.split
}

; Function Attrs: nounwind uwtable
define internal void @_Z11processRays9trianglesI8_point3dIdEEP3rayIS1_EiP8treeNodePi_pfor.detach.ls({ %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* nocapture readonly %.ls, i64 %indvars.iv.start.ls, i64 %.ls1) local_unnamed_addr #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %.ls, i64 0, i32 0
  %1 = load %struct.ray*, %struct.ray** %0, align 8
  %2 = getelementptr { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %.ls, i64 0, i32 1
  %3 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %4 = getelementptr { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %.ls, i64 0, i32 2
  %5 = load %struct.triangles*, %struct.triangles** %4, align 8
  %6 = getelementptr { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %.ls, i64 0, i32 3
  %7 = load i32*, i32** %6, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.loopexit.ls.split:              ; preds = %pfor.detach.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %pfor.detach.ls
  %indvars.iv.ls = phi i64 [ %indvars.iv.start.ls, %pfor.detach.lr.ph.ls ], [ %8, %pfor.detach.ls ]
  %arrayidx.ls = getelementptr inbounds %struct.ray, %struct.ray* %1, i64 %indvars.iv.ls
  %call.ls = tail call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %arrayidx.ls, %struct.treeNode* %3, %struct.triangles* byval nonnull align 8 %5)
  %arrayidx5.ls = getelementptr inbounds i32, i32* %7, i64 %indvars.iv.ls
  store i32 %call.ls, i32* %arrayidx5.ls, align 4, !tbaa !12
  %8 = add i64 %indvars.iv.ls, 1
  %9 = icmp ult i64 %8, %.ls1
  br i1 %9, label %pfor.detach.ls, label %pfor.cond.cleanup.loopexit.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach.ls({ %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* nocapture readonly %.ls, i64 %indvars.iv828.start.ls, i64 %conv.ls) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %.ls, i64 0, i32 0
  %1 = load %struct.triangle*, %struct.triangle** %0, align 8
  %2 = getelementptr { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %.ls, i64 0, i32 1
  %3 = load %class._point3d*, %class._point3d** %2, align 8
  %4 = getelementptr { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %.ls, i64 0, i32 2
  %5 = load float, float* %4, align 4
  %6 = getelementptr { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %.ls, i64 0, i32 3
  %7 = load %struct.range**, %struct.range*** %6, align 8
  %8 = getelementptr { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %.ls, i64 0, i32 4
  %9 = load %struct.range**, %struct.range*** %8, align 8
  %10 = getelementptr { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }, { %struct.triangle*, %class._point3d*, float, %struct.range**, %struct.range**, %struct.range** }* %.ls, i64 0, i32 5
  %11 = load %struct.range**, %struct.range*** %10, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.loopexit.ls.split:              ; preds = %pfor.detach.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %pfor.detach.ls
  %indvars.iv828.ls = phi i64 [ %indvars.iv828.start.ls, %pfor.detach.lr.ph.ls ], [ %24, %pfor.detach.ls ]
  %arrayidx8.ls = getelementptr inbounds %struct.triangle, %struct.triangle* %1, i64 %indvars.iv828.ls, i32 0, i64 0
  %12 = load i32, i32* %arrayidx8.ls, align 4, !tbaa !12
  %idxprom9.ls = sext i32 %12 to i64
  %p0.sroa.0.0..sroa_idx.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom9.ls, i32 0
  %p0.sroa.0.0.copyload.ls = load double, double* %p0.sroa.0.0..sroa_idx.ls, align 8
  %p0.sroa.8.0..sroa_idx755.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom9.ls, i32 1
  %p0.sroa.8.0.copyload.ls = load double, double* %p0.sroa.8.0..sroa_idx755.ls, align 8
  %p0.sroa.12.0..sroa_idx759.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom9.ls, i32 2
  %p0.sroa.12.0.copyload.ls = load double, double* %p0.sroa.12.0..sroa_idx759.ls, align 8
  %arrayidx15.ls = getelementptr inbounds %struct.triangle, %struct.triangle* %1, i64 %indvars.iv828.ls, i32 0, i64 1
  %13 = load i32, i32* %arrayidx15.ls, align 4, !tbaa !12
  %idxprom16.ls = sext i32 %13 to i64
  %p1.sroa.0.0..sroa_idx.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom16.ls, i32 0
  %p1.sroa.0.0.copyload.ls = load double, double* %p1.sroa.0.0..sroa_idx.ls, align 8
  %p1.sroa.8.0..sroa_idx735.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom16.ls, i32 1
  %p1.sroa.8.0.copyload.ls = load double, double* %p1.sroa.8.0..sroa_idx735.ls, align 8
  %p1.sroa.12.0..sroa_idx739.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom16.ls, i32 2
  %p1.sroa.12.0.copyload.ls = load double, double* %p1.sroa.12.0..sroa_idx739.ls, align 8
  %arrayidx22.ls = getelementptr inbounds %struct.triangle, %struct.triangle* %1, i64 %indvars.iv828.ls, i32 0, i64 2
  %14 = load i32, i32* %arrayidx22.ls, align 4, !tbaa !12
  %idxprom23.ls = sext i32 %14 to i64
  %p2.sroa.0.0..sroa_idx.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom23.ls, i32 0
  %p2.sroa.0.0.copyload.ls = load double, double* %p2.sroa.0.0..sroa_idx.ls, align 8
  %p2.sroa.8.0..sroa_idx715.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom23.ls, i32 1
  %p2.sroa.8.0.copyload.ls = load double, double* %p2.sroa.8.0..sroa_idx715.ls, align 8
  %p2.sroa.12.0..sroa_idx719.ls = getelementptr inbounds %class._point3d, %class._point3d* %3, i64 %idxprom23.ls, i32 2
  %p2.sroa.12.0.copyload.ls = load double, double* %p2.sroa.12.0..sroa_idx719.ls, align 8
  %cmp.i.ls = fcmp olt double %p2.sroa.0.0.copyload.ls, %p1.sroa.0.0.copyload.ls
  %15 = select i1 %cmp.i.ls, double %p2.sroa.0.0.copyload.ls, double %p1.sroa.0.0.copyload.ls
  %cmp.i439.ls = fcmp olt double %15, %p0.sroa.0.0.copyload.ls
  %.sroa.speculated777.ls = select i1 %cmp.i439.ls, double %15, double %p0.sroa.0.0.copyload.ls
  %conv30.ls = fptrunc double %.sroa.speculated777.ls to float
  %cmp.i441.ls = fcmp olt double %p1.sroa.0.0.copyload.ls, %p2.sroa.0.0.copyload.ls
  %16 = select i1 %cmp.i441.ls, double %p2.sroa.0.0.copyload.ls, double %p1.sroa.0.0.copyload.ls
  %cmp.i443.ls = fcmp olt double %p0.sroa.0.0.copyload.ls, %16
  %.sroa.speculated774.ls = select i1 %cmp.i443.ls, double %16, double %p0.sroa.0.0.copyload.ls
  %conv38.ls = fptrunc double %.sroa.speculated774.ls to float
  %cmp.i445.ls = fcmp oeq float %conv30.ls, %conv38.ls
  %add.i.ls = fadd float %5, %conv30.ls
  %conv38.sink.ls = select i1 %cmp.i445.ls, float %add.i.ls, float %conv38.ls
  %retval.0.vec.insert8.i.ls = insertelement <2 x float> undef, float %conv30.ls, i32 0
  %retval.4.vec.insert10.i.ls = insertelement <2 x float> %retval.0.vec.insert8.i.ls, float %conv38.sink.ls, i32 1
  %17 = load %struct.range*, %struct.range** %7, align 16, !tbaa !17
  %arrayidx43.ls = getelementptr inbounds %struct.range, %struct.range* %17, i64 %indvars.iv828.ls
  %ref.tmp.sroa.0.0..sroa_cast349.ls = bitcast %struct.range* %arrayidx43.ls to <2 x float>*
  store <2 x float> %retval.4.vec.insert10.i.ls, <2 x float>* %ref.tmp.sroa.0.0..sroa_cast349.ls, align 4
  %cmp.i446.ls = fcmp olt double %p2.sroa.8.0.copyload.ls, %p1.sroa.8.0.copyload.ls
  %18 = select i1 %cmp.i446.ls, double %p2.sroa.8.0.copyload.ls, double %p1.sroa.8.0.copyload.ls
  %cmp.i451.ls = fcmp olt double %18, %p0.sroa.8.0.copyload.ls
  %.sroa.speculated771.ls = select i1 %cmp.i451.ls, double %18, double %p0.sroa.8.0.copyload.ls
  %conv52.ls = fptrunc double %.sroa.speculated771.ls to float
  %cmp.i453.ls = fcmp olt double %p1.sroa.8.0.copyload.ls, %p2.sroa.8.0.copyload.ls
  %19 = select i1 %cmp.i453.ls, double %p2.sroa.8.0.copyload.ls, double %p1.sroa.8.0.copyload.ls
  %cmp.i458.ls = fcmp olt double %p0.sroa.8.0.copyload.ls, %19
  %.sroa.speculated768.ls = select i1 %cmp.i458.ls, double %19, double %p0.sroa.8.0.copyload.ls
  %conv60.ls = fptrunc double %.sroa.speculated768.ls to float
  %cmp.i460.ls = fcmp oeq float %conv52.ls, %conv60.ls
  %add.i461.ls = fadd float %5, %conv52.ls
  %conv60.sink.ls = select i1 %cmp.i460.ls, float %add.i461.ls, float %conv60.ls
  %retval.0.vec.insert8.i465.ls = insertelement <2 x float> undef, float %conv52.ls, i32 0
  %retval.4.vec.insert10.i466.ls = insertelement <2 x float> %retval.0.vec.insert8.i465.ls, float %conv60.sink.ls, i32 1
  %20 = load %struct.range*, %struct.range** %9, align 8, !tbaa !17
  %arrayidx65.ls = getelementptr inbounds %struct.range, %struct.range* %20, i64 %indvars.iv828.ls
  %ref.tmp44.sroa.0.0..sroa_cast346.ls = bitcast %struct.range* %arrayidx65.ls to <2 x float>*
  store <2 x float> %retval.4.vec.insert10.i466.ls, <2 x float>* %ref.tmp44.sroa.0.0..sroa_cast346.ls, align 4
  %cmp.i470.ls = fcmp olt double %p2.sroa.12.0.copyload.ls, %p1.sroa.12.0.copyload.ls
  %21 = select i1 %cmp.i470.ls, double %p2.sroa.12.0.copyload.ls, double %p1.sroa.12.0.copyload.ls
  %cmp.i472.ls = fcmp olt double %21, %p0.sroa.12.0.copyload.ls
  %.sroa.speculated765.ls = select i1 %cmp.i472.ls, double %21, double %p0.sroa.12.0.copyload.ls
  %conv74.ls = fptrunc double %.sroa.speculated765.ls to float
  %cmp.i474.ls = fcmp olt double %p1.sroa.12.0.copyload.ls, %p2.sroa.12.0.copyload.ls
  %22 = select i1 %cmp.i474.ls, double %p2.sroa.12.0.copyload.ls, double %p1.sroa.12.0.copyload.ls
  %cmp.i497.ls = fcmp olt double %p0.sroa.12.0.copyload.ls, %22
  %.sroa.speculated.ls = select i1 %cmp.i497.ls, double %22, double %p0.sroa.12.0.copyload.ls
  %conv82.ls = fptrunc double %.sroa.speculated.ls to float
  %cmp.i499.ls = fcmp oeq float %conv74.ls, %conv82.ls
  %add.i500.ls = fadd float %5, %conv74.ls
  %conv82.sink.ls = select i1 %cmp.i499.ls, float %add.i500.ls, float %conv82.ls
  %retval.0.vec.insert8.i504.ls = insertelement <2 x float> undef, float %conv74.ls, i32 0
  %retval.4.vec.insert10.i505.ls = insertelement <2 x float> %retval.0.vec.insert8.i504.ls, float %conv82.sink.ls, i32 1
  %23 = load %struct.range*, %struct.range** %11, align 16, !tbaa !17
  %arrayidx87.ls = getelementptr inbounds %struct.range, %struct.range* %23, i64 %indvars.iv828.ls
  %ref.tmp66.sroa.0.0..sroa_cast343.ls = bitcast %struct.range* %arrayidx87.ls to <2 x float>*
  store <2 x float> %retval.4.vec.insert10.i505.ls, <2 x float>* %ref.tmp66.sroa.0.0..sroa_cast343.ls, align 4
  %24 = add i64 %indvars.iv828.ls, 1
  %25 = icmp ult i64 %24, %conv.ls
  br i1 %25, label %pfor.detach.ls, label %pfor.cond.cleanup.loopexit.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach123.1.ls({ %struct.range**, %struct.event** }* nocapture readonly %.ls, i64 %indvars.iv819.1.start.ls, i64 %conv.ls) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach123.1.preheader.ls:
  %0 = getelementptr { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %.ls, i64 0, i32 0
  %1 = load %struct.range**, %struct.range*** %0, align 8
  %2 = getelementptr { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %.ls, i64 0, i32 1
  %3 = load %struct.event**, %struct.event*** %2, align 8
  br label %pfor.detach123.1.ls

pfor.cond.cleanup122.1.loopexit.ls.split:         ; preds = %pfor.detach123.1.ls
  ret void

pfor.detach123.1.ls:                              ; preds = %pfor.detach123.1.preheader.ls, %pfor.detach123.1.ls
  %indvars.iv819.1.ls = phi i64 [ %16, %pfor.detach123.1.ls ], [ %indvars.iv819.1.start.ls, %pfor.detach123.1.preheader.ls ]
  %4 = load %struct.range*, %struct.range** %1, align 8, !tbaa !17
  %min.1.ls = getelementptr inbounds %struct.range, %struct.range* %4, i64 %indvars.iv819.1.ls, i32 0
  %5 = bitcast float* %min.1.ls to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %7 = shl nuw i64 %indvars.iv819.1.ls, 1
  %8 = load %struct.event*, %struct.event** %3, align 8, !tbaa !17
  %arrayidx142.1.ls = getelementptr inbounds %struct.event, %struct.event* %8, i64 %7
  %.sroa_cast708.1.ls = bitcast %struct.event* %arrayidx142.1.ls to i32*
  store i32 %6, i32* %.sroa_cast708.1.ls, align 4
  %.sroa_idx709.1.ls = getelementptr inbounds %struct.event, %struct.event* %8, i64 %7, i32 1
  %9 = trunc i64 %7 to i32
  store i32 %9, i32* %.sroa_idx709.1.ls, align 4
  %10 = load %struct.range*, %struct.range** %1, align 8, !tbaa !17
  %max.1.ls = getelementptr inbounds %struct.range, %struct.range* %10, i64 %indvars.iv819.1.ls, i32 1
  %11 = bitcast float* %max.1.ls to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !2
  %13 = or i64 %7, 1
  %14 = load %struct.event*, %struct.event** %3, align 8, !tbaa !17
  %arrayidx156.1.ls = getelementptr inbounds %struct.event, %struct.event* %14, i64 %13
  %.sroa_cast.1.ls = bitcast %struct.event* %arrayidx156.1.ls to i32*
  store i32 %12, i32* %.sroa_cast.1.ls, align 4
  %.sroa_idx.1.ls = getelementptr inbounds %struct.event, %struct.event* %14, i64 %13, i32 1
  %15 = trunc i64 %13 to i32
  store i32 %15, i32* %.sroa_idx.1.ls, align 4
  %16 = add i64 %indvars.iv819.1.ls, 1
  %17 = icmp ult i64 %16, %conv.ls
  br i1 %17, label %pfor.detach123.1.ls, label %pfor.cond.cleanup122.1.loopexit.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach123.2.ls({ %struct.range**, %struct.event** }* nocapture readonly %.ls, i64 %indvars.iv819.2.start.ls, i64 %conv.ls) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach123.2.preheader.ls:
  %0 = getelementptr { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %.ls, i64 0, i32 0
  %1 = load %struct.range**, %struct.range*** %0, align 8
  %2 = getelementptr { %struct.range**, %struct.event** }, { %struct.range**, %struct.event** }* %.ls, i64 0, i32 1
  %3 = load %struct.event**, %struct.event*** %2, align 8
  br label %pfor.detach123.2.ls

pfor.cond.cleanup122.2.loopexit.ls.split:         ; preds = %pfor.detach123.2.ls
  ret void

pfor.detach123.2.ls:                              ; preds = %pfor.detach123.2.preheader.ls, %pfor.detach123.2.ls
  %indvars.iv819.2.ls = phi i64 [ %16, %pfor.detach123.2.ls ], [ %indvars.iv819.2.start.ls, %pfor.detach123.2.preheader.ls ]
  %4 = load %struct.range*, %struct.range** %1, align 16, !tbaa !17
  %min.2.ls = getelementptr inbounds %struct.range, %struct.range* %4, i64 %indvars.iv819.2.ls, i32 0
  %5 = bitcast float* %min.2.ls to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %7 = shl nuw i64 %indvars.iv819.2.ls, 1
  %8 = load %struct.event*, %struct.event** %3, align 16, !tbaa !17
  %arrayidx142.2.ls = getelementptr inbounds %struct.event, %struct.event* %8, i64 %7
  %.sroa_cast708.2.ls = bitcast %struct.event* %arrayidx142.2.ls to i32*
  store i32 %6, i32* %.sroa_cast708.2.ls, align 4
  %.sroa_idx709.2.ls = getelementptr inbounds %struct.event, %struct.event* %8, i64 %7, i32 1
  %9 = trunc i64 %7 to i32
  store i32 %9, i32* %.sroa_idx709.2.ls, align 4
  %10 = load %struct.range*, %struct.range** %1, align 16, !tbaa !17
  %max.2.ls = getelementptr inbounds %struct.range, %struct.range* %10, i64 %indvars.iv819.2.ls, i32 1
  %11 = bitcast float* %max.2.ls to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !2
  %13 = or i64 %7, 1
  %14 = load %struct.event*, %struct.event** %3, align 16, !tbaa !17
  %arrayidx156.2.ls = getelementptr inbounds %struct.event, %struct.event* %14, i64 %13
  %.sroa_cast.2.ls = bitcast %struct.event* %arrayidx156.2.ls to i32*
  store i32 %12, i32* %.sroa_cast.2.ls, align 4
  %.sroa_idx.2.ls = getelementptr inbounds %struct.event, %struct.event* %14, i64 %13, i32 1
  %15 = trunc i64 %13 to i32
  store i32 %15, i32* %.sroa_idx.2.ls, align 4
  %16 = add i64 %indvars.iv819.2.ls, 1
  %17 = icmp ult i64 %16, %conv.ls
  br i1 %17, label %pfor.detach123.2.ls, label %pfor.cond.cleanup122.2.loopexit.ls.split
}

; Function Attrs: nounwind uwtable
define internal void @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach.i.ls({ %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* nocapture readonly %.ls, i64 %indvars.iv.i.start.ls, i64 %conv238.ls) local_unnamed_addr #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach.i.preheader.ls:
  %0 = getelementptr { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %.ls, i64 0, i32 0
  %1 = load %struct.ray*, %struct.ray** %0, align 8
  %2 = getelementptr { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %.ls, i64 0, i32 1
  %3 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %4 = getelementptr { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %.ls, i64 0, i32 2
  %5 = load %struct.triangles*, %struct.triangles** %4, align 8
  %6 = getelementptr { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }, { %struct.ray*, %struct.treeNode*, %struct.triangles*, i32* }* %.ls, i64 0, i32 3
  %7 = load i32*, i32** %6, align 8
  br label %pfor.detach.i.ls

pfor.cond.cleanup.i.loopexit.ls.split:            ; preds = %pfor.detach.i.ls
  ret void

pfor.detach.i.ls:                                 ; preds = %pfor.detach.i.preheader.ls, %pfor.detach.i.ls
  %indvars.iv.i.ls = phi i64 [ %8, %pfor.detach.i.ls ], [ %indvars.iv.i.start.ls, %pfor.detach.i.preheader.ls ]
  %arrayidx.i.ls = getelementptr inbounds %struct.ray, %struct.ray* %1, i64 %indvars.iv.i.ls
  %call.i620.ls = tail call i32 @_Z7findRay3rayI8_point3dIdEEP8treeNode9trianglesIS1_E(%struct.ray* byval nonnull align 8 %arrayidx.i.ls, %struct.treeNode* nonnull %3, %struct.triangles* byval nonnull align 8 %5)
  %arrayidx5.i.ls = getelementptr inbounds i32, i32* %7, i64 %indvars.iv.i.ls
  store i32 %call.i620.ls, i32* %arrayidx5.i.ls, align 4, !tbaa !12
  %8 = add i64 %indvars.iv.i.ls, 1
  %9 = icmp ult i64 %8, %conv238.ls
  br i1 %9, label %pfor.detach.i.ls, label %pfor.cond.cleanup.i.loopexit.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach276.ls({ i32* }* nocapture readonly %.ls, i64 %indvars.iv814.start.ls, i64 %wide.trip.count.ls) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach276.lr.ph.ls:
  %0 = getelementptr { i32* }, { i32* }* %.ls, i64 0, i32 0
  %1 = load i32*, i32** %0, align 8
  %2 = add i64 %indvars.iv814.start.ls, 1
  %3 = icmp ult i64 %2, %wide.trip.count.ls
  %umax = select i1 %3, i64 %wide.trip.count.ls, i64 %2
  %4 = sub i64 %umax, %indvars.iv814.start.ls
  %min.iters.check = icmp ult i64 %4, 32
  br i1 %min.iters.check, label %pfor.detach276.ls.preheader, label %vector.ph

pfor.detach276.ls.preheader:                      ; preds = %middle.block, %pfor.detach276.lr.ph.ls
  %indvars.iv814.ls.ph = phi i64 [ %indvars.iv814.start.ls, %pfor.detach276.lr.ph.ls ], [ %ind.end, %middle.block ]
  br label %pfor.detach276.ls

vector.ph:                                        ; preds = %pfor.detach276.lr.ph.ls
  %n.vec = and i64 %4, -32
  %ind.end = add i64 %n.vec, %indvars.iv814.start.ls
  %5 = trunc i64 %indvars.iv814.start.ls to i32
  %.splatinsert4 = insertelement <8 x i32> undef, i32 %5, i32 0
  %.splat5 = shufflevector <8 x i32> %.splatinsert4, <8 x i32> undef, <8 x i32> zeroinitializer
  %induction6 = add <8 x i32> %.splat5, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = add i64 %n.vec, -32
  %7 = lshr exact i64 %6, 5
  %8 = add nuw nsw i64 %7, 1
  %xtraiter = and i64 %8, 3
  %9 = icmp ult i64 %6, 96
  br i1 %9, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %8, %xtraiter
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.ind7 = phi <8 x i32> [ %induction6, %vector.ph.new ], [ %vec.ind.next12.3, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %10 = add i64 %index, %indvars.iv814.start.ls
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %step.add8 = add <8 x i32> %vec.ind7, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %step.add9 = add <8 x i32> %vec.ind7, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %step.add10 = add <8 x i32> %vec.ind7, <i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24>
  %12 = bitcast i32* %11 to <8 x i32>*
  store <8 x i32> %vec.ind7, <8 x i32>* %12, align 4, !tbaa !12
  %13 = getelementptr i32, i32* %11, i64 8
  %14 = bitcast i32* %13 to <8 x i32>*
  store <8 x i32> %step.add8, <8 x i32>* %14, align 4, !tbaa !12
  %15 = getelementptr i32, i32* %11, i64 16
  %16 = bitcast i32* %15 to <8 x i32>*
  store <8 x i32> %step.add9, <8 x i32>* %16, align 4, !tbaa !12
  %17 = getelementptr i32, i32* %11, i64 24
  %18 = bitcast i32* %17 to <8 x i32>*
  store <8 x i32> %step.add10, <8 x i32>* %18, align 4, !tbaa !12
  %index.next = or i64 %index, 32
  %vec.ind.next12 = add <8 x i32> %vec.ind7, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %19 = add i64 %index.next, %indvars.iv814.start.ls
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %step.add8.1 = add <8 x i32> %vec.ind7, <i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40>
  %step.add9.1 = add <8 x i32> %vec.ind7, <i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %step.add10.1 = add <8 x i32> %vec.ind7, <i32 56, i32 56, i32 56, i32 56, i32 56, i32 56, i32 56, i32 56>
  %21 = bitcast i32* %20 to <8 x i32>*
  store <8 x i32> %vec.ind.next12, <8 x i32>* %21, align 4, !tbaa !12
  %22 = getelementptr i32, i32* %20, i64 8
  %23 = bitcast i32* %22 to <8 x i32>*
  store <8 x i32> %step.add8.1, <8 x i32>* %23, align 4, !tbaa !12
  %24 = getelementptr i32, i32* %20, i64 16
  %25 = bitcast i32* %24 to <8 x i32>*
  store <8 x i32> %step.add9.1, <8 x i32>* %25, align 4, !tbaa !12
  %26 = getelementptr i32, i32* %20, i64 24
  %27 = bitcast i32* %26 to <8 x i32>*
  store <8 x i32> %step.add10.1, <8 x i32>* %27, align 4, !tbaa !12
  %index.next.1 = or i64 %index, 64
  %vec.ind.next12.1 = add <8 x i32> %vec.ind7, <i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64>
  %28 = add i64 %index.next.1, %indvars.iv814.start.ls
  %29 = getelementptr inbounds i32, i32* %1, i64 %28
  %step.add8.2 = add <8 x i32> %vec.ind7, <i32 72, i32 72, i32 72, i32 72, i32 72, i32 72, i32 72, i32 72>
  %step.add9.2 = add <8 x i32> %vec.ind7, <i32 80, i32 80, i32 80, i32 80, i32 80, i32 80, i32 80, i32 80>
  %step.add10.2 = add <8 x i32> %vec.ind7, <i32 88, i32 88, i32 88, i32 88, i32 88, i32 88, i32 88, i32 88>
  %30 = bitcast i32* %29 to <8 x i32>*
  store <8 x i32> %vec.ind.next12.1, <8 x i32>* %30, align 4, !tbaa !12
  %31 = getelementptr i32, i32* %29, i64 8
  %32 = bitcast i32* %31 to <8 x i32>*
  store <8 x i32> %step.add8.2, <8 x i32>* %32, align 4, !tbaa !12
  %33 = getelementptr i32, i32* %29, i64 16
  %34 = bitcast i32* %33 to <8 x i32>*
  store <8 x i32> %step.add9.2, <8 x i32>* %34, align 4, !tbaa !12
  %35 = getelementptr i32, i32* %29, i64 24
  %36 = bitcast i32* %35 to <8 x i32>*
  store <8 x i32> %step.add10.2, <8 x i32>* %36, align 4, !tbaa !12
  %index.next.2 = or i64 %index, 96
  %vec.ind.next12.2 = add <8 x i32> %vec.ind7, <i32 96, i32 96, i32 96, i32 96, i32 96, i32 96, i32 96, i32 96>
  %37 = add i64 %index.next.2, %indvars.iv814.start.ls
  %38 = getelementptr inbounds i32, i32* %1, i64 %37
  %step.add8.3 = add <8 x i32> %vec.ind7, <i32 104, i32 104, i32 104, i32 104, i32 104, i32 104, i32 104, i32 104>
  %step.add9.3 = add <8 x i32> %vec.ind7, <i32 112, i32 112, i32 112, i32 112, i32 112, i32 112, i32 112, i32 112>
  %step.add10.3 = add <8 x i32> %vec.ind7, <i32 120, i32 120, i32 120, i32 120, i32 120, i32 120, i32 120, i32 120>
  %39 = bitcast i32* %38 to <8 x i32>*
  store <8 x i32> %vec.ind.next12.2, <8 x i32>* %39, align 4, !tbaa !12
  %40 = getelementptr i32, i32* %38, i64 8
  %41 = bitcast i32* %40 to <8 x i32>*
  store <8 x i32> %step.add8.3, <8 x i32>* %41, align 4, !tbaa !12
  %42 = getelementptr i32, i32* %38, i64 16
  %43 = bitcast i32* %42 to <8 x i32>*
  store <8 x i32> %step.add9.3, <8 x i32>* %43, align 4, !tbaa !12
  %44 = getelementptr i32, i32* %38, i64 24
  %45 = bitcast i32* %44 to <8 x i32>*
  store <8 x i32> %step.add10.3, <8 x i32>* %45, align 4, !tbaa !12
  %index.next.3 = add i64 %index, 128
  %vec.ind.next12.3 = add <8 x i32> %vec.ind7, <i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128>
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !119

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind7.unr = phi <8 x i32> [ %induction6, %vector.ph ], [ %vec.ind.next12.3, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil.preheader

vector.body.epil.preheader:                       ; preds = %middle.block.unr-lcssa
  br label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil, %vector.body.epil.preheader
  %index.epil = phi i64 [ %index.unr, %vector.body.epil.preheader ], [ %index.next.epil, %vector.body.epil ]
  %vec.ind7.epil = phi <8 x i32> [ %vec.ind7.unr, %vector.body.epil.preheader ], [ %vec.ind.next12.epil, %vector.body.epil ]
  %epil.iter = phi i64 [ %xtraiter, %vector.body.epil.preheader ], [ %epil.iter.sub, %vector.body.epil ]
  %46 = add i64 %index.epil, %indvars.iv814.start.ls
  %47 = getelementptr inbounds i32, i32* %1, i64 %46
  %step.add8.epil = add <8 x i32> %vec.ind7.epil, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %step.add9.epil = add <8 x i32> %vec.ind7.epil, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %step.add10.epil = add <8 x i32> %vec.ind7.epil, <i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24>
  %48 = bitcast i32* %47 to <8 x i32>*
  store <8 x i32> %vec.ind7.epil, <8 x i32>* %48, align 4, !tbaa !12
  %49 = getelementptr i32, i32* %47, i64 8
  %50 = bitcast i32* %49 to <8 x i32>*
  store <8 x i32> %step.add8.epil, <8 x i32>* %50, align 4, !tbaa !12
  %51 = getelementptr i32, i32* %47, i64 16
  %52 = bitcast i32* %51 to <8 x i32>*
  store <8 x i32> %step.add9.epil, <8 x i32>* %52, align 4, !tbaa !12
  %53 = getelementptr i32, i32* %47, i64 24
  %54 = bitcast i32* %53 to <8 x i32>*
  store <8 x i32> %step.add10.epil, <8 x i32>* %54, align 4, !tbaa !12
  %index.next.epil = add i64 %index.epil, 32
  %vec.ind.next12.epil = add <8 x i32> %vec.ind7.epil, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !120

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %pfor.cond.cleanup275.loopexit.ls.split, label %pfor.detach276.ls.preheader

pfor.cond.cleanup275.loopexit.ls.split:           ; preds = %pfor.detach276.ls, %middle.block
  ret void

pfor.detach276.ls:                                ; preds = %pfor.detach276.ls.preheader, %pfor.detach276.ls
  %indvars.iv814.ls = phi i64 [ %56, %pfor.detach276.ls ], [ %indvars.iv814.ls.ph, %pfor.detach276.ls.preheader ]
  %arrayidx283.ls = getelementptr inbounds i32, i32* %1, i64 %indvars.iv814.ls
  %55 = trunc i64 %indvars.iv814.ls to i32
  store i32 %55, i32* %arrayidx283.ls, align 4, !tbaa !12
  %56 = add i64 %indvars.iv814.ls, 1
  %57 = icmp ult i64 %56, %wide.trip.count.ls
  br i1 %57, label %pfor.detach276.ls, label %pfor.cond.cleanup275.loopexit.ls.split, !llvm.loop !121
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0__pfor.detach.ls({ i64, %struct.event*, %struct.event* }* nocapture readonly %.ls, i64 %__begin.0384.start.ls, i64 %smax.ls) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { i64, %struct.event*, %struct.event* }, { i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr { i64, %struct.event*, %struct.event* }, { i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 1
  %3 = load %struct.event*, %struct.event** %2, align 8
  %4 = getelementptr { i64, %struct.event*, %struct.event* }, { i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 2
  %5 = load %struct.event*, %struct.event** %4, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.loopexit.ls.split:              ; preds = %pfor.detach.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %pfor.detach.ls
  %__begin.0384.ls = phi i64 [ %__begin.0384.start.ls, %pfor.detach.lr.ph.ls ], [ %9, %pfor.detach.ls ]
  %mul.i.ls = mul nuw nsw i64 %__begin.0384.ls, 982451653
  %add.i.ls = add nuw nsw i64 %mul.i.ls, 12345
  %rem.ls = urem i64 %add.i.ls, %1
  %arrayidx.ls = getelementptr inbounds %struct.event, %struct.event* %3, i64 %rem.ls
  %arrayidx19.ls = getelementptr inbounds %struct.event, %struct.event* %5, i64 %__begin.0384.ls
  %6 = bitcast %struct.event* %arrayidx.ls to i64*
  %7 = bitcast %struct.event* %arrayidx19.ls to i64*
  %8 = load i64, i64* %6, align 4
  store i64 %8, i64* %7, align 4
  %9 = add i64 %__begin.0384.ls, 1
  %10 = icmp ult i64 %9, %smax.ls
  br i1 %10, label %pfor.detach.ls, label %pfor.cond.cleanup.loopexit.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0__pfor.detach43.ls({ %struct.event*, %struct.event* }* nocapture readonly %.ls, i64 %__begin32.0382.start.ls, i64 %smax404.ls) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach43.preheader.ls:
  %0 = getelementptr { %struct.event*, %struct.event* }, { %struct.event*, %struct.event* }* %.ls, i64 0, i32 0
  %1 = load %struct.event*, %struct.event** %0, align 8
  %2 = getelementptr { %struct.event*, %struct.event* }, { %struct.event*, %struct.event* }* %.ls, i64 0, i32 1
  %3 = load %struct.event*, %struct.event** %2, align 8
  br label %pfor.detach43.ls

pfor.cond.cleanup42.loopexit.ls.split:            ; preds = %pfor.detach43.ls
  ret void

pfor.detach43.ls:                                 ; preds = %pfor.detach43.preheader.ls, %pfor.detach43.ls
  %__begin32.0382.ls = phi i64 [ %7, %pfor.detach43.ls ], [ %__begin32.0382.start.ls, %pfor.detach43.preheader.ls ]
  %mul48.ls = mul nuw nsw i64 %__begin32.0382.ls, 10
  %arrayidx49.ls = getelementptr inbounds %struct.event, %struct.event* %1, i64 %mul48.ls
  %arrayidx50.ls = getelementptr inbounds %struct.event, %struct.event* %3, i64 %__begin32.0382.ls
  %4 = bitcast %struct.event* %arrayidx49.ls to i64*
  %5 = bitcast %struct.event* %arrayidx50.ls to i64*
  %6 = load i64, i64* %4, align 4
  store i64 %6, i64* %5, align 4
  %7 = add i64 %__begin32.0382.ls, 1
  %8 = icmp ult i64 %7, %smax404.ls
  br i1 %8, label %pfor.detach43.ls, label %pfor.cond.cleanup42.loopexit.ls.split
}

; Function Attrs: uwtable
define internal void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0__pfor.detach71.ls({ i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* nocapture readonly %.ls, i64 %__begin62.0380.start.ls, i64 %add.ls) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach71.lr.ph.ls:
  %0 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 3
  %7 = load %struct.event*, %struct.event** %6, align 8
  %8 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 6
  %13 = load i1, i1* %12, align 1
  %14 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 7
  %15 = load i1, i1* %14, align 1
  %16 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 9
  %19 = load %struct.event*, %struct.event** %18, align 8
  %20 = getelementptr { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }, { i64, i64, i64, %struct.event*, i64, i32*, i1, i1, i64, %struct.event*, %struct.event* }* %.ls, i64 0, i32 10
  %21 = load %struct.event*, %struct.event** %20, align 8
  br label %pfor.detach71.ls

pfor.cond.cleanup70.loopexit.ls.split:            ; preds = %pfor.inc95.ls
  ret void

pfor.detach71.ls:                                 ; preds = %pfor.detach71.lr.ph.ls, %pfor.inc95.ls
  %__begin62.0380.ls = phi i64 [ %__begin62.0380.start.ls, %pfor.detach71.lr.ph.ls ], [ %31, %pfor.inc95.ls ]
  %mul76.ls = mul nsw i64 %__begin62.0380.ls, %1
  %cmp78.ls = icmp slt i64 %__begin62.0380.ls, %3
  %sub80.ls = sub nsw i64 %5, %mul76.ls
  %cond.ls = select i1 %cmp78.ls, i64 %1, i64 %sub80.ls
  %add.ptr.ls = getelementptr inbounds %struct.event, %struct.event* %7, i64 %mul76.ls
  tail call void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %add.ptr.ls, i64 %cond.ls)
  %mul88.ls = mul nsw i64 %__begin62.0380.ls, %9
  %add.ptr89.ls = getelementptr inbounds i32, i32* %11, i64 %mul88.ls
  %sC102.i.ls = bitcast i32* %add.ptr89.ls to i8*
  %cmp.i.ls = icmp eq i64 %cond.ls, 0
  %or.cond.i.ls = or i1 %13, %cmp.i.ls
  br i1 %or.cond.i.ls, label %pfor.inc95.ls, label %if.end.i.ls

if.end.i.ls:                                      ; preds = %pfor.detach71.ls
  %add.ptr.i.ls = getelementptr inbounds %struct.event, %struct.event* %add.ptr.ls, i64 %cond.ls
  br i1 %15, label %while.cond.i.ls.preheader, label %for.body.lr.ph.i.ls

for.body.lr.ph.i.ls:                              ; preds = %if.end.i.ls
  tail call void @llvm.memset.p0i8.i64(i8* %sC102.i.ls, i8 0, i64 %17, i32 4, i1 false)
  br label %while.cond.i.ls.preheader

while.cond.i.ls.preheader:                        ; preds = %for.body.lr.ph.i.ls, %if.end.i.ls
  br label %while.cond.i.ls

while.cond.i.ls:                                  ; preds = %while.cond.i.ls.backedge, %while.cond.i.ls.preheader
  %sC.addr.0.i.ls = phi i32* [ %add.ptr89.ls, %while.cond.i.ls.preheader ], [ %sC.addr.0.i.ls.be, %while.cond.i.ls.backedge ]
  %sB.addr.0.i.ls = phi %struct.event* [ %19, %while.cond.i.ls.preheader ], [ %sB.addr.0.i.ls.be, %while.cond.i.ls.backedge ]
  %sA.addr.0.i.ls = phi %struct.event* [ %add.ptr.ls, %while.cond.i.ls.preheader ], [ %sA.addr.0.i.ls.be, %while.cond.i.ls.backedge ]
  %agg.tmp.sroa.0.0..sroa_cast80.i.ls = bitcast %struct.event* %sA.addr.0.i.ls to i64*
  %agg.tmp.sroa.0.0.copyload81.i.ls = load i64, i64* %agg.tmp.sroa.0.0..sroa_cast80.i.ls, align 4
  %agg.tmp5.sroa.0.0..sroa_cast.i.ls = bitcast %struct.event* %sB.addr.0.i.ls to i64*
  %agg.tmp5.sroa.0.0.copyload82.i.ls = load i64, i64* %agg.tmp5.sroa.0.0..sroa_cast.i.ls, align 4
  %a.sroa.0.0.extract.trunc.i83.i.ls = trunc i64 %agg.tmp.sroa.0.0.copyload81.i.ls to i32
  %22 = bitcast i32 %a.sroa.0.0.extract.trunc.i83.i.ls to float
  %b.sroa.0.0.extract.trunc.i84.i.ls = trunc i64 %agg.tmp5.sroa.0.0.copyload82.i.ls to i32
  %23 = bitcast i32 %b.sroa.0.0.extract.trunc.i84.i.ls to float
  %cmp.i85.i.ls = fcmp olt float %22, %23
  br i1 %cmp.i85.i.ls, label %while.body6.lr.ph.i.ls, label %while.end.i.ls

while.body6.lr.ph.i.ls:                           ; preds = %while.cond.i.ls
  %.pre.i.ls = load i32, i32* %sC.addr.0.i.ls, align 4, !tbaa !12
  br label %while.body6.i.ls

while.body6.i.ls:                                 ; preds = %while.cond4.i.ls, %while.body6.lr.ph.i.ls
  %24 = phi i32 [ %.pre.i.ls, %while.body6.lr.ph.i.ls ], [ %inc7.i.ls, %while.cond4.i.ls ]
  %sA.addr.186.i.ls = phi %struct.event* [ %sA.addr.0.i.ls, %while.body6.lr.ph.i.ls ], [ %incdec.ptr.i.ls, %while.cond4.i.ls ]
  %inc7.i.ls = add nsw i32 %24, 1
  store i32 %inc7.i.ls, i32* %sC.addr.0.i.ls, align 4, !tbaa !12
  %incdec.ptr.i.ls = getelementptr inbounds %struct.event, %struct.event* %sA.addr.186.i.ls, i64 1
  %cmp8.i.ls = icmp eq %struct.event* %incdec.ptr.i.ls, %add.ptr.i.ls
  br i1 %cmp8.i.ls, label %pfor.inc95.ls, label %while.cond4.i.ls

while.cond4.i.ls:                                 ; preds = %while.body6.i.ls
  %agg.tmp.sroa.0.0..sroa_cast.i.ls = bitcast %struct.event* %incdec.ptr.i.ls to i64*
  %agg.tmp.sroa.0.0.copyload.i.ls = load i64, i64* %agg.tmp.sroa.0.0..sroa_cast.i.ls, align 4
  %a.sroa.0.0.extract.trunc.i.i.ls = trunc i64 %agg.tmp.sroa.0.0.copyload.i.ls to i32
  %25 = bitcast i32 %a.sroa.0.0.extract.trunc.i.i.ls to float
  %cmp.i.i.ls = fcmp olt float %25, %23
  br i1 %cmp.i.i.ls, label %while.body6.i.ls, label %while.end.i.ls

while.end.i.ls:                                   ; preds = %while.cond4.i.ls, %while.cond.i.ls
  %agg.tmp23.sroa.0.0.copyload90.i.ls = phi i64 [ %agg.tmp.sroa.0.0.copyload81.i.ls, %while.cond.i.ls ], [ %agg.tmp.sroa.0.0.copyload.i.ls, %while.cond4.i.ls ]
  %sA.addr.1.lcssa.i.ls = phi %struct.event* [ %sA.addr.0.i.ls, %while.cond.i.ls ], [ %incdec.ptr.i.ls, %while.cond4.i.ls ]
  %incdec.ptr11.i.ls = getelementptr inbounds %struct.event, %struct.event* %sB.addr.0.i.ls, i64 1
  %incdec.ptr12.i.ls = getelementptr inbounds i32, i32* %sC.addr.0.i.ls, i64 1
  %cmp13.i.ls = icmp eq %struct.event* %incdec.ptr11.i.ls, %21
  br i1 %cmp13.i.ls, label %while.end38.i.ls, label %if.end15.i.ls

if.end15.i.ls:                                    ; preds = %while.end.i.ls
  %agg.tmp18.sroa.0.0..sroa_cast.i.ls = bitcast %struct.event* %incdec.ptr11.i.ls to i64*
  %agg.tmp18.sroa.0.0.copyload.i.ls = load i64, i64* %agg.tmp18.sroa.0.0..sroa_cast.i.ls, align 4
  %b.sroa.0.0.extract.trunc.i74.i.ls = trunc i64 %agg.tmp18.sroa.0.0.copyload.i.ls to i32
  %26 = bitcast i32 %b.sroa.0.0.extract.trunc.i74.i.ls to float
  %cmp.i75.i.ls = fcmp olt float %23, %26
  br i1 %cmp.i75.i.ls, label %while.cond.i.ls.backedge, label %if.then20.i.ls

if.then20.i.ls:                                   ; preds = %if.end15.i.ls
  %b.sroa.0.0.extract.trunc.i7192.i.ls = trunc i64 %agg.tmp23.sroa.0.0.copyload90.i.ls to i32
  %27 = bitcast i32 %b.sroa.0.0.extract.trunc.i7192.i.ls to float
  %cmp.i7293.i.ls = fcmp olt float %26, %27
  br i1 %cmp.i7293.i.ls, label %while.end31.i.ls, label %while.body25.lr.ph.i.ls

while.body25.lr.ph.i.ls:                          ; preds = %if.then20.i.ls
  %.pre104.i.ls = load i32, i32* %incdec.ptr12.i.ls, align 4, !tbaa !12
  br label %while.body25.i.ls

while.body25.i.ls:                                ; preds = %while.cond21.i.ls, %while.body25.lr.ph.i.ls
  %28 = phi i32 [ %.pre104.i.ls, %while.body25.lr.ph.i.ls ], [ %inc26.i.ls, %while.cond21.i.ls ]
  %sA.addr.294.i.ls = phi %struct.event* [ %sA.addr.1.lcssa.i.ls, %while.body25.lr.ph.i.ls ], [ %incdec.ptr27.i.ls, %while.cond21.i.ls ]
  %inc26.i.ls = add nsw i32 %28, 1
  store i32 %inc26.i.ls, i32* %incdec.ptr12.i.ls, align 4, !tbaa !12
  %incdec.ptr27.i.ls = getelementptr inbounds %struct.event, %struct.event* %sA.addr.294.i.ls, i64 1
  %cmp28.i.ls = icmp eq %struct.event* %incdec.ptr27.i.ls, %add.ptr.i.ls
  br i1 %cmp28.i.ls, label %pfor.inc95.ls, label %while.cond21.i.ls

while.cond21.i.ls:                                ; preds = %while.body25.i.ls
  %agg.tmp23.sroa.0.0..sroa_cast.i.ls = bitcast %struct.event* %incdec.ptr27.i.ls to i64*
  %agg.tmp23.sroa.0.0.copyload.i.ls = load i64, i64* %agg.tmp23.sroa.0.0..sroa_cast.i.ls, align 4
  %b.sroa.0.0.extract.trunc.i71.i.ls = trunc i64 %agg.tmp23.sroa.0.0.copyload.i.ls to i32
  %29 = bitcast i32 %b.sroa.0.0.extract.trunc.i71.i.ls to float
  %cmp.i72.i.ls = fcmp olt float %26, %29
  br i1 %cmp.i72.i.ls, label %while.end31.i.ls, label %while.body25.i.ls

while.end31.i.ls:                                 ; preds = %while.cond21.i.ls, %if.then20.i.ls
  %sA.addr.2.lcssa.i.ls = phi %struct.event* [ %sA.addr.1.lcssa.i.ls, %if.then20.i.ls ], [ %incdec.ptr27.i.ls, %while.cond21.i.ls ]
  %incdec.ptr32.i.ls = getelementptr inbounds %struct.event, %struct.event* %sB.addr.0.i.ls, i64 2
  %incdec.ptr33.i.ls = getelementptr inbounds i32, i32* %sC.addr.0.i.ls, i64 2
  %cmp34.i.ls = icmp eq %struct.event* %incdec.ptr32.i.ls, %21
  br i1 %cmp34.i.ls, label %while.end38.i.ls, label %while.cond.i.ls.backedge

while.cond.i.ls.backedge:                         ; preds = %while.end31.i.ls, %if.end15.i.ls
  %sC.addr.0.i.ls.be = phi i32* [ %incdec.ptr12.i.ls, %if.end15.i.ls ], [ %incdec.ptr33.i.ls, %while.end31.i.ls ]
  %sB.addr.0.i.ls.be = phi %struct.event* [ %incdec.ptr11.i.ls, %if.end15.i.ls ], [ %incdec.ptr32.i.ls, %while.end31.i.ls ]
  %sA.addr.0.i.ls.be = phi %struct.event* [ %sA.addr.1.lcssa.i.ls, %if.end15.i.ls ], [ %sA.addr.2.lcssa.i.ls, %while.end31.i.ls ]
  br label %while.cond.i.ls

while.end38.i.ls:                                 ; preds = %while.end31.i.ls, %while.end.i.ls
  %sC.addr.2.i.ls = phi i32* [ %incdec.ptr12.i.ls, %while.end.i.ls ], [ %incdec.ptr33.i.ls, %while.end31.i.ls ]
  %sA.addr.4.i.ls = phi %struct.event* [ %sA.addr.1.lcssa.i.ls, %while.end.i.ls ], [ %sA.addr.2.lcssa.i.ls, %while.end31.i.ls ]
  %sub.ptr.lhs.cast.i.ls = ptrtoint %struct.event* %add.ptr.i.ls to i64
  %sub.ptr.rhs.cast.i.ls = ptrtoint %struct.event* %sA.addr.4.i.ls to i64
  %sub.ptr.sub.i.ls = sub i64 %sub.ptr.lhs.cast.i.ls, %sub.ptr.rhs.cast.i.ls
  %30 = lshr exact i64 %sub.ptr.sub.i.ls, 3
  %conv.i362.ls = trunc i64 %30 to i32
  store i32 %conv.i362.ls, i32* %sC.addr.2.i.ls, align 4, !tbaa !12
  br label %pfor.inc95.ls

pfor.inc95.ls:                                    ; preds = %while.body6.i.ls, %while.body25.i.ls, %pfor.detach71.ls, %while.end38.i.ls
  %31 = add i64 %__begin62.0380.ls, 1
  %32 = icmp ult i64 %31, %add.ls
  br i1 %32, label %pfor.detach71.ls, label %pfor.cond.cleanup70.loopexit.ls.split
}

; Function Attrs: uwtable
define internal void @_Z10sampleSortI5event6cmpValiEvPT_T1_T0__pfor.detach141.ls({ i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* nocapture readonly %.ls, i64 %__begin131.0377.start.ls, i64 %smax405.ls) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach141.preheader.ls:
  %0 = getelementptr { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %.ls, i64 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %.ls, i64 0, i32 1
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %.ls, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %.ls, i64 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %.ls, i64 0, i32 4
  %9 = load %struct.event*, %struct.event** %8, align 8
  %10 = getelementptr { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %.ls, i64 0, i32 5
  %11 = load %struct.event*, %struct.event** %10, align 8
  %12 = getelementptr { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %.ls, i64 0, i32 6
  %13 = load %struct.event*, %struct.event** %12, align 8
  %14 = getelementptr { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }, { i64, i32*, i64, i32, %struct.event*, %struct.event*, %struct.event*, i8* }* %.ls, i64 0, i32 7
  %15 = load i8*, i8** %14, align 8
  br label %pfor.detach141.ls

pfor.cond.cleanup140.loopexit.ls.split:           ; preds = %pfor.inc187.ls
  ret void

pfor.detach141.ls:                                ; preds = %pfor.detach141.preheader.ls, %pfor.inc187.ls
  %__begin131.0377.ls = phi i64 [ %23, %pfor.inc187.ls ], [ %__begin131.0377.start.ls, %pfor.detach141.preheader.ls ]
  %mul147.ls = mul nsw i64 %__begin131.0377.ls, %1
  %arrayidx148.ls = getelementptr inbounds i32, i32* %3, i64 %mul147.ls
  %16 = load i32, i32* %arrayidx148.ls, align 4, !tbaa !12
  %conv149.ls = sext i32 %16 to i64
  %cmp152.ls = icmp slt i64 %__begin131.0377.ls, %5
  br i1 %cmp152.ls, label %cond.true153.ls, label %cond.end158.ls

cond.true153.ls:                                  ; preds = %pfor.detach141.ls
  %add154.ls = add nuw nsw i64 %__begin131.0377.ls, 1
  %mul155.ls = mul nsw i64 %add154.ls, %1
  %arrayidx156.ls = getelementptr inbounds i32, i32* %3, i64 %mul155.ls
  %17 = load i32, i32* %arrayidx156.ls, align 4, !tbaa !12
  br label %cond.end158.ls

cond.end158.ls:                                   ; preds = %cond.true153.ls, %pfor.detach141.ls
  %cond159.ls = phi i32 [ %17, %cond.true153.ls ], [ %7, %pfor.detach141.ls ]
  %conv160.ls = sext i32 %cond159.ls to i64
  %cmp161.ls = icmp eq i64 %__begin131.0377.ls, 0
  %cmp164.ls = icmp eq i64 %__begin131.0377.ls, %5
  %or.cond.ls = or i1 %cmp161.ls, %cmp164.ls
  br i1 %or.cond.ls, label %if.then176.ls, label %lor.lhs.false165.ls

lor.lhs.false165.ls:                              ; preds = %cond.end158.ls
  %sub167.ls = add nsw i64 %__begin131.0377.ls, -1
  %arrayidx168.ls = getelementptr inbounds %struct.event, %struct.event* %9, i64 %sub167.ls
  %agg.tmp166.sroa.0.0..sroa_cast.ls = bitcast %struct.event* %arrayidx168.ls to i64*
  %agg.tmp166.sroa.0.0.copyload.ls = load i64, i64* %agg.tmp166.sroa.0.0..sroa_cast.ls, align 4
  %arrayidx170.ls = getelementptr inbounds %struct.event, %struct.event* %9, i64 %__begin131.0377.ls
  %agg.tmp169.sroa.0.0..sroa_cast.ls = bitcast %struct.event* %arrayidx170.ls to i64*
  %agg.tmp169.sroa.0.0.copyload.ls = load i64, i64* %agg.tmp169.sroa.0.0..sroa_cast.ls, align 4
  %a.sroa.0.0.extract.trunc.i.ls = trunc i64 %agg.tmp166.sroa.0.0.copyload.ls to i32
  %18 = bitcast i32 %a.sroa.0.0.extract.trunc.i.ls to float
  %b.sroa.0.0.extract.trunc.i.ls = trunc i64 %agg.tmp169.sroa.0.0.copyload.ls to i32
  %19 = bitcast i32 %b.sroa.0.0.extract.trunc.i.ls to float
  %cmp.i363.ls = fcmp olt float %18, %19
  br i1 %cmp.i363.ls, label %if.then176.ls, label %if.end.ls

if.then176.ls:                                    ; preds = %lor.lhs.false165.ls, %cond.end158.ls
  %add.ptr177.ls = getelementptr inbounds %struct.event, %struct.event* %11, i64 %conv149.ls
  %sub178.ls = sub nsw i64 %conv160.ls, %conv149.ls
  tail call void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %add.ptr177.ls, i64 %sub178.ls)
  br label %if.end.ls

if.end.ls:                                        ; preds = %if.then176.ls, %lor.lhs.false165.ls
  %cmp182374.ls = icmp sgt i32 %cond159.ls, %16
  br i1 %cmp182374.ls, label %for.body.lr.ph.ls, label %pfor.inc187.ls

for.body.lr.ph.ls:                                ; preds = %if.end.ls
  %scevgep.ls = getelementptr %struct.event, %struct.event* %13, i64 %conv149.ls
  %scevgep388.ls = bitcast %struct.event* %scevgep.ls to i8*
  %20 = shl nsw i64 %conv149.ls, 3
  %scevgep389.ls = getelementptr i8, i8* %15, i64 %20
  %21 = shl nsw i64 %conv160.ls, 3
  %22 = sub nsw i64 %21, %20
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep388.ls, i8* %scevgep389.ls, i64 %22, i32 4, i1 false)
  br label %pfor.inc187.ls

pfor.inc187.ls:                                   ; preds = %if.end.ls, %for.body.lr.ph.ls
  %23 = add i64 %__begin131.0377.ls, 1
  %24 = icmp ult i64 %23, %smax405.ls
  br i1 %24, label %pfor.detach141.ls, label %pfor.cond.cleanup140.loopexit.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb_pfor.detach.ls({ i32, i64, i64, i32, i32*, i32* }* nocapture readonly %.ls, i64 %indvars.iv307.start.ls, i64 %.ls1) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %.ls, i64 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %.ls, i64 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %.ls, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %.ls, i64 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %.ls, i64 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr { i32, i64, i64, i32, i32*, i32* }, { i32, i64, i64, i32, i32*, i32* }* %.ls, i64 0, i32 5
  %11 = load i32*, i32** %10, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.ls.split:                       ; preds = %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit.ls
  %indvars.iv307.ls = phi i64 [ %44, %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit.ls ], [ %indvars.iv307.start.ls, %pfor.detach.lr.ph.ls ]
  %12 = shl nsw i64 %indvars.iv307.ls, 10
  %13 = add nsw i64 %12, %3
  %14 = add nsw i64 %13, 1024
  %cmp.i202.ls = icmp sgt i64 %14, %5
  %15 = trunc i64 %14 to i32
  %.sroa.speculated278.ls = select i1 %cmp.i202.ls, i32 %7, i32 %15
  %arrayidx.i.i266.ls = getelementptr inbounds i32, i32* %9, i64 %13
  %16 = load i32, i32* %arrayidx.i.i266.ls, align 4, !tbaa !12
  %17 = add nsw i64 %13, 1
  %18 = sext i32 %.sroa.speculated278.ls to i64
  %cmp15.i.ls = icmp slt i64 %17, %18
  br i1 %cmp15.i.ls, label %for.body.lr.ph.i267.ls, label %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit.ls

for.body.lr.ph.i267.ls:                           ; preds = %pfor.detach.ls
  %19 = trunc i64 %indvars.iv307.ls to i32
  %20 = mul i32 %19, -1024
  %21 = add i32 %20, %1
  %22 = add i32 %21, %.sroa.speculated278.ls
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %23, 1
  %min.iters.check.ls = icmp ult i64 %24, 32
  br i1 %min.iters.check.ls, label %for.body.i272.ls.preheader, label %vector.ph.ls

vector.ph.ls:                                     ; preds = %for.body.lr.ph.i267.ls
  %25 = add i32 %22, 1
  %26 = and i32 %25, 31
  %n.mod.vf.ls = zext i32 %26 to i64
  %n.vec.ls = sub nsw i64 %24, %n.mod.vf.ls
  %27 = insertelement <8 x i32> <i32 undef, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %16, i32 0
  br label %vector.body.ls

vector.body.ls:                                   ; preds = %vector.body.ls, %vector.ph.ls
  %index.ls = phi i64 [ 0, %vector.ph.ls ], [ %index.next.ls, %vector.body.ls ]
  %vec.phi.ls = phi <8 x i32> [ %27, %vector.ph.ls ], [ %37, %vector.body.ls ]
  %vec.phi328.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.ls ], [ %38, %vector.body.ls ]
  %vec.phi329.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.ls ], [ %39, %vector.body.ls ]
  %vec.phi330.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.ls ], [ %40, %vector.body.ls ]
  %28 = add i64 %index.ls, %17
  %29 = getelementptr inbounds i32, i32* %9, i64 %28
  %30 = bitcast i32* %29 to <8 x i32>*
  %wide.load.ls = load <8 x i32>, <8 x i32>* %30, align 4, !tbaa !12
  %31 = getelementptr i32, i32* %29, i64 8
  %32 = bitcast i32* %31 to <8 x i32>*
  %wide.load331.ls = load <8 x i32>, <8 x i32>* %32, align 4, !tbaa !12
  %33 = getelementptr i32, i32* %29, i64 16
  %34 = bitcast i32* %33 to <8 x i32>*
  %wide.load332.ls = load <8 x i32>, <8 x i32>* %34, align 4, !tbaa !12
  %35 = getelementptr i32, i32* %29, i64 24
  %36 = bitcast i32* %35 to <8 x i32>*
  %wide.load333.ls = load <8 x i32>, <8 x i32>* %36, align 4, !tbaa !12
  %37 = add nsw <8 x i32> %wide.load.ls, %vec.phi.ls
  %38 = add nsw <8 x i32> %wide.load331.ls, %vec.phi328.ls
  %39 = add nsw <8 x i32> %wide.load332.ls, %vec.phi329.ls
  %40 = add nsw <8 x i32> %wide.load333.ls, %vec.phi330.ls
  %index.next.ls = add i64 %index.ls, 32
  %41 = icmp eq i64 %index.next.ls, %n.vec.ls
  br i1 %41, label %middle.block.ls, label %vector.body.ls, !llvm.loop !122

middle.block.ls:                                  ; preds = %vector.body.ls
  %ind.end.ls = add i64 %n.vec.ls, %17
  %bin.rdx.ls = add <8 x i32> %38, %37
  %bin.rdx334.ls = add <8 x i32> %bin.rdx.ls, %39
  %bin.rdx335.ls = add <8 x i32> %bin.rdx334.ls, %40
  %rdx.shuf.ls = shufflevector <8 x i32> %bin.rdx335.ls, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx336.ls = add <8 x i32> %rdx.shuf.ls, %bin.rdx335.ls
  %rdx.shuf337.ls = shufflevector <8 x i32> %bin.rdx336.ls, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx338.ls = add <8 x i32> %rdx.shuf337.ls, %bin.rdx336.ls
  %rdx.shuf339.ls = shufflevector <8 x i32> %bin.rdx338.ls, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx340.ls = add <8 x i32> %rdx.shuf339.ls, %bin.rdx338.ls
  %42 = extractelement <8 x i32> %bin.rdx340.ls, i32 0
  %cmp.n.ls = icmp eq i32 %26, 0
  br i1 %cmp.n.ls, label %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit.ls, label %for.body.i272.ls.preheader

for.body.i272.ls.preheader:                       ; preds = %middle.block.ls, %for.body.lr.ph.i267.ls
  %indvars.iv.i268.ls.ph = phi i64 [ %ind.end.ls, %middle.block.ls ], [ %17, %for.body.lr.ph.i267.ls ]
  %r.016.i.ls.ph = phi i32 [ %42, %middle.block.ls ], [ %16, %for.body.lr.ph.i267.ls ]
  br label %for.body.i272.ls

for.body.i272.ls:                                 ; preds = %for.body.i272.ls.preheader, %for.body.i272.ls
  %indvars.iv.i268.ls = phi i64 [ %indvars.iv.next.i270.ls, %for.body.i272.ls ], [ %indvars.iv.i268.ls.ph, %for.body.i272.ls.preheader ]
  %r.016.i.ls = phi i32 [ %add.i.i269.ls, %for.body.i272.ls ], [ %r.016.i.ls.ph, %for.body.i272.ls.preheader ]
  %arrayidx.i9.i.ls = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.i268.ls
  %43 = load i32, i32* %arrayidx.i9.i.ls, align 4, !tbaa !12
  %add.i.i269.ls = add nsw i32 %43, %r.016.i.ls
  %indvars.iv.next.i270.ls = add nsw i64 %indvars.iv.i268.ls, 1
  %lftr.wideiv.i.ls = trunc i64 %indvars.iv.next.i270.ls to i32
  %exitcond.i271.ls = icmp eq i32 %.sroa.speculated278.ls, %lftr.wideiv.i.ls
  br i1 %exitcond.i271.ls, label %_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit.ls, label %for.body.i272.ls, !llvm.loop !123

_ZN8sequence12reduceSerialIiiN5utils4addFIiEENS_4getAIiiEEEET_T0_S7_T1_T2_.exit.ls: ; preds = %for.body.i272.ls, %middle.block.ls, %pfor.detach.ls
  %r.0.lcssa.i.ls = phi i32 [ %16, %pfor.detach.ls ], [ %42, %middle.block.ls ], [ %add.i.i269.ls, %for.body.i272.ls ]
  %arrayidx.ls = getelementptr inbounds i32, i32* %11, i64 %indvars.iv307.ls
  store i32 %r.0.lcssa.i.ls, i32* %arrayidx.ls, align 4, !tbaa !12
  %44 = add i64 %indvars.iv307.ls, 1
  %45 = icmp ult i64 %44, %.ls1
  br i1 %45, label %pfor.detach.ls, label %pfor.cond.cleanup.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_ZN8sequence4scanIiiN5utils4addFIiEENS_4getAIiiEEEET_PS6_T0_S8_T1_T2_S6_bb_pfor.detach72.ls({ i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* nocapture readonly %.ls, i64 %indvars.iv.start.ls, i64 %.ls1) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach72.lr.ph.ls:
  %0 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 5
  %11 = load i1, i1* %10, align 1
  %12 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 6
  %13 = load i1, i1* %12, align 1
  %14 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }, { i64, i64, i64, i32, i32*, i1, i1, i32*, i32* }* %.ls, i64 0, i32 8
  %17 = load i32*, i32** %16, align 8
  br label %pfor.detach72.ls

pfor.cond.cleanup71.loopexit.ls.split:            ; preds = %pfor.inc104.ls
  ret void

pfor.detach72.ls:                                 ; preds = %pfor.detach72.lr.ph.ls, %pfor.inc104.ls
  %indvars.iv.ls = phi i64 [ %52, %pfor.inc104.ls ], [ %indvars.iv.start.ls, %pfor.detach72.lr.ph.ls ]
  %18 = shl i64 %indvars.iv.ls, 10
  %19 = add i64 %18, %1
  %20 = mul nsw i64 %indvars.iv.ls, -1024
  %21 = add nsw i64 %20, %3
  %22 = add nsw i64 %19, 1024
  %cmp.i203.ls = icmp sgt i64 %22, %5
  %23 = trunc i64 %22 to i32
  %.sroa.speculated.ls = select i1 %cmp.i203.ls, i32 %7, i32 %23
  %arrayidx93.ls = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.ls
  %24 = load i32, i32* %arrayidx93.ls, align 4, !tbaa !12
  %25 = sext i32 %.sroa.speculated.ls to i64
  %cmp107.i207.ls = icmp slt i64 %19, %25
  br i1 %11, label %if.then.i205.ls, label %if.else18.i234.ls

if.else18.i234.ls:                                ; preds = %pfor.detach72.ls
  br i1 %13, label %if.then20.i237.ls, label %if.else36.i252.ls

if.else36.i252.ls:                                ; preds = %if.else18.i234.ls
  br i1 %cmp107.i207.ls, label %for.body41.i262.preheader.ls, label %pfor.inc104.ls

for.body41.i262.preheader.ls:                     ; preds = %if.else36.i252.ls
  %26 = sub nsw i64 %25, %1
  %27 = add i64 %21, %25
  %xtraiter353.ls = and i64 %26, 7
  %lcmp.mod354.ls = icmp eq i64 %xtraiter353.ls, 0
  br i1 %lcmp.mod354.ls, label %for.body41.i262.prol.loopexit.ls, label %for.body41.i262.prol.ls.preheader

for.body41.i262.prol.ls.preheader:                ; preds = %for.body41.i262.preheader.ls
  br label %for.body41.i262.prol.ls

for.body41.i262.prol.ls:                          ; preds = %for.body41.i262.prol.ls.preheader, %for.body41.i262.prol.ls
  %indvars.iv125.i255.prol.ls = phi i64 [ %indvars.iv.next126.i260.prol.ls, %for.body41.i262.prol.ls ], [ %19, %for.body41.i262.prol.ls.preheader ]
  %r.3119.i256.prol.ls = phi i32 [ %add.i.i259.prol.ls, %for.body41.i262.prol.ls ], [ %24, %for.body41.i262.prol.ls.preheader ]
  %prol.iter355.ls = phi i64 [ %prol.iter355.sub.ls, %for.body41.i262.prol.ls ], [ %xtraiter353.ls, %for.body41.i262.prol.ls.preheader ]
  %arrayidx.i79.i257.prol.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv125.i255.prol.ls
  %28 = load i32, i32* %arrayidx.i79.i257.prol.ls, align 4, !tbaa !12
  %arrayidx45.i258.prol.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv125.i255.prol.ls
  store i32 %r.3119.i256.prol.ls, i32* %arrayidx45.i258.prol.ls, align 4, !tbaa !12
  %add.i.i259.prol.ls = add nsw i32 %28, %r.3119.i256.prol.ls
  %indvars.iv.next126.i260.prol.ls = add nsw i64 %indvars.iv125.i255.prol.ls, 1
  %prol.iter355.sub.ls = add nsw i64 %prol.iter355.ls, -1
  %prol.iter355.cmp.ls = icmp eq i64 %prol.iter355.sub.ls, 0
  br i1 %prol.iter355.cmp.ls, label %for.body41.i262.prol.loopexit.loopexit.ls, label %for.body41.i262.prol.ls, !llvm.loop !124

for.body41.i262.prol.loopexit.ls:                 ; preds = %for.body41.i262.prol.loopexit.loopexit.ls, %for.body41.i262.preheader.ls
  %indvars.iv125.i255.unr.ls = phi i64 [ %19, %for.body41.i262.preheader.ls ], [ %55, %for.body41.i262.prol.loopexit.loopexit.ls ]
  %r.3119.i256.unr.ls = phi i32 [ %24, %for.body41.i262.preheader.ls ], [ %add.i.i259.prol.ls, %for.body41.i262.prol.loopexit.loopexit.ls ]
  %29 = icmp ult i64 %27, 7
  br i1 %29, label %pfor.inc104.ls, label %for.body41.i262.ls.preheader

for.body41.i262.ls.preheader:                     ; preds = %for.body41.i262.prol.loopexit.ls
  br label %for.body41.i262.ls

for.body41.i262.ls:                               ; preds = %for.body41.i262.ls.preheader, %for.body41.i262.ls
  %indvars.iv125.i255.ls = phi i64 [ %indvars.iv.next126.i260.7.ls, %for.body41.i262.ls ], [ %indvars.iv125.i255.unr.ls, %for.body41.i262.ls.preheader ]
  %r.3119.i256.ls = phi i32 [ %add.i.i259.7.ls, %for.body41.i262.ls ], [ %r.3119.i256.unr.ls, %for.body41.i262.ls.preheader ]
  %arrayidx.i79.i257.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv125.i255.ls
  %30 = load i32, i32* %arrayidx.i79.i257.ls, align 4, !tbaa !12
  %arrayidx45.i258.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv125.i255.ls
  store i32 %r.3119.i256.ls, i32* %arrayidx45.i258.ls, align 4, !tbaa !12
  %add.i.i259.ls = add nsw i32 %30, %r.3119.i256.ls
  %indvars.iv.next126.i260.ls = add nsw i64 %indvars.iv125.i255.ls, 1
  %arrayidx.i79.i257.1.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next126.i260.ls
  %31 = load i32, i32* %arrayidx.i79.i257.1.ls, align 4, !tbaa !12
  %arrayidx45.i258.1.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next126.i260.ls
  store i32 %add.i.i259.ls, i32* %arrayidx45.i258.1.ls, align 4, !tbaa !12
  %add.i.i259.1.ls = add nsw i32 %31, %add.i.i259.ls
  %indvars.iv.next126.i260.1.ls = add nsw i64 %indvars.iv125.i255.ls, 2
  %arrayidx.i79.i257.2.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next126.i260.1.ls
  %32 = load i32, i32* %arrayidx.i79.i257.2.ls, align 4, !tbaa !12
  %arrayidx45.i258.2.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next126.i260.1.ls
  store i32 %add.i.i259.1.ls, i32* %arrayidx45.i258.2.ls, align 4, !tbaa !12
  %add.i.i259.2.ls = add nsw i32 %32, %add.i.i259.1.ls
  %indvars.iv.next126.i260.2.ls = add nsw i64 %indvars.iv125.i255.ls, 3
  %arrayidx.i79.i257.3.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next126.i260.2.ls
  %33 = load i32, i32* %arrayidx.i79.i257.3.ls, align 4, !tbaa !12
  %arrayidx45.i258.3.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next126.i260.2.ls
  store i32 %add.i.i259.2.ls, i32* %arrayidx45.i258.3.ls, align 4, !tbaa !12
  %add.i.i259.3.ls = add nsw i32 %33, %add.i.i259.2.ls
  %indvars.iv.next126.i260.3.ls = add nsw i64 %indvars.iv125.i255.ls, 4
  %arrayidx.i79.i257.4.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next126.i260.3.ls
  %34 = load i32, i32* %arrayidx.i79.i257.4.ls, align 4, !tbaa !12
  %arrayidx45.i258.4.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next126.i260.3.ls
  store i32 %add.i.i259.3.ls, i32* %arrayidx45.i258.4.ls, align 4, !tbaa !12
  %add.i.i259.4.ls = add nsw i32 %34, %add.i.i259.3.ls
  %indvars.iv.next126.i260.4.ls = add nsw i64 %indvars.iv125.i255.ls, 5
  %arrayidx.i79.i257.5.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next126.i260.4.ls
  %35 = load i32, i32* %arrayidx.i79.i257.5.ls, align 4, !tbaa !12
  %arrayidx45.i258.5.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next126.i260.4.ls
  store i32 %add.i.i259.4.ls, i32* %arrayidx45.i258.5.ls, align 4, !tbaa !12
  %add.i.i259.5.ls = add nsw i32 %35, %add.i.i259.4.ls
  %indvars.iv.next126.i260.5.ls = add nsw i64 %indvars.iv125.i255.ls, 6
  %arrayidx.i79.i257.6.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next126.i260.5.ls
  %36 = load i32, i32* %arrayidx.i79.i257.6.ls, align 4, !tbaa !12
  %arrayidx45.i258.6.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next126.i260.5.ls
  store i32 %add.i.i259.5.ls, i32* %arrayidx45.i258.6.ls, align 4, !tbaa !12
  %add.i.i259.6.ls = add nsw i32 %36, %add.i.i259.5.ls
  %indvars.iv.next126.i260.6.ls = add nsw i64 %indvars.iv125.i255.ls, 7
  %arrayidx.i79.i257.7.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next126.i260.6.ls
  %37 = load i32, i32* %arrayidx.i79.i257.7.ls, align 4, !tbaa !12
  %arrayidx45.i258.7.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next126.i260.6.ls
  store i32 %add.i.i259.6.ls, i32* %arrayidx45.i258.7.ls, align 4, !tbaa !12
  %add.i.i259.7.ls = add nsw i32 %37, %add.i.i259.6.ls
  %indvars.iv.next126.i260.7.ls = add nsw i64 %indvars.iv125.i255.ls, 8
  %exitcond128.i261.7.ls = icmp eq i64 %indvars.iv.next126.i260.7.ls, %25
  br i1 %exitcond128.i261.7.ls, label %pfor.inc104.ls, label %for.body41.i262.ls

if.then20.i237.ls:                                ; preds = %if.else18.i234.ls
  br i1 %cmp107.i207.ls, label %for.body28.lr.ph.i240.ls, label %pfor.inc104.ls

for.body28.lr.ph.i240.ls:                         ; preds = %if.then20.i237.ls
  %sub22.i238.ls = add nsw i32 %.sroa.speculated.ls, -1
  %conv23.i239.ls = sext i32 %sub22.i238.ls to i64
  br label %for.body28.i250.ls

for.body28.i250.ls:                               ; preds = %for.body28.i250.ls, %for.body28.lr.ph.i240.ls
  %i21.0116.i241.ls = phi i64 [ %conv23.i239.ls, %for.body28.lr.ph.i240.ls ], [ %dec34.i248.ls, %for.body28.i250.ls ]
  %r.2115.i242.ls = phi i32 [ %24, %for.body28.lr.ph.i240.ls ], [ %add.i80.i247.ls, %for.body28.i250.ls ]
  %sext.i243.ls = shl i64 %i21.0116.i241.ls, 32
  %idxprom.i82.i244.ls = ashr exact i64 %sext.i243.ls, 32
  %arrayidx.i83.i245.ls = getelementptr inbounds i32, i32* %15, i64 %idxprom.i82.i244.ls
  %38 = load i32, i32* %arrayidx.i83.i245.ls, align 4, !tbaa !12
  %arrayidx31.i246.ls = getelementptr inbounds i32, i32* %17, i64 %i21.0116.i241.ls
  store i32 %r.2115.i242.ls, i32* %arrayidx31.i246.ls, align 4, !tbaa !12
  %add.i80.i247.ls = add nsw i32 %38, %r.2115.i242.ls
  %dec34.i248.ls = add nsw i64 %i21.0116.i241.ls, -1
  %cmp26.i249.ls = icmp sgt i64 %i21.0116.i241.ls, %19
  br i1 %cmp26.i249.ls, label %for.body28.i250.ls, label %pfor.inc104.ls

if.then.i205.ls:                                  ; preds = %pfor.detach72.ls
  br i1 %13, label %if.then3.i208.ls, label %if.else.i223.ls

if.else.i223.ls:                                  ; preds = %if.then.i205.ls
  br i1 %cmp107.i207.ls, label %for.body11.i233.preheader.ls, label %pfor.inc104.ls

for.body11.i233.preheader.ls:                     ; preds = %if.else.i223.ls
  %39 = sub nsw i64 %25, %1
  %40 = add i64 %21, %25
  %xtraiter356.ls = and i64 %39, 7
  %lcmp.mod357.ls = icmp eq i64 %xtraiter356.ls, 0
  br i1 %lcmp.mod357.ls, label %for.body11.i233.prol.loopexit.ls, label %for.body11.i233.prol.ls.preheader

for.body11.i233.prol.ls.preheader:                ; preds = %for.body11.i233.preheader.ls
  br label %for.body11.i233.prol.ls

for.body11.i233.prol.ls:                          ; preds = %for.body11.i233.prol.ls.preheader, %for.body11.i233.prol.ls
  %indvars.iv.i226.prol.ls = phi i64 [ %indvars.iv.next.i231.prol.ls, %for.body11.i233.prol.ls ], [ %19, %for.body11.i233.prol.ls.preheader ]
  %r.1111.i227.prol.ls = phi i32 [ %add.i84.i229.prol.ls, %for.body11.i233.prol.ls ], [ %24, %for.body11.i233.prol.ls.preheader ]
  %prol.iter358.ls = phi i64 [ %prol.iter358.sub.ls, %for.body11.i233.prol.ls ], [ %xtraiter356.ls, %for.body11.i233.prol.ls.preheader ]
  %arrayidx.i87.i228.prol.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.i226.prol.ls
  %41 = load i32, i32* %arrayidx.i87.i228.prol.ls, align 4, !tbaa !12
  %add.i84.i229.prol.ls = add nsw i32 %41, %r.1111.i227.prol.ls
  %arrayidx15.i230.prol.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.i226.prol.ls
  store i32 %add.i84.i229.prol.ls, i32* %arrayidx15.i230.prol.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.prol.ls = add nsw i64 %indvars.iv.i226.prol.ls, 1
  %prol.iter358.sub.ls = add nsw i64 %prol.iter358.ls, -1
  %prol.iter358.cmp.ls = icmp eq i64 %prol.iter358.sub.ls, 0
  br i1 %prol.iter358.cmp.ls, label %for.body11.i233.prol.loopexit.loopexit.ls, label %for.body11.i233.prol.ls, !llvm.loop !125

for.body11.i233.prol.loopexit.ls:                 ; preds = %for.body11.i233.prol.loopexit.loopexit.ls, %for.body11.i233.preheader.ls
  %indvars.iv.i226.unr.ls = phi i64 [ %19, %for.body11.i233.preheader.ls ], [ %54, %for.body11.i233.prol.loopexit.loopexit.ls ]
  %r.1111.i227.unr.ls = phi i32 [ %24, %for.body11.i233.preheader.ls ], [ %add.i84.i229.prol.ls, %for.body11.i233.prol.loopexit.loopexit.ls ]
  %42 = icmp ult i64 %40, 7
  br i1 %42, label %pfor.inc104.ls, label %for.body11.i233.ls.preheader

for.body11.i233.ls.preheader:                     ; preds = %for.body11.i233.prol.loopexit.ls
  br label %for.body11.i233.ls

for.body11.i233.ls:                               ; preds = %for.body11.i233.ls.preheader, %for.body11.i233.ls
  %indvars.iv.i226.ls = phi i64 [ %indvars.iv.next.i231.7.ls, %for.body11.i233.ls ], [ %indvars.iv.i226.unr.ls, %for.body11.i233.ls.preheader ]
  %r.1111.i227.ls = phi i32 [ %add.i84.i229.7.ls, %for.body11.i233.ls ], [ %r.1111.i227.unr.ls, %for.body11.i233.ls.preheader ]
  %arrayidx.i87.i228.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.i226.ls
  %43 = load i32, i32* %arrayidx.i87.i228.ls, align 4, !tbaa !12
  %add.i84.i229.ls = add nsw i32 %43, %r.1111.i227.ls
  %arrayidx15.i230.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.i226.ls
  store i32 %add.i84.i229.ls, i32* %arrayidx15.i230.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.ls = add nsw i64 %indvars.iv.i226.ls, 1
  %arrayidx.i87.i228.1.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next.i231.ls
  %44 = load i32, i32* %arrayidx.i87.i228.1.ls, align 4, !tbaa !12
  %add.i84.i229.1.ls = add nsw i32 %44, %add.i84.i229.ls
  %arrayidx15.i230.1.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i231.ls
  store i32 %add.i84.i229.1.ls, i32* %arrayidx15.i230.1.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.1.ls = add nsw i64 %indvars.iv.i226.ls, 2
  %arrayidx.i87.i228.2.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next.i231.1.ls
  %45 = load i32, i32* %arrayidx.i87.i228.2.ls, align 4, !tbaa !12
  %add.i84.i229.2.ls = add nsw i32 %45, %add.i84.i229.1.ls
  %arrayidx15.i230.2.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i231.1.ls
  store i32 %add.i84.i229.2.ls, i32* %arrayidx15.i230.2.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.2.ls = add nsw i64 %indvars.iv.i226.ls, 3
  %arrayidx.i87.i228.3.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next.i231.2.ls
  %46 = load i32, i32* %arrayidx.i87.i228.3.ls, align 4, !tbaa !12
  %add.i84.i229.3.ls = add nsw i32 %46, %add.i84.i229.2.ls
  %arrayidx15.i230.3.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i231.2.ls
  store i32 %add.i84.i229.3.ls, i32* %arrayidx15.i230.3.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.3.ls = add nsw i64 %indvars.iv.i226.ls, 4
  %arrayidx.i87.i228.4.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next.i231.3.ls
  %47 = load i32, i32* %arrayidx.i87.i228.4.ls, align 4, !tbaa !12
  %add.i84.i229.4.ls = add nsw i32 %47, %add.i84.i229.3.ls
  %arrayidx15.i230.4.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i231.3.ls
  store i32 %add.i84.i229.4.ls, i32* %arrayidx15.i230.4.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.4.ls = add nsw i64 %indvars.iv.i226.ls, 5
  %arrayidx.i87.i228.5.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next.i231.4.ls
  %48 = load i32, i32* %arrayidx.i87.i228.5.ls, align 4, !tbaa !12
  %add.i84.i229.5.ls = add nsw i32 %48, %add.i84.i229.4.ls
  %arrayidx15.i230.5.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i231.4.ls
  store i32 %add.i84.i229.5.ls, i32* %arrayidx15.i230.5.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.5.ls = add nsw i64 %indvars.iv.i226.ls, 6
  %arrayidx.i87.i228.6.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next.i231.5.ls
  %49 = load i32, i32* %arrayidx.i87.i228.6.ls, align 4, !tbaa !12
  %add.i84.i229.6.ls = add nsw i32 %49, %add.i84.i229.5.ls
  %arrayidx15.i230.6.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i231.5.ls
  store i32 %add.i84.i229.6.ls, i32* %arrayidx15.i230.6.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.6.ls = add nsw i64 %indvars.iv.i226.ls, 7
  %arrayidx.i87.i228.7.ls = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.next.i231.6.ls
  %50 = load i32, i32* %arrayidx.i87.i228.7.ls, align 4, !tbaa !12
  %add.i84.i229.7.ls = add nsw i32 %50, %add.i84.i229.6.ls
  %arrayidx15.i230.7.ls = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i231.6.ls
  store i32 %add.i84.i229.7.ls, i32* %arrayidx15.i230.7.ls, align 4, !tbaa !12
  %indvars.iv.next.i231.7.ls = add nsw i64 %indvars.iv.i226.ls, 8
  %exitcond.i232.7.ls = icmp eq i64 %indvars.iv.next.i231.7.ls, %25
  br i1 %exitcond.i232.7.ls, label %pfor.inc104.ls, label %for.body11.i233.ls

if.then3.i208.ls:                                 ; preds = %if.then.i205.ls
  br i1 %cmp107.i207.ls, label %for.body.lr.ph.i211.ls, label %pfor.inc104.ls

for.body.lr.ph.i211.ls:                           ; preds = %if.then3.i208.ls
  %sub.i209.ls = add nsw i32 %.sroa.speculated.ls, -1
  %conv.i210.ls = sext i32 %sub.i209.ls to i64
  br label %for.body.i221.ls

for.body.i221.ls:                                 ; preds = %for.body.i221.ls, %for.body.lr.ph.i211.ls
  %i.0109.i212.ls = phi i64 [ %conv.i210.ls, %for.body.lr.ph.i211.ls ], [ %dec.i219.ls, %for.body.i221.ls ]
  %r.0108.i213.ls = phi i32 [ %24, %for.body.lr.ph.i211.ls ], [ %add.i88.i217.ls, %for.body.i221.ls ]
  %sext103.i214.ls = shl i64 %i.0109.i212.ls, 32
  %idxprom.i.i215.ls = ashr exact i64 %sext103.i214.ls, 32
  %arrayidx.i.i216.ls = getelementptr inbounds i32, i32* %15, i64 %idxprom.i.i215.ls
  %51 = load i32, i32* %arrayidx.i.i216.ls, align 4, !tbaa !12
  %add.i88.i217.ls = add nsw i32 %51, %r.0108.i213.ls
  %arrayidx.i218.ls = getelementptr inbounds i32, i32* %17, i64 %i.0109.i212.ls
  store i32 %add.i88.i217.ls, i32* %arrayidx.i218.ls, align 4, !tbaa !12
  %dec.i219.ls = add nsw i64 %i.0109.i212.ls, -1
  %cmp.i220.ls = icmp sgt i64 %i.0109.i212.ls, %19
  br i1 %cmp.i220.ls, label %for.body.i221.ls, label %pfor.inc104.ls

pfor.inc104.ls:                                   ; preds = %for.body41.i262.ls, %for.body28.i250.ls, %for.body11.i233.ls, %for.body.i221.ls, %if.else36.i252.ls, %for.body41.i262.prol.loopexit.ls, %if.then20.i237.ls, %if.else.i223.ls, %for.body11.i233.prol.loopexit.ls, %if.then3.i208.ls
  %52 = add i64 %indvars.iv.ls, 1
  %53 = icmp ult i64 %52, %.ls1
  br i1 %53, label %pfor.detach72.ls, label %pfor.cond.cleanup71.loopexit.ls.split

for.body11.i233.prol.loopexit.loopexit.ls:        ; preds = %for.body11.i233.prol.ls
  %54 = add i64 %xtraiter356.ls, %19
  br label %for.body11.i233.prol.loopexit.ls

for.body41.i262.prol.loopexit.loopexit.ls:        ; preds = %for.body41.i262.prol.ls
  %55 = add i64 %xtraiter353.ls, %19
  br label %for.body41.i262.prol.loopexit.ls
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_ZN8sequence8maxIndexIfiSt4lessIfENS_4getAIfiEEEET0_S5_S5_T1_T2__pfor.detach.ls({ i32, i32, i64, i64, i32, float*, i32* }* nocapture readonly %.ls, i64 %indvars.iv143.start.ls, i64 %.ls1) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %.ls, i64 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %.ls, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %.ls, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %.ls, i64 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %.ls, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %.ls, i64 0, i32 5
  %11 = load float*, float** %10, align 8
  %12 = getelementptr { i32, i32, i64, i64, i32, float*, i32* }, { i32, i32, i64, i64, i32, float*, i32* }* %.ls, i64 0, i32 6
  %13 = load i32*, i32** %12, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.ls.split:                       ; preds = %invoke.cont26.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %invoke.cont26.ls
  %indvars.iv143.ls = phi i64 [ %48, %invoke.cont26.ls ], [ %indvars.iv143.start.ls, %pfor.detach.lr.ph.ls ]
  %14 = shl nsw i64 %indvars.iv143.ls, 10
  %15 = add nsw i64 %14, %5
  %16 = add nsw i64 %15, 1024
  %cmp.i127.ls = icmp sgt i64 %16, %7
  %17 = trunc i64 %16 to i32
  %.sroa.speculated.ls = select i1 %cmp.i127.ls, i32 %9, i32 %17
  %18 = add nsw i64 %15, 1
  %19 = sext i32 %.sroa.speculated.ls to i64
  %cmp16.i110.ls = icmp slt i64 %18, %19
  br i1 %cmp16.i110.ls, label %for.body.lr.ph.i113.ls, label %invoke.cont26.ls

for.body.lr.ph.i113.ls:                           ; preds = %pfor.detach.ls
  %20 = trunc i64 %indvars.iv143.ls to i32
  %21 = mul i32 %20, -1024
  %arrayidx.i.i112.ls = getelementptr inbounds float, float* %11, i64 %15
  %22 = bitcast float* %arrayidx.i.i112.ls to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !13
  %24 = add i32 %.sroa.speculated.ls, %21
  %25 = add i32 %24, %1
  %26 = add i32 %24, %3
  %xtraiter150.ls = and i32 %25, 3
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %invoke.cont26.loopexit.unr-lcssa.ls, label %for.body.lr.ph.i113.new.ls

for.body.lr.ph.i113.new.ls:                       ; preds = %for.body.lr.ph.i113.ls
  %unroll_iter154.ls = sub i32 %25, %xtraiter150.ls
  br label %for.body.i125.ls

for.body.i125.ls:                                 ; preds = %for.body.i125.ls, %for.body.lr.ph.i113.new.ls
  %indvars.iv.i115.ls = phi i64 [ %18, %for.body.lr.ph.i113.new.ls ], [ %indvars.iv.next.i122.3.ls, %for.body.i125.ls ]
  %k.018.i116.ls = phi i32 [ 0, %for.body.lr.ph.i113.new.ls ], [ %k.1.i121.3.ls, %for.body.i125.ls ]
  %r.sroa.0.017.i117.ls = phi i32 [ %23, %for.body.lr.ph.i113.new.ls ], [ %r.sroa.0.1.i120.3.ls, %for.body.i125.ls ]
  %niter155.ls = phi i32 [ %unroll_iter154.ls, %for.body.lr.ph.i113.new.ls ], [ %niter155.nsub.3.ls, %for.body.i125.ls ]
  %arrayidx.i11.i118.ls = getelementptr inbounds float, float* %11, i64 %indvars.iv.i115.ls
  %28 = load float, float* %arrayidx.i11.i118.ls, align 4, !tbaa !13
  %29 = bitcast float %28 to i32
  %30 = bitcast i32 %r.sroa.0.017.i117.ls to float
  %cmp.i.i119.ls = fcmp olt float %28, %30
  %r.sroa.0.1.i120.ls = select i1 %cmp.i.i119.ls, i32 %29, i32 %r.sroa.0.017.i117.ls
  %31 = trunc i64 %indvars.iv.i115.ls to i32
  %k.1.i121.ls = select i1 %cmp.i.i119.ls, i32 %31, i32 %k.018.i116.ls
  %indvars.iv.next.i122.ls = add nsw i64 %indvars.iv.i115.ls, 1
  %arrayidx.i11.i118.1.ls = getelementptr inbounds float, float* %11, i64 %indvars.iv.next.i122.ls
  %32 = load float, float* %arrayidx.i11.i118.1.ls, align 4, !tbaa !13
  %33 = bitcast float %32 to i32
  %34 = bitcast i32 %r.sroa.0.1.i120.ls to float
  %cmp.i.i119.1.ls = fcmp olt float %32, %34
  %r.sroa.0.1.i120.1.ls = select i1 %cmp.i.i119.1.ls, i32 %33, i32 %r.sroa.0.1.i120.ls
  %35 = trunc i64 %indvars.iv.next.i122.ls to i32
  %k.1.i121.1.ls = select i1 %cmp.i.i119.1.ls, i32 %35, i32 %k.1.i121.ls
  %indvars.iv.next.i122.1.ls = add nsw i64 %indvars.iv.i115.ls, 2
  %arrayidx.i11.i118.2.ls = getelementptr inbounds float, float* %11, i64 %indvars.iv.next.i122.1.ls
  %36 = load float, float* %arrayidx.i11.i118.2.ls, align 4, !tbaa !13
  %37 = bitcast float %36 to i32
  %38 = bitcast i32 %r.sroa.0.1.i120.1.ls to float
  %cmp.i.i119.2.ls = fcmp olt float %36, %38
  %r.sroa.0.1.i120.2.ls = select i1 %cmp.i.i119.2.ls, i32 %37, i32 %r.sroa.0.1.i120.1.ls
  %39 = trunc i64 %indvars.iv.next.i122.1.ls to i32
  %k.1.i121.2.ls = select i1 %cmp.i.i119.2.ls, i32 %39, i32 %k.1.i121.1.ls
  %indvars.iv.next.i122.2.ls = add nsw i64 %indvars.iv.i115.ls, 3
  %arrayidx.i11.i118.3.ls = getelementptr inbounds float, float* %11, i64 %indvars.iv.next.i122.2.ls
  %40 = load float, float* %arrayidx.i11.i118.3.ls, align 4, !tbaa !13
  %41 = bitcast float %40 to i32
  %42 = bitcast i32 %r.sroa.0.1.i120.2.ls to float
  %cmp.i.i119.3.ls = fcmp olt float %40, %42
  %r.sroa.0.1.i120.3.ls = select i1 %cmp.i.i119.3.ls, i32 %41, i32 %r.sroa.0.1.i120.2.ls
  %43 = trunc i64 %indvars.iv.next.i122.2.ls to i32
  %k.1.i121.3.ls = select i1 %cmp.i.i119.3.ls, i32 %43, i32 %k.1.i121.2.ls
  %indvars.iv.next.i122.3.ls = add nsw i64 %indvars.iv.i115.ls, 4
  %niter155.nsub.3.ls = add i32 %niter155.ls, -4
  %niter155.ncmp.3.ls = icmp eq i32 %niter155.nsub.3.ls, 0
  br i1 %niter155.ncmp.3.ls, label %invoke.cont26.loopexit.unr-lcssa.ls, label %for.body.i125.ls

invoke.cont26.loopexit.unr-lcssa.ls:              ; preds = %for.body.i125.ls, %for.body.lr.ph.i113.ls
  %k.1.i121.lcssa.ph.ls = phi i32 [ undef, %for.body.lr.ph.i113.ls ], [ %k.1.i121.3.ls, %for.body.i125.ls ]
  %indvars.iv.i115.unr.ls = phi i64 [ %18, %for.body.lr.ph.i113.ls ], [ %indvars.iv.next.i122.3.ls, %for.body.i125.ls ]
  %k.018.i116.unr.ls = phi i32 [ 0, %for.body.lr.ph.i113.ls ], [ %k.1.i121.3.ls, %for.body.i125.ls ]
  %r.sroa.0.017.i117.unr.ls = phi i32 [ %23, %for.body.lr.ph.i113.ls ], [ %r.sroa.0.1.i120.3.ls, %for.body.i125.ls ]
  %lcmp.mod152.ls = icmp eq i32 %xtraiter150.ls, 0
  br i1 %lcmp.mod152.ls, label %invoke.cont26.ls, label %for.body.i125.epil.ls.preheader

for.body.i125.epil.ls.preheader:                  ; preds = %invoke.cont26.loopexit.unr-lcssa.ls
  br label %for.body.i125.epil.ls

for.body.i125.epil.ls:                            ; preds = %for.body.i125.epil.ls.preheader, %for.body.i125.epil.ls
  %indvars.iv.i115.epil.ls = phi i64 [ %indvars.iv.next.i122.epil.ls, %for.body.i125.epil.ls ], [ %indvars.iv.i115.unr.ls, %for.body.i125.epil.ls.preheader ]
  %k.018.i116.epil.ls = phi i32 [ %k.1.i121.epil.ls, %for.body.i125.epil.ls ], [ %k.018.i116.unr.ls, %for.body.i125.epil.ls.preheader ]
  %r.sroa.0.017.i117.epil.ls = phi i32 [ %r.sroa.0.1.i120.epil.ls, %for.body.i125.epil.ls ], [ %r.sroa.0.017.i117.unr.ls, %for.body.i125.epil.ls.preheader ]
  %epil.iter151.ls = phi i32 [ %epil.iter151.sub.ls, %for.body.i125.epil.ls ], [ %xtraiter150.ls, %for.body.i125.epil.ls.preheader ]
  %arrayidx.i11.i118.epil.ls = getelementptr inbounds float, float* %11, i64 %indvars.iv.i115.epil.ls
  %44 = load float, float* %arrayidx.i11.i118.epil.ls, align 4, !tbaa !13
  %45 = bitcast float %44 to i32
  %46 = bitcast i32 %r.sroa.0.017.i117.epil.ls to float
  %cmp.i.i119.epil.ls = fcmp olt float %44, %46
  %r.sroa.0.1.i120.epil.ls = select i1 %cmp.i.i119.epil.ls, i32 %45, i32 %r.sroa.0.017.i117.epil.ls
  %47 = trunc i64 %indvars.iv.i115.epil.ls to i32
  %k.1.i121.epil.ls = select i1 %cmp.i.i119.epil.ls, i32 %47, i32 %k.018.i116.epil.ls
  %indvars.iv.next.i122.epil.ls = add nsw i64 %indvars.iv.i115.epil.ls, 1
  %epil.iter151.sub.ls = add nsw i32 %epil.iter151.ls, -1
  %epil.iter151.cmp.ls = icmp eq i32 %epil.iter151.sub.ls, 0
  br i1 %epil.iter151.cmp.ls, label %invoke.cont26.ls, label %for.body.i125.epil.ls, !llvm.loop !126

invoke.cont26.ls:                                 ; preds = %for.body.i125.epil.ls, %invoke.cont26.loopexit.unr-lcssa.ls, %pfor.detach.ls
  %k.0.lcssa.i114.ls = phi i32 [ 0, %pfor.detach.ls ], [ %k.1.i121.lcssa.ph.ls, %invoke.cont26.loopexit.unr-lcssa.ls ], [ %k.1.i121.epil.ls, %for.body.i125.epil.ls ]
  %arrayidx.ls = getelementptr inbounds i32, i32* %13, i64 %indvars.iv143.ls
  store i32 %k.0.lcssa.i114.ls, i32* %arrayidx.ls, align 4, !tbaa !12
  %48 = add i64 %indvars.iv143.ls, 1
  %49 = icmp ult i64 %48, %.ls1
  br i1 %49, label %pfor.detach.ls, label %pfor.cond.cleanup.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1__pfor.detach.ls({ i64, i64, i32, i8*, i32* }* nocapture readonly %.ls, i64 %indvars.iv221.start.ls, i64 %.ls1) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %.ls, i64 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %.ls, i64 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %.ls, i64 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %.ls, i64 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr { i64, i64, i32, i8*, i32* }, { i64, i64, i32, i8*, i32* }* %.ls, i64 0, i32 4
  %9 = load i32*, i32** %8, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.ls.split:                       ; preds = %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls
  %indvars.iv221.ls = phi i64 [ %151, %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls ], [ %indvars.iv221.start.ls, %pfor.detach.lr.ph.ls ]
  %10 = shl nsw i64 %indvars.iv221.ls, 11
  %11 = add nsw i64 %10, %1
  %12 = add nsw i64 %11, 2048
  %cmp.i.ls = icmp sgt i64 %12, %3
  %13 = trunc i64 %12 to i32
  %.sroa.speculated202.ls = select i1 %cmp.i.ls, i32 %5, i32 %13
  %add.ptr.ls = getelementptr inbounds i8, i8* %7, i64 %11
  %14 = trunc i64 %11 to i32
  %sub21.ls = sub nsw i32 %.sroa.speculated202.ls, %14
  %cmp.i194.ls = icmp sgt i32 %sub21.ls, 127
  %and.i.ls = and i32 %sub21.ls, 511
  %cmp1.i.ls = icmp eq i32 %and.i.ls, 0
  %or.cond.i.ls = and i1 %cmp.i194.ls, %cmp1.i.ls
  br i1 %or.cond.i.ls, label %land.lhs.true2.i.ls, label %if.else.i.ls

if.else.i.ls:                                     ; preds = %pfor.detach.ls
  %cmp2665.i.ls = icmp sgt i32 %sub21.ls, 0
  br i1 %cmp2665.i.ls, label %for.body28.lr.ph.i.ls, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls

land.lhs.true2.i.ls:                              ; preds = %pfor.detach.ls
  %15 = ptrtoint i8* %add.ptr.ls to i64
  %and3.i.ls = and i64 %15, 3
  %cmp4.i.ls = icmp eq i64 %and3.i.ls, 0
  br i1 %cmp4.i.ls, label %if.then.i.ls, label %for.body28.lr.ph.i.ls.thread

for.body28.lr.ph.i.ls.thread:                     ; preds = %land.lhs.true2.i.ls
  %wide.trip.count.i.ls10 = zext i32 %sub21.ls to i64
  br label %vector.ph247.ls

for.body28.lr.ph.i.ls:                            ; preds = %if.else.i.ls
  %wide.trip.count.i.ls = zext i32 %sub21.ls to i64
  %min.iters.check.ls = icmp ult i32 %sub21.ls, 32
  br i1 %min.iters.check.ls, label %for.body28.i.preheader.ls, label %vector.ph247.ls

vector.ph247.ls:                                  ; preds = %for.body28.lr.ph.i.ls.thread, %for.body28.lr.ph.i.ls
  %wide.trip.count.i.ls12 = phi i64 [ %wide.trip.count.i.ls10, %for.body28.lr.ph.i.ls.thread ], [ %wide.trip.count.i.ls, %for.body28.lr.ph.i.ls ]
  %n.vec.ls = and i64 %wide.trip.count.i.ls12, 4294967264
  %16 = add nsw i64 %n.vec.ls, -32
  %17 = lshr exact i64 %16, 5
  %18 = add nuw nsw i64 %17, 1
  %xtraiter.ls = and i64 %18, 3
  %19 = icmp ult i64 %16, 96
  br i1 %19, label %middle.block245.unr-lcssa.ls, label %vector.ph247.new.ls

vector.ph247.new.ls:                              ; preds = %vector.ph247.ls
  %unroll_iter.ls = sub nsw i64 %18, %xtraiter.ls
  br label %vector.body244.ls

vector.body244.ls:                                ; preds = %vector.body244.ls, %vector.ph247.new.ls
  %index248.ls = phi i64 [ 0, %vector.ph247.new.ls ], [ %index.next249.3.ls, %vector.body244.ls ]
  %vec.phi258.ls = phi <8 x i32> [ zeroinitializer, %vector.ph247.new.ls ], [ %80, %vector.body244.ls ]
  %vec.phi259.ls = phi <8 x i32> [ zeroinitializer, %vector.ph247.new.ls ], [ %81, %vector.body244.ls ]
  %vec.phi260.ls = phi <8 x i32> [ zeroinitializer, %vector.ph247.new.ls ], [ %82, %vector.body244.ls ]
  %vec.phi261.ls = phi <8 x i32> [ zeroinitializer, %vector.ph247.new.ls ], [ %83, %vector.body244.ls ]
  %niter.ls = phi i64 [ %unroll_iter.ls, %vector.ph247.new.ls ], [ %niter.nsub.3.ls, %vector.body244.ls ]
  %20 = getelementptr inbounds i8, i8* %add.ptr.ls, i64 %index248.ls
  %21 = bitcast i8* %20 to <8 x i8>*
  %wide.load262.ls = load <8 x i8>, <8 x i8>* %21, align 1, !tbaa !82
  %22 = getelementptr i8, i8* %20, i64 8
  %23 = bitcast i8* %22 to <8 x i8>*
  %wide.load263.ls = load <8 x i8>, <8 x i8>* %23, align 1, !tbaa !82
  %24 = getelementptr i8, i8* %20, i64 16
  %25 = bitcast i8* %24 to <8 x i8>*
  %wide.load264.ls = load <8 x i8>, <8 x i8>* %25, align 1, !tbaa !82
  %26 = getelementptr i8, i8* %20, i64 24
  %27 = bitcast i8* %26 to <8 x i8>*
  %wide.load265.ls = load <8 x i8>, <8 x i8>* %27, align 1, !tbaa !82
  %28 = zext <8 x i8> %wide.load262.ls to <8 x i32>
  %29 = zext <8 x i8> %wide.load263.ls to <8 x i32>
  %30 = zext <8 x i8> %wide.load264.ls to <8 x i32>
  %31 = zext <8 x i8> %wide.load265.ls to <8 x i32>
  %32 = add nuw nsw <8 x i32> %vec.phi258.ls, %28
  %33 = add nuw nsw <8 x i32> %vec.phi259.ls, %29
  %34 = add nuw nsw <8 x i32> %vec.phi260.ls, %30
  %35 = add nuw nsw <8 x i32> %vec.phi261.ls, %31
  %index.next249.ls = or i64 %index248.ls, 32
  %36 = getelementptr inbounds i8, i8* %add.ptr.ls, i64 %index.next249.ls
  %37 = bitcast i8* %36 to <8 x i8>*
  %wide.load262.1.ls = load <8 x i8>, <8 x i8>* %37, align 1, !tbaa !82
  %38 = getelementptr i8, i8* %36, i64 8
  %39 = bitcast i8* %38 to <8 x i8>*
  %wide.load263.1.ls = load <8 x i8>, <8 x i8>* %39, align 1, !tbaa !82
  %40 = getelementptr i8, i8* %36, i64 16
  %41 = bitcast i8* %40 to <8 x i8>*
  %wide.load264.1.ls = load <8 x i8>, <8 x i8>* %41, align 1, !tbaa !82
  %42 = getelementptr i8, i8* %36, i64 24
  %43 = bitcast i8* %42 to <8 x i8>*
  %wide.load265.1.ls = load <8 x i8>, <8 x i8>* %43, align 1, !tbaa !82
  %44 = zext <8 x i8> %wide.load262.1.ls to <8 x i32>
  %45 = zext <8 x i8> %wide.load263.1.ls to <8 x i32>
  %46 = zext <8 x i8> %wide.load264.1.ls to <8 x i32>
  %47 = zext <8 x i8> %wide.load265.1.ls to <8 x i32>
  %48 = add nuw nsw <8 x i32> %32, %44
  %49 = add nuw nsw <8 x i32> %33, %45
  %50 = add nuw nsw <8 x i32> %34, %46
  %51 = add nuw nsw <8 x i32> %35, %47
  %index.next249.1.ls = or i64 %index248.ls, 64
  %52 = getelementptr inbounds i8, i8* %add.ptr.ls, i64 %index.next249.1.ls
  %53 = bitcast i8* %52 to <8 x i8>*
  %wide.load262.2.ls = load <8 x i8>, <8 x i8>* %53, align 1, !tbaa !82
  %54 = getelementptr i8, i8* %52, i64 8
  %55 = bitcast i8* %54 to <8 x i8>*
  %wide.load263.2.ls = load <8 x i8>, <8 x i8>* %55, align 1, !tbaa !82
  %56 = getelementptr i8, i8* %52, i64 16
  %57 = bitcast i8* %56 to <8 x i8>*
  %wide.load264.2.ls = load <8 x i8>, <8 x i8>* %57, align 1, !tbaa !82
  %58 = getelementptr i8, i8* %52, i64 24
  %59 = bitcast i8* %58 to <8 x i8>*
  %wide.load265.2.ls = load <8 x i8>, <8 x i8>* %59, align 1, !tbaa !82
  %60 = zext <8 x i8> %wide.load262.2.ls to <8 x i32>
  %61 = zext <8 x i8> %wide.load263.2.ls to <8 x i32>
  %62 = zext <8 x i8> %wide.load264.2.ls to <8 x i32>
  %63 = zext <8 x i8> %wide.load265.2.ls to <8 x i32>
  %64 = add nuw nsw <8 x i32> %48, %60
  %65 = add nuw nsw <8 x i32> %49, %61
  %66 = add nuw nsw <8 x i32> %50, %62
  %67 = add nuw nsw <8 x i32> %51, %63
  %index.next249.2.ls = or i64 %index248.ls, 96
  %68 = getelementptr inbounds i8, i8* %add.ptr.ls, i64 %index.next249.2.ls
  %69 = bitcast i8* %68 to <8 x i8>*
  %wide.load262.3.ls = load <8 x i8>, <8 x i8>* %69, align 1, !tbaa !82
  %70 = getelementptr i8, i8* %68, i64 8
  %71 = bitcast i8* %70 to <8 x i8>*
  %wide.load263.3.ls = load <8 x i8>, <8 x i8>* %71, align 1, !tbaa !82
  %72 = getelementptr i8, i8* %68, i64 16
  %73 = bitcast i8* %72 to <8 x i8>*
  %wide.load264.3.ls = load <8 x i8>, <8 x i8>* %73, align 1, !tbaa !82
  %74 = getelementptr i8, i8* %68, i64 24
  %75 = bitcast i8* %74 to <8 x i8>*
  %wide.load265.3.ls = load <8 x i8>, <8 x i8>* %75, align 1, !tbaa !82
  %76 = zext <8 x i8> %wide.load262.3.ls to <8 x i32>
  %77 = zext <8 x i8> %wide.load263.3.ls to <8 x i32>
  %78 = zext <8 x i8> %wide.load264.3.ls to <8 x i32>
  %79 = zext <8 x i8> %wide.load265.3.ls to <8 x i32>
  %80 = add nuw nsw <8 x i32> %64, %76
  %81 = add nuw nsw <8 x i32> %65, %77
  %82 = add nuw nsw <8 x i32> %66, %78
  %83 = add nuw nsw <8 x i32> %67, %79
  %index.next249.3.ls = add i64 %index248.ls, 128
  %niter.nsub.3.ls = add i64 %niter.ls, -4
  %niter.ncmp.3.ls = icmp eq i64 %niter.nsub.3.ls, 0
  br i1 %niter.ncmp.3.ls, label %middle.block245.unr-lcssa.ls, label %vector.body244.ls, !llvm.loop !127

middle.block245.unr-lcssa.ls:                     ; preds = %vector.body244.ls, %vector.ph247.ls
  %.lcssa279.ph.ls = phi <8 x i32> [ undef, %vector.ph247.ls ], [ %80, %vector.body244.ls ]
  %.lcssa278.ph.ls = phi <8 x i32> [ undef, %vector.ph247.ls ], [ %81, %vector.body244.ls ]
  %.lcssa277.ph.ls = phi <8 x i32> [ undef, %vector.ph247.ls ], [ %82, %vector.body244.ls ]
  %.lcssa.ph.ls = phi <8 x i32> [ undef, %vector.ph247.ls ], [ %83, %vector.body244.ls ]
  %index248.unr.ls = phi i64 [ 0, %vector.ph247.ls ], [ %index.next249.3.ls, %vector.body244.ls ]
  %vec.phi258.unr.ls = phi <8 x i32> [ zeroinitializer, %vector.ph247.ls ], [ %80, %vector.body244.ls ]
  %vec.phi259.unr.ls = phi <8 x i32> [ zeroinitializer, %vector.ph247.ls ], [ %81, %vector.body244.ls ]
  %vec.phi260.unr.ls = phi <8 x i32> [ zeroinitializer, %vector.ph247.ls ], [ %82, %vector.body244.ls ]
  %vec.phi261.unr.ls = phi <8 x i32> [ zeroinitializer, %vector.ph247.ls ], [ %83, %vector.body244.ls ]
  %lcmp.mod.ls = icmp eq i64 %xtraiter.ls, 0
  br i1 %lcmp.mod.ls, label %middle.block245.ls, label %vector.body244.epil.ls.preheader

vector.body244.epil.ls.preheader:                 ; preds = %middle.block245.unr-lcssa.ls
  br label %vector.body244.epil.ls

vector.body244.epil.ls:                           ; preds = %vector.body244.epil.ls.preheader, %vector.body244.epil.ls
  %index248.epil.ls = phi i64 [ %index.next249.epil.ls, %vector.body244.epil.ls ], [ %index248.unr.ls, %vector.body244.epil.ls.preheader ]
  %vec.phi258.epil.ls = phi <8 x i32> [ %96, %vector.body244.epil.ls ], [ %vec.phi258.unr.ls, %vector.body244.epil.ls.preheader ]
  %vec.phi259.epil.ls = phi <8 x i32> [ %97, %vector.body244.epil.ls ], [ %vec.phi259.unr.ls, %vector.body244.epil.ls.preheader ]
  %vec.phi260.epil.ls = phi <8 x i32> [ %98, %vector.body244.epil.ls ], [ %vec.phi260.unr.ls, %vector.body244.epil.ls.preheader ]
  %vec.phi261.epil.ls = phi <8 x i32> [ %99, %vector.body244.epil.ls ], [ %vec.phi261.unr.ls, %vector.body244.epil.ls.preheader ]
  %epil.iter.ls = phi i64 [ %epil.iter.sub.ls, %vector.body244.epil.ls ], [ %xtraiter.ls, %vector.body244.epil.ls.preheader ]
  %84 = getelementptr inbounds i8, i8* %add.ptr.ls, i64 %index248.epil.ls
  %85 = bitcast i8* %84 to <8 x i8>*
  %wide.load262.epil.ls = load <8 x i8>, <8 x i8>* %85, align 1, !tbaa !82
  %86 = getelementptr i8, i8* %84, i64 8
  %87 = bitcast i8* %86 to <8 x i8>*
  %wide.load263.epil.ls = load <8 x i8>, <8 x i8>* %87, align 1, !tbaa !82
  %88 = getelementptr i8, i8* %84, i64 16
  %89 = bitcast i8* %88 to <8 x i8>*
  %wide.load264.epil.ls = load <8 x i8>, <8 x i8>* %89, align 1, !tbaa !82
  %90 = getelementptr i8, i8* %84, i64 24
  %91 = bitcast i8* %90 to <8 x i8>*
  %wide.load265.epil.ls = load <8 x i8>, <8 x i8>* %91, align 1, !tbaa !82
  %92 = zext <8 x i8> %wide.load262.epil.ls to <8 x i32>
  %93 = zext <8 x i8> %wide.load263.epil.ls to <8 x i32>
  %94 = zext <8 x i8> %wide.load264.epil.ls to <8 x i32>
  %95 = zext <8 x i8> %wide.load265.epil.ls to <8 x i32>
  %96 = add nuw nsw <8 x i32> %vec.phi258.epil.ls, %92
  %97 = add nuw nsw <8 x i32> %vec.phi259.epil.ls, %93
  %98 = add nuw nsw <8 x i32> %vec.phi260.epil.ls, %94
  %99 = add nuw nsw <8 x i32> %vec.phi261.epil.ls, %95
  %index.next249.epil.ls = add i64 %index248.epil.ls, 32
  %epil.iter.sub.ls = add nsw i64 %epil.iter.ls, -1
  %epil.iter.cmp.ls = icmp eq i64 %epil.iter.sub.ls, 0
  br i1 %epil.iter.cmp.ls, label %middle.block245.ls, label %vector.body244.epil.ls, !llvm.loop !128

middle.block245.ls:                               ; preds = %vector.body244.epil.ls, %middle.block245.unr-lcssa.ls
  %.lcssa279.ls = phi <8 x i32> [ %.lcssa279.ph.ls, %middle.block245.unr-lcssa.ls ], [ %96, %vector.body244.epil.ls ]
  %.lcssa278.ls = phi <8 x i32> [ %.lcssa278.ph.ls, %middle.block245.unr-lcssa.ls ], [ %97, %vector.body244.epil.ls ]
  %.lcssa277.ls = phi <8 x i32> [ %.lcssa277.ph.ls, %middle.block245.unr-lcssa.ls ], [ %98, %vector.body244.epil.ls ]
  %.lcssa.ls = phi <8 x i32> [ %.lcssa.ph.ls, %middle.block245.unr-lcssa.ls ], [ %99, %vector.body244.epil.ls ]
  %bin.rdx266.ls = add nuw <8 x i32> %.lcssa278.ls, %.lcssa279.ls
  %bin.rdx267.ls = add <8 x i32> %bin.rdx266.ls, %.lcssa277.ls
  %bin.rdx268.ls = add <8 x i32> %bin.rdx267.ls, %.lcssa.ls
  %rdx.shuf269.ls = shufflevector <8 x i32> %bin.rdx268.ls, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx270.ls = add <8 x i32> %rdx.shuf269.ls, %bin.rdx268.ls
  %rdx.shuf271.ls = shufflevector <8 x i32> %bin.rdx270.ls, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx272.ls = add <8 x i32> %rdx.shuf271.ls, %bin.rdx270.ls
  %rdx.shuf273.ls = shufflevector <8 x i32> %bin.rdx272.ls, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx274.ls = add <8 x i32> %rdx.shuf273.ls, %bin.rdx272.ls
  %100 = extractelement <8 x i32> %bin.rdx274.ls, i32 0
  %cmp.n251.ls = icmp eq i64 %n.vec.ls, %wide.trip.count.i.ls12
  br i1 %cmp.n251.ls, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls, label %for.body28.i.preheader.ls

for.body28.i.preheader.ls:                        ; preds = %middle.block245.ls, %for.body28.lr.ph.i.ls
  %wide.trip.count.i.ls13 = phi i64 [ %wide.trip.count.i.ls, %for.body28.lr.ph.i.ls ], [ %wide.trip.count.i.ls12, %middle.block245.ls ]
  %indvars.iv70.i.ph.ls = phi i64 [ 0, %for.body28.lr.ph.i.ls ], [ %n.vec.ls, %middle.block245.ls ]
  %r.166.i.ph.ls = phi i32 [ 0, %for.body28.lr.ph.i.ls ], [ %100, %middle.block245.ls ]
  br label %for.body28.i.ls

for.body28.i.ls:                                  ; preds = %for.body28.i.ls, %for.body28.i.preheader.ls
  %indvars.iv70.i.ls = phi i64 [ %indvars.iv.next71.i.ls, %for.body28.i.ls ], [ %indvars.iv70.i.ph.ls, %for.body28.i.preheader.ls ]
  %r.166.i.ls = phi i32 [ %add31.i.ls, %for.body28.i.ls ], [ %r.166.i.ph.ls, %for.body28.i.preheader.ls ]
  %arrayidx30.i.ls = getelementptr inbounds i8, i8* %add.ptr.ls, i64 %indvars.iv70.i.ls
  %101 = load i8, i8* %arrayidx30.i.ls, align 1, !tbaa !82, !range !55
  %102 = zext i8 %101 to i32
  %add31.i.ls = add nuw nsw i32 %r.166.i.ls, %102
  %indvars.iv.next71.i.ls = add nuw nsw i64 %indvars.iv70.i.ls, 1
  %exitcond72.i.ls = icmp eq i64 %indvars.iv.next71.i.ls, %wide.trip.count.i.ls13
  br i1 %exitcond72.i.ls, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls, label %for.body28.i.ls, !llvm.loop !129

if.then.i.ls:                                     ; preds = %land.lhs.true2.i.ls
  %shr74.i.ls = lshr i32 %sub21.ls, 9
  %cmp561.i.ls = icmp sgt i32 %sub21.ls, 511
  br i1 %cmp561.i.ls, label %for.body.lr.ph.i.ls, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls

for.body.lr.ph.i.ls:                              ; preds = %if.then.i.ls
  %103 = bitcast i8* %add.ptr.ls to i32*
  br label %vector.ph.ls

vector.ph.ls:                                     ; preds = %vector.ph.ls, %for.body.lr.ph.i.ls
  %k.064.i.ls = phi i32 [ 0, %for.body.lr.ph.i.ls ], [ %inc22.i.ls, %vector.ph.ls ]
  %IFl.063.i.ls = phi i32* [ %103, %for.body.lr.ph.i.ls ], [ %add.ptr.i.ls, %vector.ph.ls ]
  %r.062.i.ls = phi i32 [ 0, %for.body.lr.ph.i.ls ], [ %add20.i.ls, %vector.ph.ls ]
  %104 = bitcast i32* %IFl.063.i.ls to <8 x i32>*
  %wide.load.ls = load <8 x i32>, <8 x i32>* %104, align 4, !tbaa !12
  %105 = getelementptr i32, i32* %IFl.063.i.ls, i64 8
  %106 = bitcast i32* %105 to <8 x i32>*
  %wide.load234.ls = load <8 x i32>, <8 x i32>* %106, align 4, !tbaa !12
  %107 = getelementptr i32, i32* %IFl.063.i.ls, i64 16
  %108 = bitcast i32* %107 to <8 x i32>*
  %wide.load235.ls = load <8 x i32>, <8 x i32>* %108, align 4, !tbaa !12
  %109 = getelementptr i32, i32* %IFl.063.i.ls, i64 24
  %110 = bitcast i32* %109 to <8 x i32>*
  %wide.load236.ls = load <8 x i32>, <8 x i32>* %110, align 4, !tbaa !12
  %111 = getelementptr inbounds i32, i32* %IFl.063.i.ls, i64 32
  %112 = bitcast i32* %111 to <8 x i32>*
  %wide.load.1.ls = load <8 x i32>, <8 x i32>* %112, align 4, !tbaa !12
  %113 = getelementptr i32, i32* %IFl.063.i.ls, i64 40
  %114 = bitcast i32* %113 to <8 x i32>*
  %wide.load234.1.ls = load <8 x i32>, <8 x i32>* %114, align 4, !tbaa !12
  %115 = getelementptr i32, i32* %IFl.063.i.ls, i64 48
  %116 = bitcast i32* %115 to <8 x i32>*
  %wide.load235.1.ls = load <8 x i32>, <8 x i32>* %116, align 4, !tbaa !12
  %117 = getelementptr i32, i32* %IFl.063.i.ls, i64 56
  %118 = bitcast i32* %117 to <8 x i32>*
  %wide.load236.1.ls = load <8 x i32>, <8 x i32>* %118, align 4, !tbaa !12
  %119 = getelementptr inbounds i32, i32* %IFl.063.i.ls, i64 64
  %120 = bitcast i32* %119 to <8 x i32>*
  %wide.load.2.ls = load <8 x i32>, <8 x i32>* %120, align 4, !tbaa !12
  %121 = getelementptr i32, i32* %IFl.063.i.ls, i64 72
  %122 = bitcast i32* %121 to <8 x i32>*
  %wide.load234.2.ls = load <8 x i32>, <8 x i32>* %122, align 4, !tbaa !12
  %123 = getelementptr i32, i32* %IFl.063.i.ls, i64 80
  %124 = bitcast i32* %123 to <8 x i32>*
  %wide.load235.2.ls = load <8 x i32>, <8 x i32>* %124, align 4, !tbaa !12
  %125 = getelementptr i32, i32* %IFl.063.i.ls, i64 88
  %126 = bitcast i32* %125 to <8 x i32>*
  %wide.load236.2.ls = load <8 x i32>, <8 x i32>* %126, align 4, !tbaa !12
  %127 = getelementptr inbounds i32, i32* %IFl.063.i.ls, i64 96
  %128 = bitcast i32* %127 to <8 x i32>*
  %wide.load.3.ls = load <8 x i32>, <8 x i32>* %128, align 4, !tbaa !12
  %129 = getelementptr i32, i32* %IFl.063.i.ls, i64 104
  %130 = bitcast i32* %129 to <8 x i32>*
  %wide.load234.3.ls = load <8 x i32>, <8 x i32>* %130, align 4, !tbaa !12
  %131 = getelementptr i32, i32* %IFl.063.i.ls, i64 112
  %132 = bitcast i32* %131 to <8 x i32>*
  %wide.load235.3.ls = load <8 x i32>, <8 x i32>* %132, align 4, !tbaa !12
  %133 = getelementptr i32, i32* %IFl.063.i.ls, i64 120
  %134 = bitcast i32* %133 to <8 x i32>*
  %wide.load236.3.ls = load <8 x i32>, <8 x i32>* %134, align 4, !tbaa !12
  %135 = add <8 x i32> %wide.load234.ls, %wide.load.ls
  %136 = add <8 x i32> %135, %wide.load235.ls
  %137 = add <8 x i32> %136, %wide.load236.ls
  %138 = add <8 x i32> %137, %wide.load.1.ls
  %139 = add <8 x i32> %138, %wide.load234.1.ls
  %140 = add <8 x i32> %139, %wide.load235.1.ls
  %bin.rdx.ls = add <8 x i32> %140, %wide.load236.1.ls
  %141 = add <8 x i32> %bin.rdx.ls, %wide.load.2.ls
  %142 = add <8 x i32> %141, %wide.load234.2.ls
  %143 = add <8 x i32> %142, %wide.load235.2.ls
  %bin.rdx237.ls = add <8 x i32> %143, %wide.load236.2.ls
  %144 = add <8 x i32> %bin.rdx237.ls, %wide.load.3.ls
  %145 = add <8 x i32> %144, %wide.load234.3.ls
  %146 = add <8 x i32> %145, %wide.load235.3.ls
  %bin.rdx238.ls = add <8 x i32> %146, %wide.load236.3.ls
  %rdx.shuf.ls = shufflevector <8 x i32> %bin.rdx238.ls, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx239.ls = add <8 x i32> %rdx.shuf.ls, %bin.rdx238.ls
  %rdx.shuf240.ls = shufflevector <8 x i32> %bin.rdx239.ls, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx241.ls = add <8 x i32> %rdx.shuf240.ls, %bin.rdx239.ls
  %rdx.shuf242.ls = shufflevector <8 x i32> %bin.rdx241.ls, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx243.ls = add <8 x i32> %rdx.shuf242.ls, %bin.rdx241.ls
  %147 = extractelement <8 x i32> %bin.rdx243.ls, i32 0
  %and10.i.ls = and i32 %147, 255
  %148 = lshr i32 %147, 8
  %and12.i.ls = and i32 %148, 255
  %149 = lshr i32 %147, 16
  %and15.i.ls = and i32 %149, 255
  %150 = lshr i32 %147, 24
  %add13.i.ls = add i32 %and10.i.ls, %r.062.i.ls
  %add16.i.ls = add i32 %add13.i.ls, %150
  %add19.i.ls = add i32 %add16.i.ls, %and12.i.ls
  %add20.i.ls = add i32 %add19.i.ls, %and15.i.ls
  %add.ptr.i.ls = getelementptr inbounds i32, i32* %IFl.063.i.ls, i64 128
  %inc22.i.ls = add nuw nsw i32 %k.064.i.ls, 1
  %cmp5.i.ls = icmp ult i32 %inc22.i.ls, %shr74.i.ls
  br i1 %cmp5.i.ls, label %vector.ph.ls, label %_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls

_ZN8sequence14sumFlagsSerialIiEET_PbS1_.exit.ls:  ; preds = %for.body28.i.ls, %vector.ph.ls, %if.then.i.ls, %middle.block245.ls, %if.else.i.ls
  %r.2.i.ls = phi i32 [ 0, %if.then.i.ls ], [ 0, %if.else.i.ls ], [ %100, %middle.block245.ls ], [ %add20.i.ls, %vector.ph.ls ], [ %add31.i.ls, %for.body28.i.ls ]
  %arrayidx.ls = getelementptr inbounds i32, i32* %9, i64 %indvars.iv221.ls
  store i32 %r.2.i.ls, i32* %arrayidx.ls, align 4, !tbaa !12
  %151 = add i64 %indvars.iv221.ls, 1
  %152 = icmp ult i64 %151, %.ls1
  br i1 %152, label %pfor.detach.ls, label %pfor.cond.cleanup.ls.split
}

; Function Attrs: uwtable
define internal void @_ZN8sequence4packI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1__pfor.detach66.ls({ i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* nocapture readonly %.ls, i64 %indvars.iv.start.ls, i64 %.ls1) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach66.lr.ph.ls:
  %0 = getelementptr { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %.ls, i64 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %.ls, i64 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %.ls, i64 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %.ls, i64 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %.ls, i64 0, i32 4
  %9 = load %struct.event*, %struct.event** %8, align 8
  %10 = getelementptr { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %.ls, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }, { i64, i64, i32, i32*, %struct.event*, i8*, %struct.event* }* %.ls, i64 0, i32 6
  %13 = load %struct.event*, %struct.event** %12, align 8
  br label %pfor.detach66.ls

pfor.cond.cleanup65.loopexit.ls.split:            ; preds = %pfor.detach66.ls
  ret void

pfor.detach66.ls:                                 ; preds = %pfor.detach66.lr.ph.ls, %pfor.detach66.ls
  %indvars.iv.ls = phi i64 [ %20, %pfor.detach66.ls ], [ %indvars.iv.start.ls, %pfor.detach66.lr.ph.ls ]
  %14 = shl nsw i64 %indvars.iv.ls, 11
  %15 = add nsw i64 %14, %1
  %16 = add nsw i64 %15, 2048
  %cmp.i195.ls = icmp sgt i64 %16, %3
  %17 = trunc i64 %16 to i32
  %.sroa.speculated.ls = select i1 %cmp.i195.ls, i32 %5, i32 %17
  %arrayidx85.ls = getelementptr inbounds i32, i32* %7, i64 %indvars.iv.ls
  %18 = load i32, i32* %arrayidx85.ls, align 4, !tbaa !12
  %idx.ext86.ls = sext i32 %18 to i64
  %add.ptr87.ls = getelementptr inbounds %struct.event, %struct.event* %9, i64 %idx.ext86.ls
  %19 = trunc i64 %15 to i32
  %call92.ls = tail call { %struct.event*, i64 } @_ZN8sequence10packSerialI5eventiNS_4getAIS1_iEEEE4_seqIT_EPS5_PbT0_S9_T1_(%struct.event* %add.ptr87.ls, i8* %11, i32 %19, i32 %.sroa.speculated.ls, %struct.event* %13)
  %20 = add i64 %indvars.iv.ls, 1
  %21 = icmp ult i64 %20, %.ls1
  br i1 %21, label %pfor.detach66.ls, label %pfor.cond.cleanup65.loopexit.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb_pfor.detach.ls({ i64, i64, i64, i64, i64, i32*, i32* }* nocapture readonly %.ls, i64 %__begin.0280.start.ls, i64 %.ls1) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach.lr.ph.ls:
  %0 = getelementptr { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %.ls, i64 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %.ls, i64 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %.ls, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %.ls, i64 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %.ls, i64 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %.ls, i64 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr { i64, i64, i64, i64, i64, i32*, i32* }, { i64, i64, i64, i64, i64, i32*, i32* }* %.ls, i64 0, i32 6
  %13 = load i32*, i32** %12, align 8
  br label %pfor.detach.ls

pfor.cond.cleanup.ls.split:                       ; preds = %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit.ls
  ret void

pfor.detach.ls:                                   ; preds = %pfor.detach.lr.ph.ls, %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit.ls
  %__begin.0280.ls = phi i64 [ %__begin.0280.start.ls, %pfor.detach.lr.ph.ls ], [ %92, %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit.ls ]
  %14 = mul nsw i64 %__begin.0280.ls, -1024
  %15 = add i64 %14, %1
  %16 = add i64 %14, %3
  %17 = icmp sgt i64 %16, %5
  %smax350.ls = select i1 %17, i64 %16, i64 %5
  %18 = sub i64 %15, %smax350.ls
  %19 = add i64 %18, -32
  %20 = lshr i64 %19, 5
  %21 = add nuw nsw i64 %20, 1
  %mul22.ls = shl nsw i64 %__begin.0280.ls, 10
  %add23.ls = add nsw i64 %mul22.ls, %7
  %add25.ls = add nsw i64 %add23.ls, 1024
  %cmp.i201.ls = icmp sgt i64 %add25.ls, %9
  %.sroa.speculated262.ls = select i1 %cmp.i201.ls, i64 %9, i64 %add25.ls
  %arrayidx.i.i252.ls = getelementptr inbounds i32, i32* %11, i64 %add23.ls
  %22 = load i32, i32* %arrayidx.i.i252.ls, align 4, !tbaa !12
  %j.013.i.ls = add nsw i64 %add23.ls, 1
  %cmp14.i.ls = icmp slt i64 %j.013.i.ls, %.sroa.speculated262.ls
  br i1 %cmp14.i.ls, label %for.body.lr.ph.i253.ls, label %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit.ls

for.body.lr.ph.i253.ls:                           ; preds = %pfor.detach.ls
  %min.iters.check.ls = icmp ult i64 %18, 32
  br i1 %min.iters.check.ls, label %for.body.i256.ls.preheader, label %vector.ph.ls

vector.ph.ls:                                     ; preds = %for.body.lr.ph.i253.ls
  %n.vec.ls = and i64 %18, -32
  %ind.end.ls = add i64 %n.vec.ls, %j.013.i.ls
  %23 = insertelement <8 x i32> <i32 undef, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %22, i32 0
  %xtraiter351.ls = and i64 %21, 3
  %24 = icmp ult i64 %19, 96
  br i1 %24, label %middle.block.unr-lcssa.ls, label %vector.ph.new.ls

vector.ph.new.ls:                                 ; preds = %vector.ph.ls
  %unroll_iter.ls = sub nsw i64 %21, %xtraiter351.ls
  br label %vector.body.ls

vector.body.ls:                                   ; preds = %vector.body.ls, %vector.ph.new.ls
  %index.ls = phi i64 [ 0, %vector.ph.new.ls ], [ %index.next.3.ls, %vector.body.ls ]
  %vec.phi.ls = phi <8 x i32> [ %23, %vector.ph.new.ls ], [ %73, %vector.body.ls ]
  %vec.phi303.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.new.ls ], [ %74, %vector.body.ls ]
  %vec.phi304.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.new.ls ], [ %75, %vector.body.ls ]
  %vec.phi305.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.new.ls ], [ %76, %vector.body.ls ]
  %niter.ls = phi i64 [ %unroll_iter.ls, %vector.ph.new.ls ], [ %niter.nsub.3.ls, %vector.body.ls ]
  %25 = add i64 %index.ls, %j.013.i.ls
  %26 = getelementptr inbounds i32, i32* %11, i64 %25
  %27 = bitcast i32* %26 to <8 x i32>*
  %wide.load.ls = load <8 x i32>, <8 x i32>* %27, align 4, !tbaa !12
  %28 = getelementptr i32, i32* %26, i64 8
  %29 = bitcast i32* %28 to <8 x i32>*
  %wide.load306.ls = load <8 x i32>, <8 x i32>* %29, align 4, !tbaa !12
  %30 = getelementptr i32, i32* %26, i64 16
  %31 = bitcast i32* %30 to <8 x i32>*
  %wide.load307.ls = load <8 x i32>, <8 x i32>* %31, align 4, !tbaa !12
  %32 = getelementptr i32, i32* %26, i64 24
  %33 = bitcast i32* %32 to <8 x i32>*
  %wide.load308.ls = load <8 x i32>, <8 x i32>* %33, align 4, !tbaa !12
  %34 = add nsw <8 x i32> %wide.load.ls, %vec.phi.ls
  %35 = add nsw <8 x i32> %wide.load306.ls, %vec.phi303.ls
  %36 = add nsw <8 x i32> %wide.load307.ls, %vec.phi304.ls
  %37 = add nsw <8 x i32> %wide.load308.ls, %vec.phi305.ls
  %index.next.ls = or i64 %index.ls, 32
  %38 = add i64 %index.next.ls, %j.013.i.ls
  %39 = getelementptr inbounds i32, i32* %11, i64 %38
  %40 = bitcast i32* %39 to <8 x i32>*
  %wide.load.1.ls = load <8 x i32>, <8 x i32>* %40, align 4, !tbaa !12
  %41 = getelementptr i32, i32* %39, i64 8
  %42 = bitcast i32* %41 to <8 x i32>*
  %wide.load306.1.ls = load <8 x i32>, <8 x i32>* %42, align 4, !tbaa !12
  %43 = getelementptr i32, i32* %39, i64 16
  %44 = bitcast i32* %43 to <8 x i32>*
  %wide.load307.1.ls = load <8 x i32>, <8 x i32>* %44, align 4, !tbaa !12
  %45 = getelementptr i32, i32* %39, i64 24
  %46 = bitcast i32* %45 to <8 x i32>*
  %wide.load308.1.ls = load <8 x i32>, <8 x i32>* %46, align 4, !tbaa !12
  %47 = add nsw <8 x i32> %34, %wide.load.1.ls
  %48 = add nsw <8 x i32> %35, %wide.load306.1.ls
  %49 = add nsw <8 x i32> %36, %wide.load307.1.ls
  %50 = add nsw <8 x i32> %37, %wide.load308.1.ls
  %index.next.1.ls = or i64 %index.ls, 64
  %51 = add i64 %index.next.1.ls, %j.013.i.ls
  %52 = getelementptr inbounds i32, i32* %11, i64 %51
  %53 = bitcast i32* %52 to <8 x i32>*
  %wide.load.2.ls = load <8 x i32>, <8 x i32>* %53, align 4, !tbaa !12
  %54 = getelementptr i32, i32* %52, i64 8
  %55 = bitcast i32* %54 to <8 x i32>*
  %wide.load306.2.ls = load <8 x i32>, <8 x i32>* %55, align 4, !tbaa !12
  %56 = getelementptr i32, i32* %52, i64 16
  %57 = bitcast i32* %56 to <8 x i32>*
  %wide.load307.2.ls = load <8 x i32>, <8 x i32>* %57, align 4, !tbaa !12
  %58 = getelementptr i32, i32* %52, i64 24
  %59 = bitcast i32* %58 to <8 x i32>*
  %wide.load308.2.ls = load <8 x i32>, <8 x i32>* %59, align 4, !tbaa !12
  %60 = add nsw <8 x i32> %47, %wide.load.2.ls
  %61 = add nsw <8 x i32> %48, %wide.load306.2.ls
  %62 = add nsw <8 x i32> %49, %wide.load307.2.ls
  %63 = add nsw <8 x i32> %50, %wide.load308.2.ls
  %index.next.2.ls = or i64 %index.ls, 96
  %64 = add i64 %index.next.2.ls, %j.013.i.ls
  %65 = getelementptr inbounds i32, i32* %11, i64 %64
  %66 = bitcast i32* %65 to <8 x i32>*
  %wide.load.3.ls = load <8 x i32>, <8 x i32>* %66, align 4, !tbaa !12
  %67 = getelementptr i32, i32* %65, i64 8
  %68 = bitcast i32* %67 to <8 x i32>*
  %wide.load306.3.ls = load <8 x i32>, <8 x i32>* %68, align 4, !tbaa !12
  %69 = getelementptr i32, i32* %65, i64 16
  %70 = bitcast i32* %69 to <8 x i32>*
  %wide.load307.3.ls = load <8 x i32>, <8 x i32>* %70, align 4, !tbaa !12
  %71 = getelementptr i32, i32* %65, i64 24
  %72 = bitcast i32* %71 to <8 x i32>*
  %wide.load308.3.ls = load <8 x i32>, <8 x i32>* %72, align 4, !tbaa !12
  %73 = add nsw <8 x i32> %60, %wide.load.3.ls
  %74 = add nsw <8 x i32> %61, %wide.load306.3.ls
  %75 = add nsw <8 x i32> %62, %wide.load307.3.ls
  %76 = add nsw <8 x i32> %63, %wide.load308.3.ls
  %index.next.3.ls = add i64 %index.ls, 128
  %niter.nsub.3.ls = add i64 %niter.ls, -4
  %niter.ncmp.3.ls = icmp eq i64 %niter.nsub.3.ls, 0
  br i1 %niter.ncmp.3.ls, label %middle.block.unr-lcssa.ls, label %vector.body.ls, !llvm.loop !130

middle.block.unr-lcssa.ls:                        ; preds = %vector.body.ls, %vector.ph.ls
  %.lcssa324.ph.ls = phi <8 x i32> [ undef, %vector.ph.ls ], [ %73, %vector.body.ls ]
  %.lcssa323.ph.ls = phi <8 x i32> [ undef, %vector.ph.ls ], [ %74, %vector.body.ls ]
  %.lcssa322.ph.ls = phi <8 x i32> [ undef, %vector.ph.ls ], [ %75, %vector.body.ls ]
  %.lcssa.ph.ls = phi <8 x i32> [ undef, %vector.ph.ls ], [ %76, %vector.body.ls ]
  %index.unr.ls = phi i64 [ 0, %vector.ph.ls ], [ %index.next.3.ls, %vector.body.ls ]
  %vec.phi.unr.ls = phi <8 x i32> [ %23, %vector.ph.ls ], [ %73, %vector.body.ls ]
  %vec.phi303.unr.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.ls ], [ %74, %vector.body.ls ]
  %vec.phi304.unr.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.ls ], [ %75, %vector.body.ls ]
  %vec.phi305.unr.ls = phi <8 x i32> [ zeroinitializer, %vector.ph.ls ], [ %76, %vector.body.ls ]
  %lcmp.mod352.ls = icmp eq i64 %xtraiter351.ls, 0
  br i1 %lcmp.mod352.ls, label %middle.block.ls, label %vector.body.epil.ls.preheader

vector.body.epil.ls.preheader:                    ; preds = %middle.block.unr-lcssa.ls
  br label %vector.body.epil.ls

vector.body.epil.ls:                              ; preds = %vector.body.epil.ls.preheader, %vector.body.epil.ls
  %index.epil.ls = phi i64 [ %index.next.epil.ls, %vector.body.epil.ls ], [ %index.unr.ls, %vector.body.epil.ls.preheader ]
  %vec.phi.epil.ls = phi <8 x i32> [ %86, %vector.body.epil.ls ], [ %vec.phi.unr.ls, %vector.body.epil.ls.preheader ]
  %vec.phi303.epil.ls = phi <8 x i32> [ %87, %vector.body.epil.ls ], [ %vec.phi303.unr.ls, %vector.body.epil.ls.preheader ]
  %vec.phi304.epil.ls = phi <8 x i32> [ %88, %vector.body.epil.ls ], [ %vec.phi304.unr.ls, %vector.body.epil.ls.preheader ]
  %vec.phi305.epil.ls = phi <8 x i32> [ %89, %vector.body.epil.ls ], [ %vec.phi305.unr.ls, %vector.body.epil.ls.preheader ]
  %epil.iter.ls = phi i64 [ %epil.iter.sub.ls, %vector.body.epil.ls ], [ %xtraiter351.ls, %vector.body.epil.ls.preheader ]
  %77 = add i64 %index.epil.ls, %j.013.i.ls
  %78 = getelementptr inbounds i32, i32* %11, i64 %77
  %79 = bitcast i32* %78 to <8 x i32>*
  %wide.load.epil.ls = load <8 x i32>, <8 x i32>* %79, align 4, !tbaa !12
  %80 = getelementptr i32, i32* %78, i64 8
  %81 = bitcast i32* %80 to <8 x i32>*
  %wide.load306.epil.ls = load <8 x i32>, <8 x i32>* %81, align 4, !tbaa !12
  %82 = getelementptr i32, i32* %78, i64 16
  %83 = bitcast i32* %82 to <8 x i32>*
  %wide.load307.epil.ls = load <8 x i32>, <8 x i32>* %83, align 4, !tbaa !12
  %84 = getelementptr i32, i32* %78, i64 24
  %85 = bitcast i32* %84 to <8 x i32>*
  %wide.load308.epil.ls = load <8 x i32>, <8 x i32>* %85, align 4, !tbaa !12
  %86 = add nsw <8 x i32> %wide.load.epil.ls, %vec.phi.epil.ls
  %87 = add nsw <8 x i32> %wide.load306.epil.ls, %vec.phi303.epil.ls
  %88 = add nsw <8 x i32> %wide.load307.epil.ls, %vec.phi304.epil.ls
  %89 = add nsw <8 x i32> %wide.load308.epil.ls, %vec.phi305.epil.ls
  %index.next.epil.ls = add i64 %index.epil.ls, 32
  %epil.iter.sub.ls = add nsw i64 %epil.iter.ls, -1
  %epil.iter.cmp.ls = icmp eq i64 %epil.iter.sub.ls, 0
  br i1 %epil.iter.cmp.ls, label %middle.block.ls, label %vector.body.epil.ls, !llvm.loop !131

middle.block.ls:                                  ; preds = %vector.body.epil.ls, %middle.block.unr-lcssa.ls
  %.lcssa324.ls = phi <8 x i32> [ %.lcssa324.ph.ls, %middle.block.unr-lcssa.ls ], [ %86, %vector.body.epil.ls ]
  %.lcssa323.ls = phi <8 x i32> [ %.lcssa323.ph.ls, %middle.block.unr-lcssa.ls ], [ %87, %vector.body.epil.ls ]
  %.lcssa322.ls = phi <8 x i32> [ %.lcssa322.ph.ls, %middle.block.unr-lcssa.ls ], [ %88, %vector.body.epil.ls ]
  %.lcssa.ls = phi <8 x i32> [ %.lcssa.ph.ls, %middle.block.unr-lcssa.ls ], [ %89, %vector.body.epil.ls ]
  %bin.rdx.ls = add <8 x i32> %.lcssa323.ls, %.lcssa324.ls
  %bin.rdx309.ls = add <8 x i32> %bin.rdx.ls, %.lcssa322.ls
  %bin.rdx310.ls = add <8 x i32> %bin.rdx309.ls, %.lcssa.ls
  %rdx.shuf.ls = shufflevector <8 x i32> %bin.rdx310.ls, <8 x i32> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx311.ls = add <8 x i32> %rdx.shuf.ls, %bin.rdx310.ls
  %rdx.shuf312.ls = shufflevector <8 x i32> %bin.rdx311.ls, <8 x i32> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx313.ls = add <8 x i32> %rdx.shuf312.ls, %bin.rdx311.ls
  %rdx.shuf314.ls = shufflevector <8 x i32> %bin.rdx313.ls, <8 x i32> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %bin.rdx315.ls = add <8 x i32> %rdx.shuf314.ls, %bin.rdx313.ls
  %90 = extractelement <8 x i32> %bin.rdx315.ls, i32 0
  %cmp.n.ls = icmp eq i64 %18, %n.vec.ls
  br i1 %cmp.n.ls, label %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit.ls, label %for.body.i256.ls.preheader

for.body.i256.ls.preheader:                       ; preds = %middle.block.ls, %for.body.lr.ph.i253.ls
  %j.016.i.ls.ph = phi i64 [ %ind.end.ls, %middle.block.ls ], [ %j.013.i.ls, %for.body.lr.ph.i253.ls ]
  %r.015.i.ls.ph = phi i32 [ %90, %middle.block.ls ], [ %22, %for.body.lr.ph.i253.ls ]
  br label %for.body.i256.ls

for.body.i256.ls:                                 ; preds = %for.body.i256.ls.preheader, %for.body.i256.ls
  %j.016.i.ls = phi i64 [ %j.0.i.ls, %for.body.i256.ls ], [ %j.016.i.ls.ph, %for.body.i256.ls.preheader ]
  %r.015.i.ls = phi i32 [ %add.i.i254.ls, %for.body.i256.ls ], [ %r.015.i.ls.ph, %for.body.i256.ls.preheader ]
  %arrayidx.i8.i.ls = getelementptr inbounds i32, i32* %11, i64 %j.016.i.ls
  %91 = load i32, i32* %arrayidx.i8.i.ls, align 4, !tbaa !12
  %add.i.i254.ls = add nsw i32 %91, %r.015.i.ls
  %j.0.i.ls = add nsw i64 %j.016.i.ls, 1
  %exitcond.i255.ls = icmp eq i64 %j.0.i.ls, %.sroa.speculated262.ls
  br i1 %exitcond.i255.ls, label %_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit.ls, label %for.body.i256.ls, !llvm.loop !132

_ZN8sequence12reduceSerialIilSt4plusIiENS_4getAIilEEEET_T0_S6_T1_T2_.exit.ls: ; preds = %for.body.i256.ls, %middle.block.ls, %pfor.detach.ls
  %r.0.lcssa.i.ls = phi i32 [ %22, %pfor.detach.ls ], [ %90, %middle.block.ls ], [ %add.i.i254.ls, %for.body.i256.ls ]
  %arrayidx.ls = getelementptr inbounds i32, i32* %13, i64 %__begin.0280.ls
  store i32 %r.0.lcssa.i.ls, i32* %arrayidx.ls, align 4, !tbaa !12
  %92 = add i64 %__begin.0280.ls, 1
  %93 = icmp ult i64 %92, %.ls1
  br i1 %93, label %pfor.detach.ls, label %pfor.cond.cleanup.ls.split
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_ZN8sequence4scanIilSt4plusIiENS_4getAIilEEEET_PS5_T0_S7_T1_T2_S5_bb_pfor.detach72.ls({ i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* nocapture readonly %.ls, i64 %__begin63.0278.start.ls, i64 %.ls1) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
pfor.detach72.preheader.ls:
  %0 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 0
  %1 = load i32*, i32** %0, align 8
  %2 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 1
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 2
  %5 = load i1, i1* %4, align 1
  %6 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 6
  %13 = load i1, i1* %12, align 1
  %14 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }, { i32*, i32*, i1, i64, i64, i32*, i1, i64, i64, i64, i64 }* %.ls, i64 0, i32 10
  %21 = load i64, i64* %20, align 8
  br label %pfor.detach72.ls

pfor.cond.cleanup71.loopexit.ls.split:            ; preds = %pfor.inc103.ls
  ret void

pfor.detach72.ls:                                 ; preds = %pfor.detach72.preheader.ls, %pfor.inc103.ls
  %__begin63.0278.ls = phi i64 [ %69, %pfor.inc103.ls ], [ %__begin63.0278.start.ls, %pfor.detach72.preheader.ls ]
  %22 = mul nsw i64 %__begin63.0278.ls, -1024
  %23 = add i64 %22, %15
  %24 = icmp sgt i64 %23, %17
  %smax346.ls = select i1 %24, i64 %23, i64 %17
  %25 = sub i64 %19, %smax346.ls
  %26 = add i64 %22, %21
  %27 = sub i64 %26, %smax346.ls
  %mul79.ls = shl nsw i64 %__begin63.0278.ls, 10
  %add80.ls = add nsw i64 %mul79.ls, %7
  %add83.ls = add nsw i64 %add80.ls, 1024
  %cmp.i202.ls = icmp sgt i64 %add83.ls, %9
  %.sroa.speculated.ls = select i1 %cmp.i202.ls, i64 %9, i64 %add83.ls
  %arrayidx92.ls = getelementptr inbounds i32, i32* %11, i64 %__begin63.0278.ls
  %28 = load i32, i32* %arrayidx92.ls, align 4, !tbaa !12
  br i1 %13, label %if.then.i204.ls, label %if.else16.i227.ls

if.else16.i227.ls:                                ; preds = %pfor.detach72.ls
  br i1 %5, label %if.then18.i229.ls, label %if.else31.i240.ls

if.else31.i240.ls:                                ; preds = %if.else16.i227.ls
  %cmp34110.i239.ls = icmp slt i64 %add80.ls, %.sroa.speculated.ls
  br i1 %cmp34110.i239.ls, label %for.body36.i249.preheader.ls, label %pfor.inc103.ls

for.body36.i249.preheader.ls:                     ; preds = %if.else31.i240.ls
  %xtraiter335.ls = and i64 %25, 7
  %lcmp.mod336.ls = icmp eq i64 %xtraiter335.ls, 0
  br i1 %lcmp.mod336.ls, label %for.body36.i249.prol.loopexit.ls, label %for.body36.i249.prol.ls.preheader

for.body36.i249.prol.ls.preheader:                ; preds = %for.body36.i249.preheader.ls
  br label %for.body36.i249.prol.ls

for.body36.i249.prol.ls:                          ; preds = %for.body36.i249.prol.ls.preheader, %for.body36.i249.prol.ls
  %i32.0112.i242.prol.ls = phi i64 [ %inc42.i247.prol.ls, %for.body36.i249.prol.ls ], [ %add80.ls, %for.body36.i249.prol.ls.preheader ]
  %r.3111.i243.prol.ls = phi i32 [ %add.i.i246.prol.ls, %for.body36.i249.prol.ls ], [ %28, %for.body36.i249.prol.ls.preheader ]
  %prol.iter337.ls = phi i64 [ %prol.iter337.sub.ls, %for.body36.i249.prol.ls ], [ %xtraiter335.ls, %for.body36.i249.prol.ls.preheader ]
  %arrayidx.i72.i244.prol.ls = getelementptr inbounds i32, i32* %1, i64 %i32.0112.i242.prol.ls
  %29 = load i32, i32* %arrayidx.i72.i244.prol.ls, align 4, !tbaa !12
  %arrayidx39.i245.prol.ls = getelementptr inbounds i32, i32* %3, i64 %i32.0112.i242.prol.ls
  store i32 %r.3111.i243.prol.ls, i32* %arrayidx39.i245.prol.ls, align 4, !tbaa !12
  %add.i.i246.prol.ls = add nsw i32 %29, %r.3111.i243.prol.ls
  %inc42.i247.prol.ls = add nsw i64 %i32.0112.i242.prol.ls, 1
  %prol.iter337.sub.ls = add nsw i64 %prol.iter337.ls, -1
  %prol.iter337.cmp.ls = icmp eq i64 %prol.iter337.sub.ls, 0
  br i1 %prol.iter337.cmp.ls, label %for.body36.i249.prol.loopexit.ls, label %for.body36.i249.prol.ls, !llvm.loop !133

for.body36.i249.prol.loopexit.ls:                 ; preds = %for.body36.i249.prol.ls, %for.body36.i249.preheader.ls
  %i32.0112.i242.unr.ls = phi i64 [ %add80.ls, %for.body36.i249.preheader.ls ], [ %inc42.i247.prol.ls, %for.body36.i249.prol.ls ]
  %r.3111.i243.unr.ls = phi i32 [ %28, %for.body36.i249.preheader.ls ], [ %add.i.i246.prol.ls, %for.body36.i249.prol.ls ]
  %30 = icmp ult i64 %27, 7
  br i1 %30, label %pfor.inc103.ls, label %for.body36.i249.ls.preheader

for.body36.i249.ls.preheader:                     ; preds = %for.body36.i249.prol.loopexit.ls
  br label %for.body36.i249.ls

for.body36.i249.ls:                               ; preds = %for.body36.i249.ls.preheader, %for.body36.i249.ls
  %i32.0112.i242.ls = phi i64 [ %inc42.i247.7.ls, %for.body36.i249.ls ], [ %i32.0112.i242.unr.ls, %for.body36.i249.ls.preheader ]
  %r.3111.i243.ls = phi i32 [ %add.i.i246.7.ls, %for.body36.i249.ls ], [ %r.3111.i243.unr.ls, %for.body36.i249.ls.preheader ]
  %arrayidx.i72.i244.ls = getelementptr inbounds i32, i32* %1, i64 %i32.0112.i242.ls
  %31 = load i32, i32* %arrayidx.i72.i244.ls, align 4, !tbaa !12
  %arrayidx39.i245.ls = getelementptr inbounds i32, i32* %3, i64 %i32.0112.i242.ls
  store i32 %r.3111.i243.ls, i32* %arrayidx39.i245.ls, align 4, !tbaa !12
  %add.i.i246.ls = add nsw i32 %31, %r.3111.i243.ls
  %inc42.i247.ls = add nsw i64 %i32.0112.i242.ls, 1
  %arrayidx.i72.i244.1.ls = getelementptr inbounds i32, i32* %1, i64 %inc42.i247.ls
  %32 = load i32, i32* %arrayidx.i72.i244.1.ls, align 4, !tbaa !12
  %arrayidx39.i245.1.ls = getelementptr inbounds i32, i32* %3, i64 %inc42.i247.ls
  store i32 %add.i.i246.ls, i32* %arrayidx39.i245.1.ls, align 4, !tbaa !12
  %add.i.i246.1.ls = add nsw i32 %32, %add.i.i246.ls
  %inc42.i247.1.ls = add nsw i64 %i32.0112.i242.ls, 2
  %arrayidx.i72.i244.2.ls = getelementptr inbounds i32, i32* %1, i64 %inc42.i247.1.ls
  %33 = load i32, i32* %arrayidx.i72.i244.2.ls, align 4, !tbaa !12
  %arrayidx39.i245.2.ls = getelementptr inbounds i32, i32* %3, i64 %inc42.i247.1.ls
  store i32 %add.i.i246.1.ls, i32* %arrayidx39.i245.2.ls, align 4, !tbaa !12
  %add.i.i246.2.ls = add nsw i32 %33, %add.i.i246.1.ls
  %inc42.i247.2.ls = add nsw i64 %i32.0112.i242.ls, 3
  %arrayidx.i72.i244.3.ls = getelementptr inbounds i32, i32* %1, i64 %inc42.i247.2.ls
  %34 = load i32, i32* %arrayidx.i72.i244.3.ls, align 4, !tbaa !12
  %arrayidx39.i245.3.ls = getelementptr inbounds i32, i32* %3, i64 %inc42.i247.2.ls
  store i32 %add.i.i246.2.ls, i32* %arrayidx39.i245.3.ls, align 4, !tbaa !12
  %add.i.i246.3.ls = add nsw i32 %34, %add.i.i246.2.ls
  %inc42.i247.3.ls = add nsw i64 %i32.0112.i242.ls, 4
  %arrayidx.i72.i244.4.ls = getelementptr inbounds i32, i32* %1, i64 %inc42.i247.3.ls
  %35 = load i32, i32* %arrayidx.i72.i244.4.ls, align 4, !tbaa !12
  %arrayidx39.i245.4.ls = getelementptr inbounds i32, i32* %3, i64 %inc42.i247.3.ls
  store i32 %add.i.i246.3.ls, i32* %arrayidx39.i245.4.ls, align 4, !tbaa !12
  %add.i.i246.4.ls = add nsw i32 %35, %add.i.i246.3.ls
  %inc42.i247.4.ls = add nsw i64 %i32.0112.i242.ls, 5
  %arrayidx.i72.i244.5.ls = getelementptr inbounds i32, i32* %1, i64 %inc42.i247.4.ls
  %36 = load i32, i32* %arrayidx.i72.i244.5.ls, align 4, !tbaa !12
  %arrayidx39.i245.5.ls = getelementptr inbounds i32, i32* %3, i64 %inc42.i247.4.ls
  store i32 %add.i.i246.4.ls, i32* %arrayidx39.i245.5.ls, align 4, !tbaa !12
  %add.i.i246.5.ls = add nsw i32 %36, %add.i.i246.4.ls
  %inc42.i247.5.ls = add nsw i64 %i32.0112.i242.ls, 6
  %arrayidx.i72.i244.6.ls = getelementptr inbounds i32, i32* %1, i64 %inc42.i247.5.ls
  %37 = load i32, i32* %arrayidx.i72.i244.6.ls, align 4, !tbaa !12
  %arrayidx39.i245.6.ls = getelementptr inbounds i32, i32* %3, i64 %inc42.i247.5.ls
  store i32 %add.i.i246.5.ls, i32* %arrayidx39.i245.6.ls, align 4, !tbaa !12
  %add.i.i246.6.ls = add nsw i32 %37, %add.i.i246.5.ls
  %inc42.i247.6.ls = add nsw i64 %i32.0112.i242.ls, 7
  %arrayidx.i72.i244.7.ls = getelementptr inbounds i32, i32* %1, i64 %inc42.i247.6.ls
  %38 = load i32, i32* %arrayidx.i72.i244.7.ls, align 4, !tbaa !12
  %arrayidx39.i245.7.ls = getelementptr inbounds i32, i32* %3, i64 %inc42.i247.6.ls
  store i32 %add.i.i246.6.ls, i32* %arrayidx39.i245.7.ls, align 4, !tbaa !12
  %add.i.i246.7.ls = add nsw i32 %38, %add.i.i246.6.ls
  %inc42.i247.7.ls = add nsw i64 %i32.0112.i242.ls, 8
  %exitcond117.i248.7.ls = icmp eq i64 %inc42.i247.7.ls, %.sroa.speculated.ls
  br i1 %exitcond117.i248.7.ls, label %pfor.inc103.ls, label %for.body36.i249.ls

if.then18.i229.ls:                                ; preds = %if.else16.i227.ls
  %cmp22106.i228.ls = icmp sgt i64 %.sroa.speculated.ls, %add80.ls
  br i1 %cmp22106.i228.ls, label %for.body24.i238.preheader.ls, label %pfor.inc103.ls

for.body24.i238.preheader.ls:                     ; preds = %if.then18.i229.ls
  %xtraiter339.ls = and i64 %25, 7
  %lcmp.mod340.ls = icmp eq i64 %xtraiter339.ls, 0
  br i1 %lcmp.mod340.ls, label %for.body24.i238.prol.loopexit.ls, label %for.body24.i238.prol.ls.preheader

for.body24.i238.prol.ls.preheader:                ; preds = %for.body24.i238.preheader.ls
  br label %for.body24.i238.prol.ls

for.body24.i238.prol.ls:                          ; preds = %for.body24.i238.prol.ls.preheader, %for.body24.i238.prol.ls
  %i19.0108.in.i231.prol.ls = phi i64 [ %i19.0108.i233.prol.ls, %for.body24.i238.prol.ls ], [ %.sroa.speculated.ls, %for.body24.i238.prol.ls.preheader ]
  %r.2107.i232.prol.ls = phi i32 [ %add.i73.i236.prol.ls, %for.body24.i238.prol.ls ], [ %28, %for.body24.i238.prol.ls.preheader ]
  %prol.iter341.ls = phi i64 [ %prol.iter341.sub.ls, %for.body24.i238.prol.ls ], [ %xtraiter339.ls, %for.body24.i238.prol.ls.preheader ]
  %i19.0108.i233.prol.ls = add nsw i64 %i19.0108.in.i231.prol.ls, -1
  %arrayidx.i75.i234.prol.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.prol.ls
  %39 = load i32, i32* %arrayidx.i75.i234.prol.ls, align 4, !tbaa !12
  %arrayidx26.i235.prol.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.prol.ls
  store i32 %r.2107.i232.prol.ls, i32* %arrayidx26.i235.prol.ls, align 4, !tbaa !12
  %add.i73.i236.prol.ls = add nsw i32 %39, %r.2107.i232.prol.ls
  %prol.iter341.sub.ls = add nsw i64 %prol.iter341.ls, -1
  %prol.iter341.cmp.ls = icmp eq i64 %prol.iter341.sub.ls, 0
  br i1 %prol.iter341.cmp.ls, label %for.body24.i238.prol.loopexit.ls, label %for.body24.i238.prol.ls, !llvm.loop !134

for.body24.i238.prol.loopexit.ls:                 ; preds = %for.body24.i238.prol.ls, %for.body24.i238.preheader.ls
  %i19.0108.in.i231.unr.ls = phi i64 [ %.sroa.speculated.ls, %for.body24.i238.preheader.ls ], [ %i19.0108.i233.prol.ls, %for.body24.i238.prol.ls ]
  %r.2107.i232.unr.ls = phi i32 [ %28, %for.body24.i238.preheader.ls ], [ %add.i73.i236.prol.ls, %for.body24.i238.prol.ls ]
  %40 = icmp ult i64 %27, 7
  br i1 %40, label %pfor.inc103.ls, label %for.body24.i238.ls.preheader

for.body24.i238.ls.preheader:                     ; preds = %for.body24.i238.prol.loopexit.ls
  br label %for.body24.i238.ls

for.body24.i238.ls:                               ; preds = %for.body24.i238.ls.preheader, %for.body24.i238.ls
  %i19.0108.in.i231.ls = phi i64 [ %i19.0108.i233.7.ls, %for.body24.i238.ls ], [ %i19.0108.in.i231.unr.ls, %for.body24.i238.ls.preheader ]
  %r.2107.i232.ls = phi i32 [ %add.i73.i236.7.ls, %for.body24.i238.ls ], [ %r.2107.i232.unr.ls, %for.body24.i238.ls.preheader ]
  %i19.0108.i233.ls = add nsw i64 %i19.0108.in.i231.ls, -1
  %arrayidx.i75.i234.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.ls
  %41 = load i32, i32* %arrayidx.i75.i234.ls, align 4, !tbaa !12
  %arrayidx26.i235.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.ls
  store i32 %r.2107.i232.ls, i32* %arrayidx26.i235.ls, align 4, !tbaa !12
  %add.i73.i236.ls = add nsw i32 %41, %r.2107.i232.ls
  %i19.0108.i233.1.ls = add nsw i64 %i19.0108.in.i231.ls, -2
  %arrayidx.i75.i234.1.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.1.ls
  %42 = load i32, i32* %arrayidx.i75.i234.1.ls, align 4, !tbaa !12
  %arrayidx26.i235.1.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.1.ls
  store i32 %add.i73.i236.ls, i32* %arrayidx26.i235.1.ls, align 4, !tbaa !12
  %add.i73.i236.1.ls = add nsw i32 %42, %add.i73.i236.ls
  %i19.0108.i233.2.ls = add nsw i64 %i19.0108.in.i231.ls, -3
  %arrayidx.i75.i234.2.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.2.ls
  %43 = load i32, i32* %arrayidx.i75.i234.2.ls, align 4, !tbaa !12
  %arrayidx26.i235.2.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.2.ls
  store i32 %add.i73.i236.1.ls, i32* %arrayidx26.i235.2.ls, align 4, !tbaa !12
  %add.i73.i236.2.ls = add nsw i32 %43, %add.i73.i236.1.ls
  %i19.0108.i233.3.ls = add nsw i64 %i19.0108.in.i231.ls, -4
  %arrayidx.i75.i234.3.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.3.ls
  %44 = load i32, i32* %arrayidx.i75.i234.3.ls, align 4, !tbaa !12
  %arrayidx26.i235.3.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.3.ls
  store i32 %add.i73.i236.2.ls, i32* %arrayidx26.i235.3.ls, align 4, !tbaa !12
  %add.i73.i236.3.ls = add nsw i32 %44, %add.i73.i236.2.ls
  %i19.0108.i233.4.ls = add nsw i64 %i19.0108.in.i231.ls, -5
  %arrayidx.i75.i234.4.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.4.ls
  %45 = load i32, i32* %arrayidx.i75.i234.4.ls, align 4, !tbaa !12
  %arrayidx26.i235.4.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.4.ls
  store i32 %add.i73.i236.3.ls, i32* %arrayidx26.i235.4.ls, align 4, !tbaa !12
  %add.i73.i236.4.ls = add nsw i32 %45, %add.i73.i236.3.ls
  %i19.0108.i233.5.ls = add nsw i64 %i19.0108.in.i231.ls, -6
  %arrayidx.i75.i234.5.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.5.ls
  %46 = load i32, i32* %arrayidx.i75.i234.5.ls, align 4, !tbaa !12
  %arrayidx26.i235.5.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.5.ls
  store i32 %add.i73.i236.4.ls, i32* %arrayidx26.i235.5.ls, align 4, !tbaa !12
  %add.i73.i236.5.ls = add nsw i32 %46, %add.i73.i236.4.ls
  %i19.0108.i233.6.ls = add nsw i64 %i19.0108.in.i231.ls, -7
  %arrayidx.i75.i234.6.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.6.ls
  %47 = load i32, i32* %arrayidx.i75.i234.6.ls, align 4, !tbaa !12
  %arrayidx26.i235.6.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.6.ls
  store i32 %add.i73.i236.5.ls, i32* %arrayidx26.i235.6.ls, align 4, !tbaa !12
  %add.i73.i236.6.ls = add nsw i32 %47, %add.i73.i236.5.ls
  %i19.0108.i233.7.ls = add nsw i64 %i19.0108.in.i231.ls, -8
  %arrayidx.i75.i234.7.ls = getelementptr inbounds i32, i32* %1, i64 %i19.0108.i233.7.ls
  %48 = load i32, i32* %arrayidx.i75.i234.7.ls, align 4, !tbaa !12
  %arrayidx26.i235.7.ls = getelementptr inbounds i32, i32* %3, i64 %i19.0108.i233.7.ls
  store i32 %add.i73.i236.6.ls, i32* %arrayidx26.i235.7.ls, align 4, !tbaa !12
  %add.i73.i236.7.ls = add nsw i32 %48, %add.i73.i236.6.ls
  %cmp22.i237.7.ls = icmp sgt i64 %i19.0108.i233.7.ls, %add80.ls
  br i1 %cmp22.i237.7.ls, label %for.body24.i238.ls, label %pfor.inc103.ls

if.then.i204.ls:                                  ; preds = %pfor.detach72.ls
  br i1 %5, label %if.then3.i206.ls, label %if.else.i217.ls

if.else.i217.ls:                                  ; preds = %if.then.i204.ls
  %cmp7101.i216.ls = icmp slt i64 %add80.ls, %.sroa.speculated.ls
  br i1 %cmp7101.i216.ls, label %for.body9.i226.preheader.ls, label %pfor.inc103.ls

for.body9.i226.preheader.ls:                      ; preds = %if.else.i217.ls
  %xtraiter343.ls = and i64 %25, 7
  %lcmp.mod344.ls = icmp eq i64 %xtraiter343.ls, 0
  br i1 %lcmp.mod344.ls, label %for.body9.i226.prol.loopexit.ls, label %for.body9.i226.prol.ls.preheader

for.body9.i226.prol.ls.preheader:                 ; preds = %for.body9.i226.preheader.ls
  br label %for.body9.i226.prol.ls

for.body9.i226.prol.ls:                           ; preds = %for.body9.i226.prol.ls.preheader, %for.body9.i226.prol.ls
  %i5.0103.i219.prol.ls = phi i64 [ %inc.i224.prol.ls, %for.body9.i226.prol.ls ], [ %add80.ls, %for.body9.i226.prol.ls.preheader ]
  %r.1102.i220.prol.ls = phi i32 [ %add.i76.i222.prol.ls, %for.body9.i226.prol.ls ], [ %28, %for.body9.i226.prol.ls.preheader ]
  %prol.iter345.ls = phi i64 [ %prol.iter345.sub.ls, %for.body9.i226.prol.ls ], [ %xtraiter343.ls, %for.body9.i226.prol.ls.preheader ]
  %arrayidx.i78.i221.prol.ls = getelementptr inbounds i32, i32* %1, i64 %i5.0103.i219.prol.ls
  %49 = load i32, i32* %arrayidx.i78.i221.prol.ls, align 4, !tbaa !12
  %add.i76.i222.prol.ls = add nsw i32 %49, %r.1102.i220.prol.ls
  %arrayidx13.i223.prol.ls = getelementptr inbounds i32, i32* %3, i64 %i5.0103.i219.prol.ls
  store i32 %add.i76.i222.prol.ls, i32* %arrayidx13.i223.prol.ls, align 4, !tbaa !12
  %inc.i224.prol.ls = add nsw i64 %i5.0103.i219.prol.ls, 1
  %prol.iter345.sub.ls = add nsw i64 %prol.iter345.ls, -1
  %prol.iter345.cmp.ls = icmp eq i64 %prol.iter345.sub.ls, 0
  br i1 %prol.iter345.cmp.ls, label %for.body9.i226.prol.loopexit.ls, label %for.body9.i226.prol.ls, !llvm.loop !135

for.body9.i226.prol.loopexit.ls:                  ; preds = %for.body9.i226.prol.ls, %for.body9.i226.preheader.ls
  %i5.0103.i219.unr.ls = phi i64 [ %add80.ls, %for.body9.i226.preheader.ls ], [ %inc.i224.prol.ls, %for.body9.i226.prol.ls ]
  %r.1102.i220.unr.ls = phi i32 [ %28, %for.body9.i226.preheader.ls ], [ %add.i76.i222.prol.ls, %for.body9.i226.prol.ls ]
  %50 = icmp ult i64 %27, 7
  br i1 %50, label %pfor.inc103.ls, label %for.body9.i226.ls.preheader

for.body9.i226.ls.preheader:                      ; preds = %for.body9.i226.prol.loopexit.ls
  br label %for.body9.i226.ls

for.body9.i226.ls:                                ; preds = %for.body9.i226.ls.preheader, %for.body9.i226.ls
  %i5.0103.i219.ls = phi i64 [ %inc.i224.7.ls, %for.body9.i226.ls ], [ %i5.0103.i219.unr.ls, %for.body9.i226.ls.preheader ]
  %r.1102.i220.ls = phi i32 [ %add.i76.i222.7.ls, %for.body9.i226.ls ], [ %r.1102.i220.unr.ls, %for.body9.i226.ls.preheader ]
  %arrayidx.i78.i221.ls = getelementptr inbounds i32, i32* %1, i64 %i5.0103.i219.ls
  %51 = load i32, i32* %arrayidx.i78.i221.ls, align 4, !tbaa !12
  %add.i76.i222.ls = add nsw i32 %51, %r.1102.i220.ls
  %arrayidx13.i223.ls = getelementptr inbounds i32, i32* %3, i64 %i5.0103.i219.ls
  store i32 %add.i76.i222.ls, i32* %arrayidx13.i223.ls, align 4, !tbaa !12
  %inc.i224.ls = add nsw i64 %i5.0103.i219.ls, 1
  %arrayidx.i78.i221.1.ls = getelementptr inbounds i32, i32* %1, i64 %inc.i224.ls
  %52 = load i32, i32* %arrayidx.i78.i221.1.ls, align 4, !tbaa !12
  %add.i76.i222.1.ls = add nsw i32 %52, %add.i76.i222.ls
  %arrayidx13.i223.1.ls = getelementptr inbounds i32, i32* %3, i64 %inc.i224.ls
  store i32 %add.i76.i222.1.ls, i32* %arrayidx13.i223.1.ls, align 4, !tbaa !12
  %inc.i224.1.ls = add nsw i64 %i5.0103.i219.ls, 2
  %arrayidx.i78.i221.2.ls = getelementptr inbounds i32, i32* %1, i64 %inc.i224.1.ls
  %53 = load i32, i32* %arrayidx.i78.i221.2.ls, align 4, !tbaa !12
  %add.i76.i222.2.ls = add nsw i32 %53, %add.i76.i222.1.ls
  %arrayidx13.i223.2.ls = getelementptr inbounds i32, i32* %3, i64 %inc.i224.1.ls
  store i32 %add.i76.i222.2.ls, i32* %arrayidx13.i223.2.ls, align 4, !tbaa !12
  %inc.i224.2.ls = add nsw i64 %i5.0103.i219.ls, 3
  %arrayidx.i78.i221.3.ls = getelementptr inbounds i32, i32* %1, i64 %inc.i224.2.ls
  %54 = load i32, i32* %arrayidx.i78.i221.3.ls, align 4, !tbaa !12
  %add.i76.i222.3.ls = add nsw i32 %54, %add.i76.i222.2.ls
  %arrayidx13.i223.3.ls = getelementptr inbounds i32, i32* %3, i64 %inc.i224.2.ls
  store i32 %add.i76.i222.3.ls, i32* %arrayidx13.i223.3.ls, align 4, !tbaa !12
  %inc.i224.3.ls = add nsw i64 %i5.0103.i219.ls, 4
  %arrayidx.i78.i221.4.ls = getelementptr inbounds i32, i32* %1, i64 %inc.i224.3.ls
  %55 = load i32, i32* %arrayidx.i78.i221.4.ls, align 4, !tbaa !12
  %add.i76.i222.4.ls = add nsw i32 %55, %add.i76.i222.3.ls
  %arrayidx13.i223.4.ls = getelementptr inbounds i32, i32* %3, i64 %inc.i224.3.ls
  store i32 %add.i76.i222.4.ls, i32* %arrayidx13.i223.4.ls, align 4, !tbaa !12
  %inc.i224.4.ls = add nsw i64 %i5.0103.i219.ls, 5
  %arrayidx.i78.i221.5.ls = getelementptr inbounds i32, i32* %1, i64 %inc.i224.4.ls
  %56 = load i32, i32* %arrayidx.i78.i221.5.ls, align 4, !tbaa !12
  %add.i76.i222.5.ls = add nsw i32 %56, %add.i76.i222.4.ls
  %arrayidx13.i223.5.ls = getelementptr inbounds i32, i32* %3, i64 %inc.i224.4.ls
  store i32 %add.i76.i222.5.ls, i32* %arrayidx13.i223.5.ls, align 4, !tbaa !12
  %inc.i224.5.ls = add nsw i64 %i5.0103.i219.ls, 6
  %arrayidx.i78.i221.6.ls = getelementptr inbounds i32, i32* %1, i64 %inc.i224.5.ls
  %57 = load i32, i32* %arrayidx.i78.i221.6.ls, align 4, !tbaa !12
  %add.i76.i222.6.ls = add nsw i32 %57, %add.i76.i222.5.ls
  %arrayidx13.i223.6.ls = getelementptr inbounds i32, i32* %3, i64 %inc.i224.5.ls
  store i32 %add.i76.i222.6.ls, i32* %arrayidx13.i223.6.ls, align 4, !tbaa !12
  %inc.i224.6.ls = add nsw i64 %i5.0103.i219.ls, 7
  %arrayidx.i78.i221.7.ls = getelementptr inbounds i32, i32* %1, i64 %inc.i224.6.ls
  %58 = load i32, i32* %arrayidx.i78.i221.7.ls, align 4, !tbaa !12
  %add.i76.i222.7.ls = add nsw i32 %58, %add.i76.i222.6.ls
  %arrayidx13.i223.7.ls = getelementptr inbounds i32, i32* %3, i64 %inc.i224.6.ls
  store i32 %add.i76.i222.7.ls, i32* %arrayidx13.i223.7.ls, align 4, !tbaa !12
  %inc.i224.7.ls = add nsw i64 %i5.0103.i219.ls, 8
  %exitcond.i225.7.ls = icmp eq i64 %inc.i224.7.ls, %.sroa.speculated.ls
  br i1 %exitcond.i225.7.ls, label %pfor.inc103.ls, label %for.body9.i226.ls

if.then3.i206.ls:                                 ; preds = %if.then.i204.ls
  %cmp98.i205.ls = icmp sgt i64 %.sroa.speculated.ls, %add80.ls
  br i1 %cmp98.i205.ls, label %for.body.i215.preheader.ls, label %pfor.inc103.ls

for.body.i215.preheader.ls:                       ; preds = %if.then3.i206.ls
  %xtraiter347.ls = and i64 %25, 7
  %lcmp.mod348.ls = icmp eq i64 %xtraiter347.ls, 0
  br i1 %lcmp.mod348.ls, label %for.body.i215.prol.loopexit.ls, label %for.body.i215.prol.ls.preheader

for.body.i215.prol.ls.preheader:                  ; preds = %for.body.i215.preheader.ls
  br label %for.body.i215.prol.ls

for.body.i215.prol.ls:                            ; preds = %for.body.i215.prol.ls.preheader, %for.body.i215.prol.ls
  %i.0100.in.i208.prol.ls = phi i64 [ %i.0100.i210.prol.ls, %for.body.i215.prol.ls ], [ %.sroa.speculated.ls, %for.body.i215.prol.ls.preheader ]
  %r.099.i209.prol.ls = phi i32 [ %add.i79.i212.prol.ls, %for.body.i215.prol.ls ], [ %28, %for.body.i215.prol.ls.preheader ]
  %prol.iter349.ls = phi i64 [ %prol.iter349.sub.ls, %for.body.i215.prol.ls ], [ %xtraiter347.ls, %for.body.i215.prol.ls.preheader ]
  %i.0100.i210.prol.ls = add nsw i64 %i.0100.in.i208.prol.ls, -1
  %arrayidx.i.i211.prol.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.prol.ls
  %59 = load i32, i32* %arrayidx.i.i211.prol.ls, align 4, !tbaa !12
  %add.i79.i212.prol.ls = add nsw i32 %59, %r.099.i209.prol.ls
  %arrayidx.i213.prol.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.prol.ls
  store i32 %add.i79.i212.prol.ls, i32* %arrayidx.i213.prol.ls, align 4, !tbaa !12
  %prol.iter349.sub.ls = add nsw i64 %prol.iter349.ls, -1
  %prol.iter349.cmp.ls = icmp eq i64 %prol.iter349.sub.ls, 0
  br i1 %prol.iter349.cmp.ls, label %for.body.i215.prol.loopexit.ls, label %for.body.i215.prol.ls, !llvm.loop !136

for.body.i215.prol.loopexit.ls:                   ; preds = %for.body.i215.prol.ls, %for.body.i215.preheader.ls
  %i.0100.in.i208.unr.ls = phi i64 [ %.sroa.speculated.ls, %for.body.i215.preheader.ls ], [ %i.0100.i210.prol.ls, %for.body.i215.prol.ls ]
  %r.099.i209.unr.ls = phi i32 [ %28, %for.body.i215.preheader.ls ], [ %add.i79.i212.prol.ls, %for.body.i215.prol.ls ]
  %60 = icmp ult i64 %27, 7
  br i1 %60, label %pfor.inc103.ls, label %for.body.i215.ls.preheader

for.body.i215.ls.preheader:                       ; preds = %for.body.i215.prol.loopexit.ls
  br label %for.body.i215.ls

for.body.i215.ls:                                 ; preds = %for.body.i215.ls.preheader, %for.body.i215.ls
  %i.0100.in.i208.ls = phi i64 [ %i.0100.i210.7.ls, %for.body.i215.ls ], [ %i.0100.in.i208.unr.ls, %for.body.i215.ls.preheader ]
  %r.099.i209.ls = phi i32 [ %add.i79.i212.7.ls, %for.body.i215.ls ], [ %r.099.i209.unr.ls, %for.body.i215.ls.preheader ]
  %i.0100.i210.ls = add nsw i64 %i.0100.in.i208.ls, -1
  %arrayidx.i.i211.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.ls
  %61 = load i32, i32* %arrayidx.i.i211.ls, align 4, !tbaa !12
  %add.i79.i212.ls = add nsw i32 %61, %r.099.i209.ls
  %arrayidx.i213.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.ls
  store i32 %add.i79.i212.ls, i32* %arrayidx.i213.ls, align 4, !tbaa !12
  %i.0100.i210.1.ls = add nsw i64 %i.0100.in.i208.ls, -2
  %arrayidx.i.i211.1.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.1.ls
  %62 = load i32, i32* %arrayidx.i.i211.1.ls, align 4, !tbaa !12
  %add.i79.i212.1.ls = add nsw i32 %62, %add.i79.i212.ls
  %arrayidx.i213.1.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.1.ls
  store i32 %add.i79.i212.1.ls, i32* %arrayidx.i213.1.ls, align 4, !tbaa !12
  %i.0100.i210.2.ls = add nsw i64 %i.0100.in.i208.ls, -3
  %arrayidx.i.i211.2.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.2.ls
  %63 = load i32, i32* %arrayidx.i.i211.2.ls, align 4, !tbaa !12
  %add.i79.i212.2.ls = add nsw i32 %63, %add.i79.i212.1.ls
  %arrayidx.i213.2.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.2.ls
  store i32 %add.i79.i212.2.ls, i32* %arrayidx.i213.2.ls, align 4, !tbaa !12
  %i.0100.i210.3.ls = add nsw i64 %i.0100.in.i208.ls, -4
  %arrayidx.i.i211.3.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.3.ls
  %64 = load i32, i32* %arrayidx.i.i211.3.ls, align 4, !tbaa !12
  %add.i79.i212.3.ls = add nsw i32 %64, %add.i79.i212.2.ls
  %arrayidx.i213.3.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.3.ls
  store i32 %add.i79.i212.3.ls, i32* %arrayidx.i213.3.ls, align 4, !tbaa !12
  %i.0100.i210.4.ls = add nsw i64 %i.0100.in.i208.ls, -5
  %arrayidx.i.i211.4.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.4.ls
  %65 = load i32, i32* %arrayidx.i.i211.4.ls, align 4, !tbaa !12
  %add.i79.i212.4.ls = add nsw i32 %65, %add.i79.i212.3.ls
  %arrayidx.i213.4.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.4.ls
  store i32 %add.i79.i212.4.ls, i32* %arrayidx.i213.4.ls, align 4, !tbaa !12
  %i.0100.i210.5.ls = add nsw i64 %i.0100.in.i208.ls, -6
  %arrayidx.i.i211.5.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.5.ls
  %66 = load i32, i32* %arrayidx.i.i211.5.ls, align 4, !tbaa !12
  %add.i79.i212.5.ls = add nsw i32 %66, %add.i79.i212.4.ls
  %arrayidx.i213.5.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.5.ls
  store i32 %add.i79.i212.5.ls, i32* %arrayidx.i213.5.ls, align 4, !tbaa !12
  %i.0100.i210.6.ls = add nsw i64 %i.0100.in.i208.ls, -7
  %arrayidx.i.i211.6.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.6.ls
  %67 = load i32, i32* %arrayidx.i.i211.6.ls, align 4, !tbaa !12
  %add.i79.i212.6.ls = add nsw i32 %67, %add.i79.i212.5.ls
  %arrayidx.i213.6.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.6.ls
  store i32 %add.i79.i212.6.ls, i32* %arrayidx.i213.6.ls, align 4, !tbaa !12
  %i.0100.i210.7.ls = add nsw i64 %i.0100.in.i208.ls, -8
  %arrayidx.i.i211.7.ls = getelementptr inbounds i32, i32* %1, i64 %i.0100.i210.7.ls
  %68 = load i32, i32* %arrayidx.i.i211.7.ls, align 4, !tbaa !12
  %add.i79.i212.7.ls = add nsw i32 %68, %add.i79.i212.6.ls
  %arrayidx.i213.7.ls = getelementptr inbounds i32, i32* %3, i64 %i.0100.i210.7.ls
  store i32 %add.i79.i212.7.ls, i32* %arrayidx.i213.7.ls, align 4, !tbaa !12
  %cmp.i214.7.ls = icmp sgt i64 %i.0100.i210.7.ls, %add80.ls
  br i1 %cmp.i214.7.ls, label %for.body.i215.ls, label %pfor.inc103.ls

pfor.inc103.ls:                                   ; preds = %for.body36.i249.ls, %for.body24.i238.ls, %for.body9.i226.ls, %for.body.i215.ls, %if.else31.i240.ls, %for.body36.i249.prol.loopexit.ls, %if.then18.i229.ls, %for.body24.i238.prol.loopexit.ls, %if.else.i217.ls, %for.body9.i226.prol.loopexit.ls, %if.then3.i206.ls, %for.body.i215.prol.loopexit.ls
  %69 = add i64 %__begin63.0278.ls, 1
  %70 = icmp ult i64 %69, %.ls1
  br i1 %70, label %pfor.detach72.ls, label %pfor.cond.cleanup71.loopexit.ls.split
}

declare %struct.__cilkrts_worker* @__cilkrts_get_tls_worker() local_unnamed_addr

declare %struct.__cilkrts_worker* @__cilkrts_bind_thread_1() local_unnamed_addr

declare void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame*) local_unnamed_addr

; Function Attrs: noinline uwtable
define internal fastcc void @_ZN10blockTransI5eventiE6transREiiiiii_det.achd.cilk(%struct.blockTrans* align 1 %this.cilk, i32 %rStart.cilk, i32 %rCount.cilk, i32 %rLength.cilk, i32 %cStart.cilk, i32 %div.cilk, i32 %cLength.cilk) unnamed_addr #16 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.then32.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  invoke void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %this.cilk, i32 %rStart.cilk, i32 %rCount.cilk, i32 %rLength.cilk, i32 %cStart.cilk, i32 %div.cilk, i32 %cLength.cilk)
          to label %invoke.cont.cilk unwind label %lpad.cilk

body.i:                                           ; preds = %invoke.cont.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont.cilk, %body.i
  ret void

lpad.cilk:                                        ; preds = %if.then32.cilk
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = load atomic i32, i32* %1 acquire, align 8
  %21 = or i32 %20, 16
  store atomic i32 %21, i32* %1 release, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %19, i8** %22 release, align 8
  %23 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %23, i64 0, i32 9
  %26 = bitcast %struct.__cilkrts_stack_frame** %25 to i64*
  store atomic i64 %24, i64* %26 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %27 = load atomic i32, i32* %1 acquire, align 8
  %28 = icmp eq i32 %27, 16777216
  br i1 %28, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad.cilk, %body.i1
  resume { i8*, i32 } %18

invoke.cont.cilk:                                 ; preds = %if.then32.cilk
  %29 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %29, i64 0, i32 9
  %32 = bitcast %struct.__cilkrts_stack_frame** %31 to i64*
  store atomic i64 %30, i64* %32 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %33 = load atomic i32, i32* %1 acquire, align 8
  %34 = icmp eq i32 %33, 16777216
  br i1 %34, label %__cilk_parent_epilogue.exit, label %body.i
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #17

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #2

declare %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() local_unnamed_addr

; Function Attrs: noinline stealable uwtable
define internal fastcc void @_ZN10blockTransI5eventiE6transREiiiiii_det.achd47.cilk(%struct.blockTrans* align 1 %this.cilk, i32 %rStart.cilk, i32 %div43.cilk, i32 %rLength.cilk, i32 %cStart.cilk, i32 %cCount.cilk, i32 %cLength.cilk) unnamed_addr #18 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.else41.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  invoke void @_ZN10blockTransI5eventiE6transREiiiiii(%struct.blockTrans* %this.cilk, i32 %rStart.cilk, i32 %div43.cilk, i32 %rLength.cilk, i32 %cStart.cilk, i32 %cCount.cilk, i32 %cLength.cilk)
          to label %invoke.cont51.cilk unwind label %lpad48.cilk

body.i:                                           ; preds = %invoke.cont51.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont51.cilk, %body.i
  ret void

lpad48.cilk:                                      ; preds = %if.else41.cilk
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = load atomic i32, i32* %1 acquire, align 8
  %21 = or i32 %20, 16
  store atomic i32 %21, i32* %1 release, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %19, i8** %22 release, align 8
  %23 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %23, i64 0, i32 9
  %26 = bitcast %struct.__cilkrts_stack_frame** %25 to i64*
  store atomic i64 %24, i64* %26 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %27 = load atomic i32, i32* %1 acquire, align 8
  %28 = icmp eq i32 %27, 16777216
  br i1 %28, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad48.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad48.cilk, %body.i1
  resume { i8*, i32 } %18

invoke.cont51.cilk:                               ; preds = %if.else41.cilk
  %29 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %29, i64 0, i32 9
  %32 = bitcast %struct.__cilkrts_stack_frame** %31 to i64*
  store atomic i64 %30, i64* %32 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %33 = load atomic i32, i32* %1 acquire, align 8
  %34 = icmp eq i32 %33, 16777216
  br i1 %34, label %__cilk_parent_epilogue.exit, label %body.i
}

declare void @__cilkrts_sync(%struct.__cilkrts_stack_frame*) local_unnamed_addr

declare void @__cilkrts_rethrow(%struct.__cilkrts_stack_frame*) local_unnamed_addr

; Function Attrs: noinline uwtable
define internal fastcc void @_ZN9transposeIiiE6transREiiiiii_det.achd.cilk(%struct.transpose* align 1 %this.cilk, i32 %rStart.cilk, i32 %rCount.cilk, i32 %rLength.cilk, i32 %cStart.cilk, i32 %div.cilk, i32 %cLength.cilk) unnamed_addr #16 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.then18.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  invoke void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %this.cilk, i32 %rStart.cilk, i32 %rCount.cilk, i32 %rLength.cilk, i32 %cStart.cilk, i32 %div.cilk, i32 %cLength.cilk)
          to label %invoke.cont.cilk unwind label %lpad.cilk

body.i:                                           ; preds = %invoke.cont.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont.cilk, %body.i
  ret void

lpad.cilk:                                        ; preds = %if.then18.cilk
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = load atomic i32, i32* %1 acquire, align 8
  %21 = or i32 %20, 16
  store atomic i32 %21, i32* %1 release, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %19, i8** %22 release, align 8
  %23 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %23, i64 0, i32 9
  %26 = bitcast %struct.__cilkrts_stack_frame** %25 to i64*
  store atomic i64 %24, i64* %26 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %27 = load atomic i32, i32* %1 acquire, align 8
  %28 = icmp eq i32 %27, 16777216
  br i1 %28, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad.cilk, %body.i1
  resume { i8*, i32 } %18

invoke.cont.cilk:                                 ; preds = %if.then18.cilk
  %29 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %29, i64 0, i32 9
  %32 = bitcast %struct.__cilkrts_stack_frame** %31 to i64*
  store atomic i64 %30, i64* %32 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %33 = load atomic i32, i32* %1 acquire, align 8
  %34 = icmp eq i32 %33, 16777216
  br i1 %34, label %__cilk_parent_epilogue.exit, label %body.i
}

; Function Attrs: noinline stealable uwtable
define internal fastcc void @_ZN9transposeIiiE6transREiiiiii_det.achd33.cilk(%struct.transpose* align 1 %this.cilk, i32 %rStart.cilk, i32 %div29.cilk, i32 %rLength.cilk, i32 %cStart.cilk, i32 %cCount.cilk, i32 %cLength.cilk) unnamed_addr #18 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.else27.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  invoke void @_ZN9transposeIiiE6transREiiiiii(%struct.transpose* %this.cilk, i32 %rStart.cilk, i32 %div29.cilk, i32 %rLength.cilk, i32 %cStart.cilk, i32 %cCount.cilk, i32 %cLength.cilk)
          to label %invoke.cont37.cilk unwind label %lpad34.cilk

body.i:                                           ; preds = %invoke.cont37.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont37.cilk, %body.i
  ret void

lpad34.cilk:                                      ; preds = %if.else27.cilk
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = load atomic i32, i32* %1 acquire, align 8
  %21 = or i32 %20, 16
  store atomic i32 %21, i32* %1 release, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %19, i8** %22 release, align 8
  %23 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %23, i64 0, i32 9
  %26 = bitcast %struct.__cilkrts_stack_frame** %25 to i64*
  store atomic i64 %24, i64* %26 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %27 = load atomic i32, i32* %1 acquire, align 8
  %28 = icmp eq i32 %27, 16777216
  br i1 %28, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad34.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad34.cilk, %body.i1
  resume { i8*, i32 } %18

invoke.cont37.cilk:                               ; preds = %if.else27.cilk
  %29 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %29, i64 0, i32 9
  %32 = bitcast %struct.__cilkrts_stack_frame** %31 to i64*
  store atomic i64 %30, i64* %32 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %33 = load atomic i32, i32* %1 acquire, align 8
  %34 = icmp eq i32 %33, 16777216
  br i1 %34, label %__cilk_parent_epilogue.exit, label %body.i
}

; Function Attrs: noinline uwtable
define internal fastcc void @_Z9quickSortI5event6cmpValiEvPT_T1_T0__det.achd.cilk({ %struct.event*, %struct.event* } %call.cilk, %struct.event* align 1 %A.cilk) unnamed_addr #16 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.else.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  %18 = extractvalue { %struct.event*, %struct.event* } %call.cilk, 0
  %sub.ptr.lhs.cast.cilk = ptrtoint %struct.event* %18 to i64
  %sub.ptr.rhs.cast.cilk = ptrtoint %struct.event* %A.cilk to i64
  %sub.ptr.sub.cilk = sub i64 %sub.ptr.lhs.cast.cilk, %sub.ptr.rhs.cast.cilk
  %sub.ptr.div.cilk = ashr exact i64 %sub.ptr.sub.cilk, 3
  invoke void @_Z9quickSortI5event6cmpVallEvPT_T1_T0_(%struct.event* %A.cilk, i64 %sub.ptr.div.cilk)
          to label %invoke.cont.cilk unwind label %lpad.cilk

body.i:                                           ; preds = %invoke.cont.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont.cilk, %body.i
  ret void

lpad.cilk:                                        ; preds = %if.else.cilk
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = load atomic i32, i32* %1 acquire, align 8
  %22 = or i32 %21, 16
  store atomic i32 %22, i32* %1 release, align 8
  %23 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %20, i8** %23 release, align 8
  %24 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %24, i64 0, i32 9
  %27 = bitcast %struct.__cilkrts_stack_frame** %26 to i64*
  store atomic i64 %25, i64* %27 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %28 = load atomic i32, i32* %1 acquire, align 8
  %29 = icmp eq i32 %28, 16777216
  br i1 %29, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad.cilk, %body.i1
  resume { i8*, i32 } %19

invoke.cont.cilk:                                 ; preds = %if.else.cilk
  %30 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %30, i64 0, i32 9
  %33 = bitcast %struct.__cilkrts_stack_frame** %32 to i64*
  store atomic i64 %31, i64* %33 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %34 = load atomic i32, i32* %1 acquire, align 8
  %35 = icmp eq i32 %34, 16777216
  br i1 %35, label %__cilk_parent_epilogue.exit, label %body.i
}

; Function Attrs: noinline uwtable
define internal fastcc void @_ZN8treeNode3delEPS__det.achd.cilk(%struct.treeNode* align 1 %.cilk) unnamed_addr #16 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.else.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  invoke void @_ZN8treeNode3delEPS_(%struct.treeNode* %.cilk)
          to label %invoke.cont.cilk unwind label %lpad.cilk

body.i:                                           ; preds = %invoke.cont.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont.cilk, %body.i
  ret void

lpad.cilk:                                        ; preds = %if.else.cilk
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = load atomic i32, i32* %1 acquire, align 8
  %21 = or i32 %20, 16
  store atomic i32 %21, i32* %1 release, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %19, i8** %22 release, align 8
  %23 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %23, i64 0, i32 9
  %26 = bitcast %struct.__cilkrts_stack_frame** %25 to i64*
  store atomic i64 %24, i64* %26 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %27 = load atomic i32, i32* %1 acquire, align 8
  %28 = icmp eq i32 %27, 16777216
  br i1 %28, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad.cilk, %body.i1
  resume { i8*, i32 } %18

invoke.cont.cilk:                                 ; preds = %if.else.cilk
  %29 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %29, i64 0, i32 9
  %32 = bitcast %struct.__cilkrts_stack_frame** %31 to i64*
  store atomic i64 %30, i64* %32 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %33 = load atomic i32, i32* %1 acquire, align 8
  %34 = icmp eq i32 %33, 16777216
  br i1 %34, label %__cilk_parent_epilogue.exit, label %body.i
}

; Function Attrs: noinline uwtable
define internal fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd207.cilk(%struct.range** nocapture readonly align 1 %boxes.cilk, %struct.event** align 16 %arrayidx157.cilk, %struct.range* align 16 %array.begin67.cilk, i32 %conv169.cilk, i32 %sub.cilk, %struct.treeNode** nocapture align 8 %L.cilk) unnamed_addr #16 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
for.inc193.2.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  %call212.cilk = invoke %struct.treeNode* @_Z12generateNodePP5rangePP5eventS0_ii(%struct.range** nonnull %boxes.cilk, %struct.event** nonnull %arrayidx157.cilk, %struct.range* nonnull %array.begin67.cilk, i32 %conv169.cilk, i32 %sub.cilk)
          to label %invoke.cont211.cilk unwind label %lpad208.cilk

body.i:                                           ; preds = %invoke.cont211.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont211.cilk, %body.i
  ret void

lpad208.cilk:                                     ; preds = %for.inc193.2.cilk
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = load atomic i32, i32* %1 acquire, align 8
  %21 = or i32 %20, 16
  store atomic i32 %21, i32* %1 release, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %19, i8** %22 release, align 8
  %23 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %23, i64 0, i32 9
  %26 = bitcast %struct.__cilkrts_stack_frame** %25 to i64*
  store atomic i64 %24, i64* %26 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %27 = load atomic i32, i32* %1 acquire, align 8
  %28 = icmp eq i32 %27, 16777216
  br i1 %28, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad208.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad208.cilk, %body.i1
  resume { i8*, i32 } %18

invoke.cont211.cilk:                              ; preds = %for.inc193.2.cilk
  store %struct.treeNode* %call212.cilk, %struct.treeNode** %L.cilk, align 8
  %29 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %29, i64 0, i32 9
  %32 = bitcast %struct.__cilkrts_stack_frame** %31 to i64*
  store atomic i64 %30, i64* %32 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %33 = load atomic i32, i32* %1 acquire, align 8
  %34 = icmp eq i32 %33, 16777216
  br i1 %34, label %__cilk_parent_epilogue.exit, label %body.i
}

; Function Attrs: noinline stealable uwtable
define internal fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd130.1.cilk(%struct.range* nocapture readonly align 1 %.cilk, %struct.event* align 1 %.cilk1, float %.cilk2, i32 %n.cilk, i64* nocapture align 16 %X.sroa.10.cilk, i64* nocapture align 8 %X.sroa.12.cilk, i64* nocapture align 16 %X.sroa.13.cilk, i64* nocapture align 8 %X.sroa.15.cilk) unnamed_addr #18 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
for.inc145.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  %det.ref.tmp129.1.cilk = alloca %"struct.std::pair", align 8
  %18 = bitcast %"struct.std::pair"* %det.ref.tmp129.1.cilk to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #2
  invoke void @_Z11splitEventsP5rangeP5eventfi(%"struct.std::pair"* nonnull sret %det.ref.tmp129.1.cilk, %struct.range* %.cilk, %struct.event* %.cilk1, float %.cilk2, i32 %n.cilk)
          to label %invoke.cont134.1.cilk unwind label %lpad131.cilk

body.i:                                           ; preds = %invoke.cont134.1.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont134.1.cilk, %body.i
  ret void

invoke.cont134.1.cilk:                            ; preds = %for.inc145.cilk
  %X.sroa.10.32..sroa_cast.cilk = bitcast %"struct.std::pair"* %det.ref.tmp129.1.cilk to i64*
  %X.sroa.10.32.copyload.cilk = load i64, i64* %X.sroa.10.32..sroa_cast.cilk, align 8
  store i64 %X.sroa.10.32.copyload.cilk, i64* %X.sroa.10.cilk, align 16
  %X.sroa.12.32..sroa_idx418.cilk = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %det.ref.tmp129.1.cilk, i64 0, i32 0, i32 1
  %X.sroa.12.32.copyload.cilk = load i64, i64* %X.sroa.12.32..sroa_idx418.cilk, align 8
  store i64 %X.sroa.12.32.copyload.cilk, i64* %X.sroa.12.cilk, align 8
  %X.sroa.13.48..sroa_idx.cilk = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %det.ref.tmp129.1.cilk, i64 0, i32 1
  %X.sroa.13.48..sroa_cast.cilk = bitcast %struct._seq* %X.sroa.13.48..sroa_idx.cilk to i64*
  %X.sroa.13.48.copyload.cilk = load i64, i64* %X.sroa.13.48..sroa_cast.cilk, align 8
  store i64 %X.sroa.13.48.copyload.cilk, i64* %X.sroa.13.cilk, align 16
  %X.sroa.15.48..sroa_idx423.cilk = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %det.ref.tmp129.1.cilk, i64 0, i32 1, i32 1
  %X.sroa.15.48.copyload.cilk = load i64, i64* %X.sroa.15.48..sroa_idx423.cilk, align 8
  store i64 %X.sroa.15.48.copyload.cilk, i64* %X.sroa.15.cilk, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #2
  %19 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %19, i64 0, i32 9
  %22 = bitcast %struct.__cilkrts_stack_frame** %21 to i64*
  store atomic i64 %20, i64* %22 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %23 = load atomic i32, i32* %1 acquire, align 8
  %24 = icmp eq i32 %23, 16777216
  br i1 %24, label %__cilk_parent_epilogue.exit, label %body.i

lpad131.cilk:                                     ; preds = %for.inc145.cilk
  %25 = landingpad { i8*, i32 }
          catch i8* null
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #2
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = load atomic i32, i32* %1 acquire, align 8
  %28 = or i32 %27, 16
  store atomic i32 %28, i32* %1 release, align 8
  %29 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %26, i8** %29 release, align 8
  %30 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %30, i64 0, i32 9
  %33 = bitcast %struct.__cilkrts_stack_frame** %32 to i64*
  store atomic i64 %31, i64* %33 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %34 = load atomic i32, i32* %1 acquire, align 8
  %35 = icmp eq i32 %34, 16777216
  br i1 %35, label %__cilk_parent_epilogue.exit4, label %body.i3

body.i3:                                          ; preds = %lpad131.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit4

__cilk_parent_epilogue.exit4:                     ; preds = %lpad131.cilk, %body.i3
  resume { i8*, i32 } %25
}

; Function Attrs: noinline stealable uwtable
define internal fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd.2.cilk(%struct.event* nocapture readonly align 1 %.cilk, <2 x float> %agg.tmp.sroa.0.0.copyload.2.cilk, <2 x float> %agg.tmp7.sroa.0.0.copyload.2.cilk, <2 x float> %agg.tmp10.sroa.0.0.copyload.2.cilk, i32 %n.cilk, %struct.cutInfo* nocapture align 16 %arrayidx.2.cilk, [3 x %struct.cutInfo]* nocapture align 16 %cuts.cilk) unnamed_addr #18 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
for.inc.1.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  %call19.2.cilk = invoke { <2 x float>, i64 } @_Z7bestCutP5event5rangeS1_S1_i(%struct.event* %.cilk, <2 x float> %agg.tmp.sroa.0.0.copyload.2.cilk, <2 x float> %agg.tmp7.sroa.0.0.copyload.2.cilk, <2 x float> %agg.tmp10.sroa.0.0.copyload.2.cilk, i32 %n.cilk)
          to label %invoke.cont18.2.cilk unwind label %lpad15.cilk

body.i:                                           ; preds = %invoke.cont18.2.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont18.2.cilk, %body.i
  ret void

invoke.cont18.2.cilk:                             ; preds = %for.inc.1.cilk
  %18 = extractvalue { <2 x float>, i64 } %call19.2.cilk, 0
  %19 = extractvalue { <2 x float>, i64 } %call19.2.cilk, 1
  %det.ref.tmp.sroa.0.0..sroa_cast260.2.cilk = bitcast %struct.cutInfo* %arrayidx.2.cilk to <2 x float>*
  store <2 x float> %18, <2 x float>* %det.ref.tmp.sroa.0.0..sroa_cast260.2.cilk, align 16
  %det.ref.tmp.sroa.5.0..sroa_idx263.2.cilk = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts.cilk, i64 0, i64 2, i32 2
  %det.ref.tmp.sroa.5.0..sroa_cast264.2.cilk = bitcast i32* %det.ref.tmp.sroa.5.0..sroa_idx263.2.cilk to i64*
  store i64 %19, i64* %det.ref.tmp.sroa.5.0..sroa_cast264.2.cilk, align 8
  %20 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %20, i64 0, i32 9
  %23 = bitcast %struct.__cilkrts_stack_frame** %22 to i64*
  store atomic i64 %21, i64* %23 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %24 = load atomic i32, i32* %1 acquire, align 8
  %25 = icmp eq i32 %24, 16777216
  br i1 %25, label %__cilk_parent_epilogue.exit, label %body.i

lpad15.cilk:                                      ; preds = %for.inc.1.cilk
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = load atomic i32, i32* %1 acquire, align 8
  %29 = or i32 %28, 16
  store atomic i32 %29, i32* %1 release, align 8
  %30 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %27, i8** %30 release, align 8
  %31 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %31, i64 0, i32 9
  %34 = bitcast %struct.__cilkrts_stack_frame** %33 to i64*
  store atomic i64 %32, i64* %34 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %35 = load atomic i32, i32* %1 acquire, align 8
  %36 = icmp eq i32 %35, 16777216
  br i1 %36, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad15.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad15.cilk, %body.i1
  resume { i8*, i32 } %26
}

; Function Attrs: noinline stealable uwtable
define internal fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd.1.cilk(%struct.event* nocapture readonly align 1 %.cilk, <2 x float> %agg.tmp.sroa.0.0.copyload.1.cilk, <2 x float> %agg.tmp7.sroa.0.0.copyload.1.cilk, <2 x float> %agg.tmp10.sroa.0.0.copyload.1.cilk, i32 %n.cilk, %struct.cutInfo* nocapture align 16 %arrayidx.1.cilk, [3 x %struct.cutInfo]* nocapture align 16 %cuts.cilk) unnamed_addr #18 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
for.inc.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  %call19.1.cilk = invoke { <2 x float>, i64 } @_Z7bestCutP5event5rangeS1_S1_i(%struct.event* %.cilk, <2 x float> %agg.tmp.sroa.0.0.copyload.1.cilk, <2 x float> %agg.tmp7.sroa.0.0.copyload.1.cilk, <2 x float> %agg.tmp10.sroa.0.0.copyload.1.cilk, i32 %n.cilk)
          to label %invoke.cont18.1.cilk unwind label %lpad15.cilk

body.i:                                           ; preds = %invoke.cont18.1.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont18.1.cilk, %body.i
  ret void

invoke.cont18.1.cilk:                             ; preds = %for.inc.cilk
  %18 = extractvalue { <2 x float>, i64 } %call19.1.cilk, 0
  %19 = extractvalue { <2 x float>, i64 } %call19.1.cilk, 1
  %det.ref.tmp.sroa.0.0..sroa_cast260.1.cilk = bitcast %struct.cutInfo* %arrayidx.1.cilk to <2 x float>*
  store <2 x float> %18, <2 x float>* %det.ref.tmp.sroa.0.0..sroa_cast260.1.cilk, align 16
  %det.ref.tmp.sroa.5.0..sroa_idx263.1.cilk = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts.cilk, i64 0, i64 1, i32 2
  %det.ref.tmp.sroa.5.0..sroa_cast264.1.cilk = bitcast i32* %det.ref.tmp.sroa.5.0..sroa_idx263.1.cilk to i64*
  store i64 %19, i64* %det.ref.tmp.sroa.5.0..sroa_cast264.1.cilk, align 8
  %20 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %20, i64 0, i32 9
  %23 = bitcast %struct.__cilkrts_stack_frame** %22 to i64*
  store atomic i64 %21, i64* %23 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %24 = load atomic i32, i32* %1 acquire, align 8
  %25 = icmp eq i32 %24, 16777216
  br i1 %25, label %__cilk_parent_epilogue.exit, label %body.i

lpad15.cilk:                                      ; preds = %for.inc.cilk
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = load atomic i32, i32* %1 acquire, align 8
  %29 = or i32 %28, 16
  store atomic i32 %29, i32* %1 release, align 8
  %30 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %27, i8** %30 release, align 8
  %31 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %31, i64 0, i32 9
  %34 = bitcast %struct.__cilkrts_stack_frame** %33 to i64*
  store atomic i64 %32, i64* %34 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %35 = load atomic i32, i32* %1 acquire, align 8
  %36 = icmp eq i32 %35, 16777216
  br i1 %36, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad15.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad15.cilk, %body.i1
  resume { i8*, i32 } %26
}

; Function Attrs: noinline stealable uwtable
define internal fastcc void @_Z12generateNodePP5rangePP5eventS0_ii_det.achd.cilk(%struct.event* nocapture readonly align 1 %.cilk, <2 x float> %agg.tmp.sroa.0.0.copyload.cilk, <2 x float> %agg.tmp7.sroa.0.0.copyload.cilk, <2 x float> %agg.tmp10.sroa.0.0.copyload.cilk, i32 %n.cilk, [3 x %struct.cutInfo]* nocapture align 16 %cuts.cilk) unnamed_addr #18 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.end.cilk:
  %__cilkrts_sf = alloca %struct.__cilkrts_stack_frame, align 8
  %0 = tail call %struct.__cilkrts_worker* @__cilkrts_get_tls_worker_fast() #2
  %1 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 0
  store atomic i32 16777216, i32* %1 release, align 8
  %2 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %0, i64 0, i32 9
  %3 = load atomic %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %2 acquire, align 8
  %4 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 2
  store atomic %struct.__cilkrts_stack_frame* %3, %struct.__cilkrts_stack_frame** %4 release, align 8
  %5 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 3
  store atomic %struct.__cilkrts_worker* %0, %struct.__cilkrts_worker** %5 release, align 8
  store atomic %struct.__cilkrts_stack_frame* %__cilkrts_sf, %struct.__cilkrts_stack_frame** %2 release, align 8
  %6 = load %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5, align 8
  %7 = bitcast %struct.__cilkrts_stack_frame** %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 0
  %10 = load atomic %struct.__cilkrts_stack_frame**, %struct.__cilkrts_stack_frame*** %9 acquire, align 8
  %11 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 0
  store atomic i64 0, i64* %11 release, align 8
  %12 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 9, i32 0
  %13 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %6, i64 0, i32 12, i32 1
  store atomic %struct.__cilkrts_pedigree* %12, %struct.__cilkrts_pedigree** %13 release, align 8
  fence release
  %14 = bitcast %struct.__cilkrts_stack_frame** %10 to i64*
  store volatile i64 %8, i64* %14, align 8
  %15 = getelementptr %struct.__cilkrts_stack_frame*, %struct.__cilkrts_stack_frame** %10, i64 1
  store atomic %struct.__cilkrts_stack_frame** %15, %struct.__cilkrts_stack_frame*** %9 release, align 8
  %16 = load atomic i32, i32* %1 acquire, align 8
  %17 = or i32 %16, 4
  store atomic i32 %17, i32* %1 release, align 8
  %call19.cilk = invoke { <2 x float>, i64 } @_Z7bestCutP5event5rangeS1_S1_i(%struct.event* %.cilk, <2 x float> %agg.tmp.sroa.0.0.copyload.cilk, <2 x float> %agg.tmp7.sroa.0.0.copyload.cilk, <2 x float> %agg.tmp10.sroa.0.0.copyload.cilk, i32 %n.cilk)
          to label %invoke.cont18.cilk unwind label %lpad15.cilk

body.i:                                           ; preds = %invoke.cont18.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit

__cilk_parent_epilogue.exit:                      ; preds = %invoke.cont18.cilk, %body.i
  ret void

invoke.cont18.cilk:                               ; preds = %if.end.cilk
  %18 = extractvalue { <2 x float>, i64 } %call19.cilk, 0
  %19 = extractvalue { <2 x float>, i64 } %call19.cilk, 1
  %det.ref.tmp.sroa.0.0..sroa_cast260.cilk = bitcast [3 x %struct.cutInfo]* %cuts.cilk to <2 x float>*
  store <2 x float> %18, <2 x float>* %det.ref.tmp.sroa.0.0..sroa_cast260.cilk, align 16
  %det.ref.tmp.sroa.5.0..sroa_idx263.cilk = getelementptr inbounds [3 x %struct.cutInfo], [3 x %struct.cutInfo]* %cuts.cilk, i64 0, i64 0, i32 2
  %det.ref.tmp.sroa.5.0..sroa_cast264.cilk = bitcast i32* %det.ref.tmp.sroa.5.0..sroa_idx263.cilk to i64*
  store i64 %19, i64* %det.ref.tmp.sroa.5.0..sroa_cast264.cilk, align 8
  %20 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %20, i64 0, i32 9
  %23 = bitcast %struct.__cilkrts_stack_frame** %22 to i64*
  store atomic i64 %21, i64* %23 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %24 = load atomic i32, i32* %1 acquire, align 8
  %25 = icmp eq i32 %24, 16777216
  br i1 %25, label %__cilk_parent_epilogue.exit, label %body.i

lpad15.cilk:                                      ; preds = %if.end.cilk
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = load atomic i32, i32* %1 acquire, align 8
  %29 = or i32 %28, 16
  store atomic i32 %29, i32* %1 release, align 8
  %30 = getelementptr inbounds %struct.__cilkrts_stack_frame, %struct.__cilkrts_stack_frame* %__cilkrts_sf, i64 0, i32 4
  store atomic i8* %27, i8** %30 release, align 8
  %31 = load atomic %struct.__cilkrts_worker*, %struct.__cilkrts_worker** %5 acquire, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.__cilkrts_worker, %struct.__cilkrts_worker* %31, i64 0, i32 9
  %34 = bitcast %struct.__cilkrts_stack_frame** %33 to i64*
  store atomic i64 %32, i64* %34 release, align 8
  store atomic %struct.__cilkrts_stack_frame* null, %struct.__cilkrts_stack_frame** %4 release, align 8
  %35 = load atomic i32, i32* %1 acquire, align 8
  %36 = icmp eq i32 %35, 16777216
  br i1 %36, label %__cilk_parent_epilogue.exit2, label %body.i1

body.i1:                                          ; preds = %lpad15.cilk
  call void @__cilkrts_leave_frame(%struct.__cilkrts_stack_frame* nonnull %__cilkrts_sf) #2
  br label %__cilk_parent_epilogue.exit2

__cilk_parent_epilogue.exit2:                     ; preds = %lpad15.cilk, %body.i1
  resume { i8*, i32 } %26
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach123.ls({ %struct.range**, %struct.event** }* nocapture readonly, i64, i64) local_unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  tail call void @_Z7rayCast9trianglesI8_point3dIdEEP3rayIS1_Ei_pfor.detach123.2.ls({ %struct.range**, %struct.event** }* %0, i64 %1, i64 %2) #6
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { stealable uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readnone speculatable }
attributes #16 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind readnone }
attributes #18 = { noinline stealable uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clflushopt,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-prfchw,-rdseed,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { builtin }
attributes #20 = { builtin nounwind }
attributes #21 = { returns_twice }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0 (git@github.com:wsmoses/Tapir-Clang.git 0a849e34ee83a0b90f3d0bc49dec81f1cb4bbcb8) (git@github.com:wsmoses/Tapir-LLVM.git 5f9127b394c065008fa7f89b45dcb7afc53cd23d)"}
!2 = !{!3, !4, i64 4}
!3 = !{!"_ZTS5range", !4, i64 0, !4, i64 4}
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!3, !4, i64 0}
!8 = !{!9, !10, i64 4}
!9 = !{!"_ZTS5event", !4, i64 0, !10, i64 4}
!10 = !{!"int", !5, i64 0}
!11 = !{!9, !4, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!4, !4, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_Z17splitEventsSerialP5rangeP5eventfi: %agg.result"}
!16 = distinct !{!16, !"_Z17splitEventsSerialP5rangeP5eventfi"}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!20, !10, i64 8}
!20 = !{!"_ZTS7cutInfo", !4, i64 0, !4, i64 4, !10, i64 8, !10, i64 12}
!21 = !{!20, !10, i64 12}
!22 = !{!23, !18, i64 0}
!23 = !{!"_ZTS8treeNode", !18, i64 0, !18, i64 8, !5, i64 16, !10, i64 40, !4, i64 44, !18, i64 48, !10, i64 56, !10, i64 60}
!24 = !{!23, !18, i64 8}
!25 = !{!23, !10, i64 40}
!26 = !{!23, !4, i64 44}
!27 = !{!23, !18, i64 48}
!28 = !{!23, !10, i64 56}
!29 = !{!23, !10, i64 60}
!30 = !{!20, !4, i64 0}
!31 = !{!20, !4, i64 4}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!35, !18, i64 8}
!35 = !{!"_ZTS9trianglesI8_point3dIdEE", !10, i64 0, !10, i64 4, !18, i64 8, !18, i64 16}
!36 = !{!35, !18, i64 16}
!37 = !{!38, !38, i64 0}
!38 = !{!"double", !5, i64 0}
!39 = !{!40, !41, i64 24}
!40 = !{!"_ZTS5timer", !38, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !42, i64 28}
!41 = !{!"bool", !5, i64 0}
!42 = !{!"_ZTS8timezone", !10, i64 0, !10, i64 4}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTS7timeval", !45, i64 0, !45, i64 8}
!45 = !{!"long", !5, i64 0}
!46 = !{!44, !45, i64 8}
!47 = !{!40, !38, i64 8}
!48 = !{!35, !10, i64 4}
!49 = !{!50, !18, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !45, i64 8, !5, i64 16}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!52 = !{!45, !45, i64 0}
!53 = !{!5, !5, i64 0}
!54 = !{!50, !45, i64 8}
!55 = !{i8 0, i8 2}
!56 = !{!40, !38, i64 0}
!57 = !{!51, !18, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !6, i64 0}
!60 = !{!61, !18, i64 240}
!61 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 216, !5, i64 224, !41, i64 225, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256}
!62 = !{!63, !5, i64 56}
!63 = !{!"_ZTSSt5ctypeIcE", !18, i64 16, !41, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!64 = !{!65, !18, i64 0}
!65 = !{!"_ZTS9transposeIiiE", !18, i64 0, !18, i64 8}
!66 = !{!65, !18, i64 8}
!67 = !{!68, !18, i64 0}
!68 = !{!"_ZTS10blockTransI5eventiE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!69 = !{!68, !18, i64 8}
!70 = !{!68, !18, i64 16}
!71 = !{!68, !18, i64 24}
!72 = !{!68, !18, i64 32}
!73 = !{!74, !45, i64 8}
!74 = !{!"_ZTSSt8ios_base", !45, i64 8, !45, i64 16, !75, i64 24, !76, i64 28, !76, i64 32, !18, i64 40, !77, i64 48, !5, i64 64, !10, i64 192, !18, i64 200, !78, i64 208}
!75 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!76 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!77 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !45, i64 8}
!78 = !{!"_ZTSSt6locale", !18, i64 0}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !33}
!81 = distinct !{!81, !33}
!82 = !{!41, !41, i64 0}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !87, !84}
!87 = !{!"llvm.loop.unroll.runtime.disable"}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !84}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !84}
!101 = distinct !{!101, !33}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !84}
!108 = distinct !{!108, !84}
!109 = !{!40, !38, i64 16}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = !{!116}
!116 = distinct !{!116, !112}
!117 = distinct !{!117, !84}
!118 = distinct !{!118, !84}
!119 = distinct !{!119, !84}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !87, !84}
!122 = distinct !{!122, !84}
!123 = distinct !{!123, !87, !84}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !84}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !87, !84}
!130 = distinct !{!130, !84}
!131 = distinct !{!131, !33}
!132 = distinct !{!132, !87, !84}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
