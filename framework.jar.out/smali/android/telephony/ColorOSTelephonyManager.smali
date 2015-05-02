.class public Landroid/telephony/ColorOSTelephonyManager;
.super Ljava/lang/Object;
.source "ColorOSTelephonyManager.java"

# interfaces
.implements Landroid/telephony/IColorOSTelephony;


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of ColorOSTelephonyManager"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorOSTelephonyManager"

.field private static isQcomGeminiSupport:Z

.field private static mContext:Landroid/content/Context;

.field private static final sInstance:Landroid/telephony/ColorOSTelephonyManager;

.field private static vDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Landroid/telephony/ColorOSTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/ColorOSTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/ColorOSTelephonyManager;->sInstance:Landroid/telephony/ColorOSTelephonyManager;

    .line 50
    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 52
    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oppo.qualcomm.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 68
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    sput-object p0, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 58
    :cond_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->initRemoteService()V

    .line 60
    sget-object v0, Landroid/telephony/ColorOSTelephonyManager;->sInstance:Landroid/telephony/ColorOSTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 531
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 1

    .prologue
    .line 526
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getMTKsupportGeminiFlag()Z
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    .line 107
    .local v0, "vRet":Z
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "mtk.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 110
    :cond_0
    return v0
.end method

.method private getRemoteServiceBinder()Landroid/os/IBinder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 740
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v3

    sput-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 742
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v3, v4, :cond_1

    .line 743
    const/4 v2, 0x1

    .line 749
    .local v2, "vType":I
    :goto_0
    if-ne v4, v2, :cond_2

    .line 750
    const/4 v1, 0x1

    .line 751
    .local v1, "vDebugType":I
    const-string/jumbo v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 762
    .local v0, "mRemote":Landroid/os/IBinder;
    :goto_1
    if-nez v0, :cond_0

    .line 763
    const-string v3, "ColorOSTelephonyManager"

    const-string v4, "***********************************"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v3, "ColorOSTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorOSTelephonyManager is NULL !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v3, "ColorOSTelephonyManager"

    const-string v4, "***********************************"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x0

    .line 769
    .end local v0    # "mRemote":Landroid/os/IBinder;
    :cond_0
    return-object v0

    .line 746
    .end local v1    # "vDebugType":I
    .end local v2    # "vType":I
    :cond_1
    const/4 v2, 0x2

    .restart local v2    # "vType":I
    goto :goto_0

    .line 753
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    .line 754
    const/4 v1, 0x2

    .line 755
    .restart local v1    # "vDebugType":I
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "mRemote":Landroid/os/IBinder;
    goto :goto_1

    .line 758
    .end local v0    # "mRemote":Landroid/os/IBinder;
    .end local v1    # "vDebugType":I
    :cond_3
    const/4 v1, 0x3

    .line 759
    .restart local v1    # "vDebugType":I
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "mRemote":Landroid/os/IBinder;
    goto :goto_1
.end method

.method private static initRemoteService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    sput-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 75
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 82
    .local v0, "vType":I
    :goto_0
    if-ne v2, v0, :cond_1

    .line 83
    const-string v1, "com.android.internal.telephony.msim.ITelephonyMSim"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    .line 91
    :goto_1
    return-void

    .line 79
    .end local v0    # "vType":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "vType":I
    goto :goto_0

    .line 85
    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 86
    const-string v1, "com.android.internal.telephony.ITelephony"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    goto :goto_1

    .line 89
    :cond_2
    const-string v1, "com.android.internal.telephony.ITelephony"

    sput-object v1, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    goto :goto_1
.end method

.method public static innerGetQcomDualCard()Z
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    .line 96
    .local v0, "vRet":Z
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.qualcomm.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 99
    :cond_0
    return v0
.end method


