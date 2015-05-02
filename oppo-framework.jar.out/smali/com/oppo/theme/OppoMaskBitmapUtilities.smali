.class public Lcom/oppo/theme/OppoMaskBitmapUtilities;
.super Ljava/lang/Object;
.source "OppoMaskBitmapUtilities.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MaskBitmapUtilities"

.field private static mMaskBitmapUtilities:Lcom/oppo/theme/OppoMaskBitmapUtilities;


# instance fields
.field private mOpt:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "oppographic"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->nativeInit()V

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/theme/OppoMaskBitmapUtilities;->mMaskBitmapUtilities:Lcom/oppo/theme/OppoMaskBitmapUtilities;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/oppo/theme/OppoMaskBitmapUtilities;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/theme/OppoMaskBitmapUtilities;->mMaskBitmapUtilities:Lcom/oppo/theme/OppoMaskBitmapUtilities;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/oppo/theme/OppoMaskBitmapUtilities;

    invoke-direct {v0}, Lcom/oppo/theme/OppoMaskBitmapUtilities;-><init>()V

    sput-object v0, Lcom/oppo/theme/OppoMaskBitmapUtilities;->mMaskBitmapUtilities:Lcom/oppo/theme/OppoMaskBitmapUtilities;

    .line 51
    :cond_0
    sget-object v0, Lcom/oppo/theme/OppoMaskBitmapUtilities;->mMaskBitmapUtilities:Lcom/oppo/theme/OppoMaskBitmapUtilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final native nativeInit()V
.end method

.method private readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 62
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/oppo/theme/OppoMaskBitmapUtilities;->mOpt:Landroid/graphics/BitmapFactory$Options;

    .line 63
    iget-object v2, p0, Lcom/oppo/theme/OppoMaskBitmapUtilities;->mOpt:Landroid/graphics/BitmapFactory$Options;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    iget-object v2, p0, Lcom/oppo/theme/OppoMaskBitmapUtilities;->mOpt:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 66
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/theme/OppoMaskBitmapUtilities;->mOpt:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public native cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public native releaseResouce()V
.end method

.method public native scaleAndMaskBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
.end method

.method public native scaleAndMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public native setCutAndScalePram(II)V
.end method

.method public native setMaskBitmap(Landroid/content/Context;I)V
.end method

.method public native setMaskBitmap(Landroid/graphics/Bitmap;)V
.end method
