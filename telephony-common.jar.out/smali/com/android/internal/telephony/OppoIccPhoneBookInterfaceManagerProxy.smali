.class public Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
.source "OppoIccPhoneBookInterfaceManagerProxy.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 28
    return-void
.end method


# virtual methods
.method public oppoAddAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber1"    # Ljava/lang/String;
    .param p6, "newPhoneNumber2"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .param p8, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->oppoAddAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public oppoGetSimPhonebookAllSpace()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->oppoGetSimPhonebookAllSpace()I

    move-result v0

    return v0
.end method

.method public oppoGetSimPhonebookNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->oppoGetSimPhonebookNameLength()I

    move-result v0

    return v0
.end method

.method public oppoGetSimPhonebookUsedSpace()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->oppoGetSimPhonebookUsedSpace()I

    move-result v0

    return v0
.end method

.method public oppoUpdateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber1"    # Ljava/lang/String;
    .param p4, "newPhoneNumber2"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManager;->oppoUpdateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
