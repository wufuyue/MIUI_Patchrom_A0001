.class public Lcom/android/internal/telephony/OppoIccProviderFun;
.super Ljava/lang/Object;
.source "OppoIccProviderFun.java"


# static fields
.field private static final DBG:Z = false

.field private static final OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final OPPO_BOOK_COLUMN_NUM:I = 0x1

.field public static final STR_ID:Ljava/lang/String; = "id"

.field public static final STR_NUMBER2:Ljava/lang/String; = "anr"

.field private static final TAG:Ljava/lang/String; = "IccProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/OppoIccProviderFun;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIccPhoneBookService()Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    .line 58
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v0

    .restart local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getIccPhoneBookService(I)Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    .locals 2
    .param p0, "vSimID"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-nez p0, :cond_0

    .line 66
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 73
    :goto_0
    instance-of v1, v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    if-eqz v1, :cond_2

    .line 74
    check-cast v0, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    .line 76
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_1
    return-object v0

    .line 67
    .restart local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 68
    const-string v1, "simphonebook2"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_1
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public static oppoAddIccRecordToEfEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "efType"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number1"    # Ljava/lang/String;
    .param p3, "number2"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v9, -0x1

    .line 185
    .local v9, "index":I
    const/4 v8, 0x0

    .line 187
    .local v8, "email":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 188
    const/4 v1, 0x0

    aget-object v8, p4, v1

    .line 192
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/OppoIccProviderFun;->getIccPhoneBookService()Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 193
    .local v0, "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_1

    .line 194
    const-string v2, ""

    const-string v3, ""

    move v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->oppoAddAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 205
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    :cond_1
    :goto_0
    return v9

    .line 201
    :catch_0
    move-exception v1

    goto :goto_0

    .line 198
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static oppoGetSimId(Landroid/net/Uri;)I
    .locals 3
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static oppoMixSimAllSpace(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    .line 87
    const-string v5, "IccProvider"

    const-string v6, "oppoMixSimAllSpace"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/OppoIccProviderFun;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v5, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 91
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 94
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/OppoIccProviderFun;->oppoGetSimId(Landroid/net/Uri;)I

    move-result v4

    .line 95
    .local v4, "vSimID":I
    const-string v5, "IccProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oppoMixSimAllSpace=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v4}, Lcom/android/internal/telephony/OppoIccProviderFun;->getIccPhoneBookService(I)Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    move-result-object v1

    .line 98
    .local v1, "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->oppoGetSimPhonebookAllSpace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 109
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    .end local v4    # "vSimID":I
    :cond_0
    :goto_0
    new-array v3, v8, [Ljava/lang/Object;

    .line 110
    .local v3, "object":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 111
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 113
    const-string v5, "IccProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oppoMixSimAllSpaceAAAAA=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v0

    .line 105
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 102
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static oppoMixSimNameLen(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 154
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/OppoIccProviderFun;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 156
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 159
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/OppoIccProviderFun;->oppoGetSimId(Landroid/net/Uri;)I

    move-result v4

    .line 160
    .local v4, "vSimID":I
    invoke-static {v4}, Lcom/android/internal/telephony/OppoIccProviderFun;->getIccPhoneBookService(I)Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    move-result-object v1

    .line 161
    .local v1, "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->oppoGetSimPhonebookNameLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 172
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    .end local v4    # "vSimID":I
    :cond_0
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    .line 173
    .local v3, "object":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 174
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 176
    const-string v5, "IccProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oppoMixSimNameLenAAAAAAA=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-object v0

    .line 168
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 165
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static oppoMixSimUsedSpace(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    .line 120
    const-string v5, "IccProvider"

    const-string v6, "oppoMixSimUsedSpace"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/OppoIccProviderFun;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v5, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 124
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 127
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/OppoIccProviderFun;->oppoGetSimId(Landroid/net/Uri;)I

    move-result v4

    .line 129
    .local v4, "vSimID":I
    const-string v5, "IccProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oppoMixSimUsedSpace=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v4}, Lcom/android/internal/telephony/OppoIccProviderFun;->getIccPhoneBookService(I)Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    move-result-object v1

    .line 132
    .local v1, "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->oppoGetSimPhonebookUsedSpace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 143
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    .end local v4    # "vSimID":I
    :cond_0
    :goto_0
    new-array v3, v8, [Ljava/lang/Object;

    .line 144
    .local v3, "object":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 145
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 147
    const-string v5, "IccProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oppoMixSimUsedSpaceAAAAAA=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v0

    .line 139
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 136
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static oppoUpdateIccRecordInEfByIdEx(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "efType"    # I
    .param p1, "id"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber1"    # Ljava/lang/String;
    .param p4, "newNumber2"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v8, 0x0

    .line 213
    .local v8, "success":Z
    const/4 v7, 0x0

    .line 215
    .local v7, "email":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 216
    const/4 v1, 0x0

    aget-object v7, p5, v1

    .line 220
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/OppoIccProviderFun;->getIccPhoneBookService()Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 221
    .local v0, "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_1

    .line 222
    const/4 v6, 0x0

    move v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;->oppoUpdateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 233
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/OppoIccPhoneBookInterfaceManagerProxy;
    :cond_1
    :goto_0
    return v8

    .line 229
    :catch_0
    move-exception v1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    goto :goto_0
.end method
