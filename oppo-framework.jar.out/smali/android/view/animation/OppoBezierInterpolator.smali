.class public Landroid/view/animation/OppoBezierInterpolator;
.super Ljava/lang/Object;
.source "OppoBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final ABOVE_ONE:F

.field private final BELOW_ONE:F

.field private final DEBUG:Z

.field private final EPSILON:D

.field private final TAG:Ljava/lang/String;

.field private mAbove:Z

.field private mLimit:Z

.field private mOppoUnitBezier:Landroid/view/animation/OppoUnitBezier;


# direct methods
.method public constructor <init>(DDDDZ)V
    .locals 10
    .param p1, "p1x"    # D
    .param p3, "p1y"    # D
    .param p5, "p2x"    # D
    .param p7, "p2y"    # D
    .param p9, "limit"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v1, "OppoBezierInterpolator"

    iput-object v1, p0, Landroid/view/animation/OppoBezierInterpolator;->TAG:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/animation/OppoBezierInterpolator;->DEBUG:Z

    .line 32
    const-wide v1, 0x3f10624dd2f1a9fcL    # 6.25E-5

    iput-wide v1, p0, Landroid/view/animation/OppoBezierInterpolator;->EPSILON:D

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/animation/OppoBezierInterpolator;->ABOVE_ONE:F

    .line 34
    const v1, 0x3f7d70a4    # 0.99f

    iput v1, p0, Landroid/view/animation/OppoBezierInterpolator;->BELOW_ONE:F

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    .line 49
    move/from16 v0, p9

    iput-boolean v0, p0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    .line 50
    new-instance v1, Landroid/view/animation/OppoUnitBezier;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/OppoUnitBezier;-><init>(DDDD)V

    iput-object v1, p0, Landroid/view/animation/OppoBezierInterpolator;->mOppoUnitBezier:Landroid/view/animation/OppoUnitBezier;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v2, "OppoBezierInterpolator"

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/animation/OppoBezierInterpolator;->TAG:Ljava/lang/String;

    .line 30
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/animation/OppoBezierInterpolator;->DEBUG:Z

    .line 32
    const-wide v2, 0x3f10624dd2f1a9fcL    # 6.25E-5

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/animation/OppoBezierInterpolator;->EPSILON:D

    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/animation/OppoBezierInterpolator;->ABOVE_ONE:F

    .line 34
    const v2, 0x3f7d70a4    # 0.99f

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/animation/OppoBezierInterpolator;->BELOW_ONE:F

    .line 35
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    .line 36
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    .line 39
    sget-object v2, Loppo/R$styleable;->oppoBezierInterpolator:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 40
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 41
    .local v12, "pointAx":F
    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 42
    .local v13, "pointAy":F
    const/4 v2, 0x2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 43
    .local v14, "pointBx":F
    const/4 v2, 0x3

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    .line 44
    .local v15, "pointBy":F
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    .line 45
    new-instance v2, Landroid/view/animation/OppoUnitBezier;

    float-to-double v3, v12

    float-to-double v5, v13

    float-to-double v7, v14

    float-to-double v9, v15

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/OppoUnitBezier;-><init>(DDDD)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/animation/OppoBezierInterpolator;->mOppoUnitBezier:Landroid/view/animation/OppoUnitBezier;

    .line 46
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    .prologue
    .line 54
    iget-object v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mOppoUnitBezier:Landroid/view/animation/OppoUnitBezier;

    float-to-double v3, p1

    const-wide v5, 0x3f10624dd2f1a9fcL    # 6.25E-5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/animation/OppoUnitBezier;->solve(DD)D

    move-result-wide v0

    .line 58
    .local v0, "interpolation":D
    iget-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    if-eqz v2, :cond_2

    .line 59
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    if-nez v2, :cond_0

    .line 60
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 61
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    .line 63
    :cond_0
    iget-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    if-eqz v2, :cond_1

    .line 64
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 66
    :cond_1
    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    .line 70
    :cond_2
    double-to-float v2, v0

    return v2
.end method