# virtual methods
.method public answerRingingCallGemini(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x1

    .line 588
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 589
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->answerRingingCall(I)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 594
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    goto :goto_0

    .line 597
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public colorChangeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1026
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1030
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1035
    if-eqz p4, :cond_0

    .line 1036
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1043
    :goto_0
    const/16 v4, 0x271c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1053
    :goto_1
    return-void

    .line 1040
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1046
    :catch_0
    move-exception v2

    .line 1047
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorChangeIccLockPassword ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1050
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorCheckUsimIs4G(I)Z
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1057
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1059
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1062
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    const/16 v5, 0x271d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1066
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 1073
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1076
    :goto_0
    return v2

    .line 1068
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1069
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorCheckUsimIs4G ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    const/4 v2, 0x0

    .line 1073
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1073
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorCloseIccLogicalChannel(II)Z
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1251
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1254
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    const/16 v5, 0x2724

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1259
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 1266
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1269
    :goto_0
    return v2

    .line 1261
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1262
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorCloseIccLogicalChannel ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    const/4 v2, 0x0

    .line 1266
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1266
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorEmtDial(ILjava/lang/String;)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "telNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 775
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 778
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 781
    const/16 v4, 0x2712

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 791
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v2

    .line 785
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorEmtDial ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 788
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorEmtHungup(ILjava/lang/String;)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "telNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 796
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 799
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 802
    const/16 v4, 0x2713

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v2

    .line 806
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorEmtHungup ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 809
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorEnableEngineerTest(IZ)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 816
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 817
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 820
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    const/16 v4, 0x2714

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 833
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v2

    .line 827
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorEnableEngineerTest ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 830
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorGetDataSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1465
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1466
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 1467
    .local v2, "_result":I
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1469
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1470
    const/4 v5, -0x1

    .line 1497
    :goto_0
    return v5

    .line 1473
    :cond_0
    if-nez v4, :cond_1

    .line 1475
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    const/16 v5, 0x272c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1478
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_1
    move v5, v2

    .line 1497
    goto :goto_0

    .line 1480
    :catch_0
    move-exception v3

    .line 1481
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetDataSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1482
    const/4 v2, -0x1

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1485
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5

    .line 1491
    :cond_1
    :try_start_2
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "multi_sim_data_call"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_1

    .line 1493
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public colorGetDefaultDataSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1502
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1504
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1508
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1509
    const/16 v5, 0x272c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1518
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1522
    :goto_0
    return v2

    .line 1513
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1514
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetDefaultDataSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    const/4 v2, -0x1

    .line 1518
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1518
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetDefaultSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1411
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1413
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1414
    const/4 v2, -0x1

    .line 1432
    :goto_0
    return v2

    .line 1418
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1419
    const/16 v5, 0x272a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1428
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1423
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1424
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomActiveSubscriptionsCount ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    const/4 v2, -0x1

    .line 1428
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1428
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccCardTypeGemini(I)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1683
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1685
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1686
    const/4 v2, 0x0

    .line 1704
    :goto_0
    return-object v2

    .line 1690
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1692
    const/16 v5, 0x2736

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1693
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1694
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1701
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1696
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1697
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1698
    const/4 v2, 0x0

    .line 1701
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1701
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccCardTypeGeminiGlobal(I)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1739
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1741
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1742
    const/4 v2, 0x0

    .line 1760
    :goto_0
    return-object v2

    .line 1746
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    const/16 v5, 0x2738

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1749
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1757
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1752
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1753
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccCardTypeGeminiGlobal ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    const/4 v2, 0x0

    .line 1757
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1757
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccLockEnabled(I)Z
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 972
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 976
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    const/16 v5, 0x271a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 987
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    :goto_0
    return v2

    .line 982
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 983
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccLockEnabled ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    const/4 v2, 0x0

    .line 987
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 987
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccPin1RetryCount(I)I
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1083
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1087
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    const/16 v5, 0x271e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1091
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1098
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    :goto_0
    return v2

    .line 1093
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1094
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetIccPin1RetryCount ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    const/4 v2, -0x1

    .line 1098
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1098
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetInterfaceReserve1(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1820
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorGetInterfaceReserve2(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1824
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorGetInterfaceReserve3(I)I
    .locals 6
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1861
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1864
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    const/16 v4, 0x273d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1871
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1874
    return v2

    .line 1871
    .end local v2    # "_result":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorGetInterfaceReserve4(I)I
    .locals 1
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1879
    const/4 v0, -0x1

    return v0
.end method

.method public colorGetLastError(I)I
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1276
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1279
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    const/16 v5, 0x2725

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1290
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1293
    :goto_0
    return v2

    .line 1285
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1286
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetLastError ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    const/4 v2, -0x1

    .line 1290
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1290
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetPreferredNetworkType(I)I
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 870
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 873
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/16 v5, 0x2716

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 884
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    :goto_0
    return v2

    .line 879
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 880
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetPreferredNetworkType ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    const/4 v2, -0x1

    .line 884
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 884
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetPrioritySubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1554
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1557
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1558
    const/16 v5, 0x2730

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1567
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1571
    :goto_0
    return v2

    .line 1562
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1563
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetPrioritySubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1564
    const/4 v2, -0x1

    .line 1567
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1567
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomActiveSubscriptionsCount()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1358
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1360
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1361
    const/4 v2, -0x1

    .line 1380
    :goto_0
    return v2

    .line 1366
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1367
    const/16 v5, 0x2728

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1376
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1371
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1372
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomActiveSubscriptionsCount ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1373
    const/4 v2, -0x1

    .line 1376
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1376
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomImeiGemini(I)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1765
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1767
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1769
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1770
    const/4 v2, 0x0

    .line 1788
    :goto_0
    return-object v2

    .line 1774
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    const/16 v5, 0x2739

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1778
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1785
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1780
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1781
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomImeiGemini ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1782
    const/4 v2, 0x0

    .line 1785
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1785
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomLTECDMAImei(I)[Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1793
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1795
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1797
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1798
    const/4 v2, 0x0

    .line 1816
    :goto_0
    return-object v2

    .line 1802
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    const/16 v5, 0x273a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1813
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1808
    .end local v2    # "_result":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1809
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetQcomLTECDMAImei ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1810
    const/4 v2, 0x0

    .line 1813
    .restart local v2    # "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1813
    .end local v2    # "_result":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetSMSSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1529
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1533
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1534
    const/16 v5, 0x272f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1543
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    :goto_0
    return v2

    .line 1538
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1539
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetSMSSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1540
    const/4 v2, -0x1

    .line 1543
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1543
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetScAddressGemini(II)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1107
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1109
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1111
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1112
    const/4 v2, 0x0

    .line 1132
    :goto_0
    return-object v2

    .line 1117
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    const/16 v5, 0x271f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1129
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1124
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1125
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetScAddressGemini ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1126
    const/4 v2, 0x0

    .line 1129
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1129
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetSimIndicatorState(I)I
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 839
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 843
    .local v4, "mRemote":Landroid/os/IBinder;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v5

    if-nez v5, :cond_0

    .line 863
    :goto_0
    return v2

    .line 849
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    const/16 v5, 0x2715

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 860
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 855
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 856
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetSimIndicatorState ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    const/4 v2, -0x1

    .line 860
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 860
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetVoiceSubscription()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1437
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1439
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1441
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1442
    const/4 v2, -0x1

    .line 1460
    :goto_0
    return v2

    .line 1446
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1447
    const/16 v5, 0x272b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1456
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1451
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1452
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorGetVoiceSubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1453
    const/4 v2, -0x1

    .line 1456
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1456
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorIs3GButtonEnable(I)Z
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 919
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 922
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    const/16 v5, 0x2718

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 933
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 936
    :goto_0
    return v2

    .line 928
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 929
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorIs3GButtonEnable ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    const/4 v2, 0x0

    .line 933
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 933
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorIsQcomSubActive(I)Z
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1330
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1332
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1351
    :goto_0
    return v2

    .line 1337
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    const/16 v5, 0x2727

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1341
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1348
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1343
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1344
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorIsQcomSubActive ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    const/4 v2, 0x0

    .line 1348
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1348
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorIsWhiteSIMCard(I)Z
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 1828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1829
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1831
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1833
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1852
    :goto_0
    return v2

    .line 1838
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    const/16 v5, 0x273f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1842
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1849
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1844
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1845
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorIsWhiteSIMCard ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    const/4 v2, 0x0

    .line 1849
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1849
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorOpenIccLogicalChannel(ILjava/lang/String;)[I
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1224
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1226
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1229
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1232
    const/16 v5, 0x2723

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1241
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1244
    :goto_0
    return-object v2

    .line 1236
    .end local v2    # "_result":[I
    :catch_0
    move-exception v3

    .line 1237
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorOpenIccLogicalChannel ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1238
    const/4 v2, 0x0

    .line 1241
    .restart local v2    # "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1241
    .end local v2    # "_result":[I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetDataSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1597
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1599
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1602
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    const/16 v4, 0x2732

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    :goto_0
    return-void

    .line 1607
    :catch_0
    move-exception v2

    .line 1608
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetDataSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1611
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetDefaultDataSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1620
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1623
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    const/16 v4, 0x2733

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1626
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    :goto_0
    return-void

    .line 1628
    :catch_0
    move-exception v2

    .line 1629
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetDefaultDataSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1632
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetDefaultSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1386
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1388
    .local v3, "mRemote":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 1405
    :goto_0
    return-void

    .line 1393
    :cond_0
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    const/16 v4, 0x2729

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1398
    :catch_0
    move-exception v2

    .line 1399
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetQcomActiveSubscriptionsCount ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1402
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "enabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 996
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 999
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v6, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1004
    if-eqz p4, :cond_1

    .line 1005
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1011
    :goto_1
    const/16 v4, 0x271b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1021
    :goto_2
    return-void

    :cond_0
    move v4, v5

    .line 1001
    goto :goto_0

    .line 1009
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1014
    :catch_0
    move-exception v2

    .line 1015
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetIccLockEnabled ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 1018
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetLine1Number(ILjava/lang/String;)Z
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 943
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 945
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 965
    :goto_0
    return v2

    .line 950
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    const/16 v5, 0x2719

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 962
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 957
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 958
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetLine1Number ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    const/4 v2, 0x0

    .line 962
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 962
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetPreferredNetworkType(II)I
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 892
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 894
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 897
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    const/16 v5, 0x2717

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 902
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 909
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    :goto_0
    return v2

    .line 904
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 905
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetPreferredNetworkType ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    const/4 v2, -0x1

    .line 909
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 909
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetPrioritySubscription(I)V
    .locals 7
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1660
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1662
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1665
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    const/16 v4, 0x2735

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1668
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1677
    :goto_0
    return-void

    .line 1670
    :catch_0
    move-exception v2

    .line 1671
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1674
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetSMSSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1641
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1644
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    const/16 v4, 0x2734

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1656
    :goto_0
    return-void

    .line 1649
    :catch_0
    move-exception v2

    .line 1650
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetSMSSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1653
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetScAddressGemini(ILjava/lang/String;I)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1138
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1140
    .local v3, "mRemote":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1145
    :cond_0
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    const/16 v4, 0x2720

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v2

    .line 1153
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetScAddressGemini ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1156
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetVoiceSubscription(I)V
    .locals 7
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1578
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1581
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    const/16 v4, 0x2731

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1593
    :goto_0
    return-void

    .line 1586
    :catch_0
    move-exception v2

    .line 1587
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ColorOSTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetVoiceSubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1590
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorTransmitIccBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1196
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1199
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1207
    const/16 v5, 0x2722

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1209
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1216
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1219
    :goto_0
    return-object v2

    .line 1211
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1212
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorTransmitIccBasicChannel ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    const/4 v2, 0x0

    .line 1216
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1216
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorTransmitIccLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "subscription"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "channel"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1163
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1165
    .local v2, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1168
    .local v5, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v6, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1177
    const/16 v6, 0x2721

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1178
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1179
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1186
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1189
    :goto_0
    return-object v3

    .line 1181
    .end local v3    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1182
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ColorOSTelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "colorTransmitIccLogicalChannel ERROR !!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    const/4 v3, 0x0

    .line 1186
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1186
    .end local v3    # "_result":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public colorTransmitIccSimIO(IIIIIILjava/lang/String;)[B
    .locals 8
    .param p1, "subscription"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1298
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1300
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1303
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1311
    const/16 v5, 0x2726

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1320
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1323
    :goto_0
    return-object v2

    .line 1315
    .end local v2    # "_result":[B
    :catch_0
    move-exception v3

    .line 1316
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorTransmitIccSimIO ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    const/4 v2, 0x0

    .line 1320
    .restart local v2    # "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1320
    .end local v2    # "_result":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorgetSIMInfoBySlot(I)I
    .locals 8
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1711
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1713
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1714
    const/4 v2, -0x1

    .line 1732
    :goto_0
    return v2

    .line 1718
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1720
    const/16 v5, 0x2737

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1729
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1724
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1725
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ColorOSTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1726
    const/4 v2, -0x1

    .line 1729
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1729
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public endCallGemini(I)Z
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 537
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 538
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->endCall(I)Z

    move-result v1

    .line 549
    :cond_0
    :goto_0
    return v1

    .line 540
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 544
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 548
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 549
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallStateGemini(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 130
    const/4 v0, -0x1

    .line 132
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 133
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPhoneTypeGemini(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 476
    const/4 v0, -0x1

    .line 478
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 479
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 485
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getDataActivityGemini(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 460
    const/4 v0, -0x1

    .line 462
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 463
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v0

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 469
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    goto :goto_0
.end method

.method public getDataNetworkTypeGemini(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 492
    const/4 v0, -0x1

    .line 494
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 495
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 501
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getDataStateGemini(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 444
    const/4 v0, -0x1

    .line 446
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 447
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDataState()I

    move-result v0

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 453
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 245
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 251
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 377
    const-string v0, ""

    .line 379
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 381
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorGetIccCardTypeGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 165
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 396
    const-string v0, ""

    .line 398
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 399
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 405
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 412
    const-string v0, ""

    .line 414
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 415
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 421
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 210
    const/4 v0, -0x1

    .line 212
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 213
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 219
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getSimOperatorGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 428
    const-string v0, ""

    .line 430
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 431
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 437
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 508
    const-string v0, ""

    .line 510
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 511
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    :cond_0
    :goto_0
    return-object v0

    .line 513
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 517
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimStateGemini(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 178
    const/4 v0, -0x1

    .line 180
    .local v0, "vRet":I
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 181
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 348
    :cond_0
    return-object v0
.end method

.method public getSpNameInEfSpnGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 335
    :cond_0
    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 117
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 149
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 155
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasIccCardGemini(I)Z
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 197
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 203
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 296
    :cond_0
    return v0
.end method

.method public isIccCardProviderAsMvnoGemini(I)Z
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 283
    :cond_0
    return v0
.end method

.method public isIdleGemini(I)Z
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 621
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 622
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isIdle(I)Z

    move-result v1

    .line 633
    :cond_0
    :goto_0
    return v1

    .line 624
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 628
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 632
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 633
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 229
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 235
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method public isOffhookGemini(I)Z
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 639
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 640
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isOffhook(I)Z

    move-result v1

    .line 651
    :cond_0
    :goto_0
    return v1

    .line 642
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 646
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 650
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 651
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 322
    :cond_0
    return-object v0
.end method

.method public isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, "vRet":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 309
    :cond_0
    return-object v0
.end method

.method public isRingingGemini(I)Z
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 603
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 604
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRinging(I)Z

    move-result v1

    .line 615
    :cond_0
    :goto_0
    return v1

    .line 606
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 610
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 614
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 615
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSimInsert(I)Z
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, "vRet":Z
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 355
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listenGemini(Landroid/telephony/PhoneStateListener;II)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "simId"    # I

    .prologue
    const/4 v3, 0x1

    .line 258
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 259
    sget-object v2, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone_msim"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/MSimTelephonyManager;

    .line 260
    .local v1, "mTelephonyManager":Landroid/telephony/MSimTelephonyManager;
    iput p3, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    .line 261
    invoke-virtual {v1, p1, p2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 271
    .end local v1    # "mTelephonyManager":Landroid/telephony/MSimTelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 268
    sget-object v2, Landroid/telephony/ColorOSTelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 269
    .local v0, "mSingTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public showCallScreenGemini(I)Z
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 555
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 556
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->showCallScreen()Z

    move-result v1

    .line 567
    :cond_0
    :goto_0
    return v1

    .line 558
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 562
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 566
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 567
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public silenceRingerGemini(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x1

    .line 573
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 574
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->silenceRinger()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 579
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    goto :goto_0

    .line 582
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 678
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 679
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPin(Ljava/lang/String;I)Z

    move-result v1

    .line 690
    :cond_0
    :goto_0
    return v1

    .line 681
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 685
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 689
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 690
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;I)[I
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 714
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 715
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPinReportResult(Ljava/lang/String;I)[I

    move-result-object v1

    .line 726
    :cond_0
    :goto_0
    return-object v1

    .line 717
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 721
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 725
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 726
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 660
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 661
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 672
    :cond_0
    :goto_0
    return v1

    .line 663
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 667
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 671
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 672
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 696
    :try_start_0
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 697
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v1

    .line 708
    :cond_0
    :goto_0
    return-object v1

    .line 699
    :cond_1
    invoke-static {}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 703
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 707
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 708
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
