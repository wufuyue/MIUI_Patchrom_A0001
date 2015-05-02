.class public abstract Lcom/color/screenshot/IColorScreenshotManager$Stub;
.super Landroid/os/Binder;
.source "IColorScreenshotManager.java"

# interfaces
.implements Lcom/color/screenshot/IColorScreenshotManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/screenshot/IColorScreenshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/screenshot/IColorScreenshotManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.color.screenshot.IColorScreenshotManager"

.field static final TRANSACTION_isLongshotHandleState:I = 0x4

.field static final TRANSACTION_isLongshotMode:I = 0x5

.field static final TRANSACTION_isLongshotMoveState:I = 0x3

.field static final TRANSACTION_notifyLongshotScroll:I = 0x2

.field static final TRANSACTION_takeLongshot:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.color.screenshot.IColorScreenshotManager"

    invoke-virtual {p0, p0, v0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/color/screenshot/IColorScreenshotManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.color.screenshot.IColorScreenshotManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/color/screenshot/IColorScreenshotManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/color/screenshot/IColorScreenshotManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/color/screenshot/IColorScreenshotManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/color/screenshot/IColorScreenshotManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v4, "com.color.screenshot.IColorScreenshotManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.color.screenshot.IColorScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 56
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 57
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/color/screenshot/IColorScreenshotManager$Stub;->takeLongshot(ZZ)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_0
    move v0, v4

    .line 54
    goto :goto_1

    .restart local v0    # "_arg0":Z
    :cond_1
    move v1, v4

    .line 56
    goto :goto_2

    .line 63
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v5, "com.color.screenshot.IColorScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 66
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;->notifyLongshotScroll(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v4

    .line 65
    goto :goto_3

    .line 72
    :sswitch_3
    const-string v5, "com.color.screenshot.IColorScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;->isLongshotMoveState()Z

    move-result v2

    .line 74
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v5, "com.color.screenshot.IColorScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;->isLongshotHandleState()Z

    move-result v2

    .line 82
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v5, "com.color.screenshot.IColorScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;->isLongshotMode()Z

    move-result v2

    .line 90
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
