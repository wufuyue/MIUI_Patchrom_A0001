.class public Landroid/view/OppoExtraGLES20Canvas;
.super Ljava/lang/Object;
.source "OppoExtraGLES20Canvas.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static freeCaches()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    .line 30
    return-void
.end method
