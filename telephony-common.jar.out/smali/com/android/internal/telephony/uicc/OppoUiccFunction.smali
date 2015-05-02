.class public Lcom/android/internal/telephony/uicc/OppoUiccFunction;
.super Ljava/lang/Object;
.source "OppoUiccFunction.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static oppoBuildEmailString(Ljava/lang/String;III)[B
    .locals 6
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "bufferlen"    # I
    .param p2, "recordNumber"    # I
    .param p3, "sfi"    # I

    .prologue
    const/4 v4, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "emailString":[B
    const/4 v0, 0x0

    .line 63
    .local v0, "byteTag":[B
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 65
    :cond_0
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "error build Email String"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v3, 0x0

    .line 93
    :goto_0
    return-object v3

    .line 68
    :cond_1
    new-array v1, p1, [B

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "i":I
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, p1, -0x2

    if-ge v2, v3, :cond_2

    .line 73
    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_2
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 78
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 81
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :cond_3
    add-int/lit8 v3, p1, -0x2

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 87
    add-int/lit8 v3, p1, -0x1

    rem-int/lit16 v4, p2, 0xfa

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 89
    const-string v3, "RIL_AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oppoBuildEmailString x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v3, v1

    .line 93
    goto :goto_0

    .line 92
    :cond_4
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "delete email"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static oppoBuildNumber2String(Ljava/lang/String;)[B
    .locals 7
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xf

    const/4 v6, 0x0

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "num2String":[B
    const/4 v0, 0x0

    .line 100
    .local v0, "bcdNumber":[B
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    .line 102
    :cond_0
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "error build Number2 String"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v3, 0x0

    .line 123
    :goto_0
    return-object v3

    .line 105
    :cond_1
    new-array v2, v5, [B

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 108
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_2
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 112
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 115
    const-string v3, "RIL_AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteTag length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    aput-byte v6, v2, v6

    .line 117
    const/4 v3, 0x1

    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 118
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    move-object v3, v2

    .line 123
    goto :goto_0

    .line 122
    :cond_4
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "delete Number2"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static oppoGetSimType()Z
    .locals 4

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "vRet":Z
    const-string v2, "gsm.sim.card.type"

    const-string v3, "SIM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "vStr":Ljava/lang/String;
    const-string v2, "USIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0
.end method

.method public static oppoWriteSim()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static oppoWriteUsim()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "gsm.sim.card.type"

    const-string v1, "USIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method
