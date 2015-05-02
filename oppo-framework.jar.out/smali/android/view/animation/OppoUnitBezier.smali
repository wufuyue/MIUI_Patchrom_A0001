.class public Landroid/view/animation/OppoUnitBezier;
.super Ljava/lang/Object;
.source "OppoUnitBezier.java"


# instance fields
.field private ax:D

.field private ay:D

.field private bx:D

.field private by:D

.field private cx:D

.field private cy:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 4
    .param p1, "p1x"    # D
    .param p3, "p1y"    # D
    .param p5, "p2x"    # D
    .param p7, "p2y"    # D

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/view/animation/OppoUnitBezier;->cx:D

    .line 34
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sub-double v2, p5, p1

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->cx:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/OppoUnitBezier;->bx:D

    .line 35
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->cx:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->bx:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/OppoUnitBezier;->ax:D

    .line 37
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Landroid/view/animation/OppoUnitBezier;->cy:D

    .line 38
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sub-double v2, p7, p3

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->cy:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/OppoUnitBezier;->by:D

    .line 39
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->cy:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->by:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/OppoUnitBezier;->ay:D

    .line 40
    return-void
.end method


# virtual methods
.method public sampleCurveDerivativeX(D)D
    .locals 6
    .param p1, "t"    # D

    .prologue
    .line 52
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->ax:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Landroid/view/animation/OppoUnitBezier;->bx:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->cx:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public sampleCurveX(D)D
    .locals 4
    .param p1, "t"    # D

    .prologue
    .line 44
    iget-wide v0, p0, Landroid/view/animation/OppoUnitBezier;->ax:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->bx:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->cx:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public sampleCurveY(D)D
    .locals 4
    .param p1, "t"    # D

    .prologue
    .line 48
    iget-wide v0, p0, Landroid/view/animation/OppoUnitBezier;->ay:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->by:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroid/view/animation/OppoUnitBezier;->cy:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method solve(DD)D
    .locals 2
    .param p1, "x"    # D
    .param p3, "epsilon"    # D

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/animation/OppoUnitBezier;->solveCurveX(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/OppoUnitBezier;->sampleCurveY(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public solveCurveX(DD)D
    .locals 15
    .param p1, "x"    # D
    .param p3, "epsilon"    # D

    .prologue
    .line 64
    move-wide/from16 v7, p1

    .local v7, "t2":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v11, 0x8

    if-ge v2, v11, :cond_2

    .line 65
    invoke-virtual {p0, v7, v8}, Landroid/view/animation/OppoUnitBezier;->sampleCurveX(D)D

    move-result-wide v11

    sub-double v9, v11, p1

    .line 66
    .local v9, "x2":D
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v11, v11, p3

    if-gez v11, :cond_1

    move-wide v3, v7

    .line 94
    .end local v9    # "x2":D
    :cond_0
    :goto_1
    return-wide v3

    .line 68
    .restart local v9    # "x2":D
    :cond_1
    invoke-virtual {p0, v7, v8}, Landroid/view/animation/OppoUnitBezier;->sampleCurveDerivativeX(D)D

    move-result-wide v0

    .line 69
    .local v0, "d2":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v11, v11, v13

    if-gez v11, :cond_3

    .line 74
    .end local v0    # "d2":D
    .end local v9    # "x2":D
    :cond_2
    const-wide/16 v3, 0x0

    .line 75
    .local v3, "t0":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 76
    .local v5, "t1":D
    move-wide/from16 v7, p1

    .line 78
    cmpg-double v11, v7, v3

    if-ltz v11, :cond_0

    .line 80
    cmpl-double v11, v7, v5

    if-lez v11, :cond_5

    move-wide v3, v5

    .line 81
    goto :goto_1

    .line 71
    .end local v3    # "t0":D
    .end local v5    # "t1":D
    .restart local v0    # "d2":D
    .restart local v9    # "x2":D
    :cond_3
    div-double v11, v9, v0

    sub-double/2addr v7, v11

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "d2":D
    .restart local v3    # "t0":D
    .restart local v5    # "t1":D
    :cond_4
    cmpl-double v11, p1, v9

    if-lez v11, :cond_6

    .line 88
    move-wide v3, v7

    .line 91
    :goto_2
    sub-double v11, v5, v3

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v13

    add-double v7, v11, v3

    .line 83
    .end local v9    # "x2":D
    :cond_5
    cmpg-double v11, v3, v5

    if-gez v11, :cond_7

    .line 84
    invoke-virtual {p0, v7, v8}, Landroid/view/animation/OppoUnitBezier;->sampleCurveX(D)D

    move-result-wide v9

    .line 85
    .restart local v9    # "x2":D
    sub-double v11, v9, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v11, v11, p3

    if-gez v11, :cond_4

    move-wide v3, v7

    .line 86
    goto :goto_1

    .line 90
    :cond_6
    move-wide v5, v7

    goto :goto_2

    .end local v9    # "x2":D
    :cond_7
    move-wide v3, v7

    .line 94
    goto :goto_1
.end method
