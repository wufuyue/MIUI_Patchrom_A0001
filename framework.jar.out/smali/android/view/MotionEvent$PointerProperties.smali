.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public id:I

.field public toolType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3527
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 3528
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 3535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3536
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    .line 3537
    return-void
.end method

.method static synthetic access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/MotionEvent$PointerProperties;
    .param p1, "x1"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 3522
    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v0

    return v0
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 3541
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 3542
    .local v0, "array":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3543
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v0, v1

    .line 3542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3545
    :cond_0
    return-object v0
.end method

.method private equals(Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 3591
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3568
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3569
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 3570
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 3578
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3579
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 3580
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 3584
    instance-of v0, p1, Landroid/view/MotionEvent$PointerProperties;

    if-eqz v0, :cond_0

    .line 3585
    check-cast p1, Landroid/view/MotionEvent$PointerProperties;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v0

    .line 3587
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3596
    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method