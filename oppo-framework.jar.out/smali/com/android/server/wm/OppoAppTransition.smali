.class public Lcom/android/server/wm/OppoAppTransition;
.super Lcom/android/server/wm/AppTransition;
.source "OppoAppTransition.java"


# static fields
.field private static final DEBUG_ANIM:Z = true

.field private static final DEBUG_APP_TRANSITIONS:Z

.field private static final DEFAULT_APP_TRANSITION_DURATION_ENTER:J = 0x1aeL

.field private static final DEFAULT_APP_TRANSITION_DURATION_EXIT:J = 0x1aeL

.field private static final HEIGHTPERSENT:F = 0.75f

.field private static final ICONSCALEHEIGHT:F = 0.0f

.field private static final ICONSCALEWIDTH:F = 0.0f

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoAppTransition"

.field private static final WIDTHPERSENT:F = 0.6f

.field private static isOppoLauncher:Z


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mEnterPosition:[F

.field private mExitPosition:[F

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionEnterTemp:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionExitTemp:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionType:I

.field private final mOppoBezierInterpolatorEnter:Landroid/view/animation/OppoBezierInterpolator;

.field private final mOppoBezierInterpolatorExit:Landroid/view/animation/OppoBezierInterpolator;

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->DEBUG_APP_TRANSITIONS:Z

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 53
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 67
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    .line 68
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    .line 69
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    .line 70
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    .line 88
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mConfigShortAnimTime:I

    .line 97
    new-instance v0, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v1, 0x3fd84f2280000000L    # 0.379830002784729

    const-wide v3, 0x3fbf9a6b60000000L    # 0.12345000356435776

    const-wide v5, 0x3fcb141200000000L    # 0.21154999732971191

    const-wide v7, 0x3ff0a786c0000000L    # 1.0408999919891357

    invoke-direct/range {v0 .. v9}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoBezierInterpolatorEnter:Landroid/view/animation/OppoBezierInterpolator;

    .line 98
    new-instance v0, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v1, 0x3fd7f2e480000000L    # 0.3741999864578247

    const-wide v3, 0x3fc0068dc0000000L    # 0.12520000338554382

    const-wide v5, 0x3fca0902e0000000L    # 0.20340000092983246

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v9}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoBezierInterpolatorExit:Landroid/view/animation/OppoBezierInterpolator;

    .line 99
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 102
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    .line 103
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/OppoAppTransition;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/OppoAppTransition;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wm/OppoAppTransition;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/OppoAppTransition;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    return p1
.end method

.method private createOppoCustomAnimLocked(Ljava/lang/String;ZII)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 307
    const/4 v6, 0x0

    .line 308
    .local v6, "a":Landroid/view/animation/Animation;
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getLowerDigit(I)I

    move-result v8

    .line 311
    .local v8, "startWidth":I
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getLowerDigit(I)I

    move-result v7

    .line 314
    .local v7, "startHight":I
    if-nez v8, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v0

    if-ge v0, p3, :cond_1

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v0

    if-lt v0, p4, :cond_2

    .line 317
    :cond_1
    div-int/lit8 v9, p3, 0x2

    .line 318
    .local v9, "startX":I
    div-int/lit8 v10, p4, 0x2

    .line 320
    .local v10, "startY":I
    const-string v0, "OppoAppTransition"

    const-string v1, "OppoAppTransition createOppoCustomAnimLocked  start center"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition createOppoCustomAnimLocked  strartX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startHight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/OppoAppTransition;->caculatePosition(FFFF[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    .line 331
    if-eqz p2, :cond_3

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OppoAppTransition;->prepareOppoLauncherEnterAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v6

    .line 333
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 342
    .end local v7    # "startHight":I
    .end local v8    # "startWidth":I
    .end local v9    # "startX":I
    .end local v10    # "startY":I
    :goto_1
    return-object v6

    .line 323
    .restart local v7    # "startHight":I
    .restart local v8    # "startWidth":I
    :cond_2
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v9

    .line 324
    .restart local v9    # "startX":I
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v10

    .restart local v10    # "startY":I
    goto :goto_0

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OppoAppTransition;->prepareOPPOScaleUpExitAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v6

    .line 336
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto :goto_1

    .line 339
    .end local v7    # "startHight":I
    .end local v8    # "startWidth":I
    .end local v9    # "startX":I
    .end local v10    # "startY":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p2, :cond_5

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/OppoAppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    goto :goto_2
.end method

.method private createOppoScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 244
    const/4 v6, 0x0

    .line 245
    .local v6, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_1

    .line 246
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/OppoAppTransition;->caculatePosition(FFFF[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/OppoAppTransition;->prepareOPPOScaleUpEnterAnimation(FFF)Landroid/view/animation/Animation;

    move-result-object v6

    .line 248
    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 249
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/android/server/wm/OppoAppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OppoAppTransition$1;-><init>(Lcom/android/server/wm/OppoAppTransition;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 275
    invoke-virtual {v6, p3, p4, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 276
    return-object v6

    .line 272
    :cond_1
    invoke-direct {p0, p1, v8, p3, p4}, Lcom/android/server/wm/OppoAppTransition;->createOppoScaleUpExitAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_0
.end method

.method private createOppoScaleUpExitAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    const/4 v8, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 282
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition createOppoScaleUpExitAnimationLocked  isOppoLauncher = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    if-nez v0, :cond_2

    .line 286
    const/16 v0, 0x100e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200f

    if-ne p1, v0, :cond_1

    .line 292
    :cond_0
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    invoke-direct {v6, v3, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 293
    .local v6, "a":Landroid/view/animation/Animation;
    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    :goto_0
    move-object v7, v6

    .line 303
    .end local v6    # "a":Landroid/view/animation/Animation;
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_1
    return-object v7

    .line 296
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_1
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 300
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_2
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/OppoAppTransition;->caculatePosition(FFFF[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/OppoAppTransition;->prepareOppoLauncherExitAnimation(FFF)Landroid/view/animation/Animation;

    move-result-object v6

    .line 302
    .restart local v6    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    move-object v7, v6

    .line 303
    .end local v6    # "a":Landroid/view/animation/Animation;
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 180
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_1

    .line 183
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 184
    const-string p1, "android"

    .line 186
    :cond_0
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mContext:Landroid/content/Context;

    .line 166
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    invoke-static {p2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OppoAppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 168
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 169
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 170
    move v0, p2

    .line 173
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 174
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 176
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private reviseCustomExitAnim(I)V
    .locals 2
    .param p1, "transit"    # I

    .prologue
    const/4 v1, 0x0

    .line 206
    sget-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    if-nez v0, :cond_0

    const/16 v0, 0x100d

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 210
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    .line 211
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    .line 212
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    .line 213
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    .line 215
    :cond_0
    return-void
.end method

.method static setAppWindowTokenLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .param p0, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oppo.launcher/.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    .line 201
    :goto_0
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition setAppWindowTokenLocked isOppoLauncher ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " atoken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    goto :goto_0
.end method


# virtual methods
.method public caculatePosition(FFFF[F)[F
    .locals 11
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "position"    # [F

    .prologue
    .line 405
    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    if-eqz v5, :cond_0

    .line 406
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p1, v5

    add-float/2addr v5, p3

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, p1

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    add-float/2addr v5, p3

    const v6, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v6, p1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 407
    .local v3, "pw":I
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p2, v5

    add-float/2addr v5, p4

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, p2

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    float-to-int v2, v5

    .line 408
    .local v2, "ph":I
    const/4 v5, 0x0

    int-to-float v6, v3

    aput v6, p5, v5

    .line 409
    const/4 v5, 0x1

    int-to-float v6, v2

    aput v6, p5, v5

    .line 411
    .end local v2    # "ph":I
    .end local v3    # "pw":I
    :cond_0
    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v5, p4, v5

    if-nez v5, :cond_1

    .line 412
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, p5, v5

    .line 413
    const/4 v5, 0x1

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, p5, v5

    .line 415
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p1, v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, p2, v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 416
    .local v0, "a":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p1, v5

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, p2, v7

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 417
    .local v1, "b":F
    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v5, p3

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v7, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, p4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p2, v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 418
    .local v4, "px":F
    sub-float v5, v1, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 419
    const/4 v5, 0x2

    sub-float v6, v4, v0

    sub-float v7, v1, v0

    div-float/2addr v6, v7

    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v6, v7

    aput v6, p5, v5

    .line 421
    :cond_2
    return-object p5
.end method

.method clear()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "OppoAppTransition"

    const-string v1, "OppoAppTransition clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 151
    invoke-super {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 152
    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I

    .prologue
    const/4 v4, 0x3

    .line 219
    invoke-direct {p0, p2}, Lcom/android/server/wm/OppoAppTransition;->reviseCustomExitAnim(I)V

    .line 221
    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/android/server/wm/OppoAppTransition;->createOppoCustomAnimLocked(Ljava/lang/String;ZII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 223
    .local v0, "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/OppoAppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_0

    :cond_0
    const-string v1, "OppoAppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v0    # "a":Landroid/view/animation/Animation;
    :goto_0
    return-object v0

    .line 228
    :cond_1
    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 229
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/wm/OppoAppTransition;->createOppoScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 230
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/OppoAppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_2

    :cond_2
    const-string v1, "OppoAppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/OppoAppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    if-eq v0, v1, :cond_0

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 133
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 134
    iput p2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    .line 135
    iput p3, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    .line 137
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition overridePendingAppTransition packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enterAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exitAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 142
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/OppoAppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 112
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    .line 113
    iput p2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    .line 114
    iput p3, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    .line 115
    iput p4, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    .line 117
    div-int/lit8 v0, p3, 0x4

    add-int/2addr v0, p1

    div-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getSynthesisNumber(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    .line 118
    div-int/lit8 v0, p3, 0x4

    add-int/2addr v0, p2

    div-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getSynthesisNumber(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    .line 121
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition overridePendingAppTransitionScaleUp  startX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    .line 126
    return-void
.end method

.method public prepareOPPOScaleUpEnterAnimation(FFF)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "time"    # F

    .prologue
    const/high16 v9, 0x43d70000    # 430.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 360
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 362
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoBezierInterpolatorEnter:Landroid/view/animation/OppoBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 363
    add-float v3, v9, p3

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 364
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 365
    .local v7, "alpha":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 366
    const/high16 v1, 0x40000000    # 2.0f

    add-float v2, v9, p3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 368
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 369
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 370
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 371
    return-object v8
.end method

.method public prepareOPPOScaleUpExitAnimation(FF)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 390
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 392
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoBezierInterpolatorExit:Landroid/view/animation/OppoBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 393
    const-wide/16 v3, 0x1ae

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 394
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 395
    .local v7, "alpha":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 396
    const-wide/16 v1, 0x102

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 398
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 399
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 400
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 401
    return-object v8
.end method

.method public prepareOppoLauncherEnterAnimation(FF)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 375
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 376
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoBezierInterpolatorExit:Landroid/view/animation/OppoBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 377
    const-wide/16 v3, 0x1ae

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 378
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 379
    .local v7, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x6b

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 380
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 381
    const-wide/16 v1, 0x142

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 383
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 384
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 385
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 386
    return-object v8
.end method

.method public prepareOppoLauncherExitAnimation(FFF)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "time"    # F

    .prologue
    const/high16 v9, 0x43d70000    # 430.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 346
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 347
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoBezierInterpolatorEnter:Landroid/view/animation/OppoBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 348
    add-float v2, v9, p3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 349
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 350
    .local v7, "alpha":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 351
    const/high16 v1, 0x40400000    # 3.0f

    add-float v2, v9, p3

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 353
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 354
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 355
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 356
    return-object v8
.end method

.method public setCurrentUser(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 157
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition setCurrentUser () newUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    .line 160
    invoke-super {p0, p1}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    .line 161
    return-void
.end method
