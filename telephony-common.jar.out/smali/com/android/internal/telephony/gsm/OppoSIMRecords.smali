.class public Lcom/android/internal/telephony/gsm/OppoSIMRecords;
.super Ljava/lang/Object;
.source "OppoSIMRecords.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "add for SIMInfo db, only for QCOM platform"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "OppoSIMRecords"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadCastSetDefaultNameDone()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public static clearSlotId(Landroid/content/Context;I)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "vSimId"    # I

    .prologue
    const/4 v6, 0x0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSlotId, ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->log(Ljava/lang/String;)V

    .line 51
    invoke-static {p0, p1}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v0

    .line 53
    .local v0, "oldSimInfo":Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSlotIdAA, oldSimInfo.mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->log(Ljava/lang/String;)V

    .line 57
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 58
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "slot"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static getCurrentCardCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-static {p0}, Landroid/provider/oppo/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getIccIdsDone(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "vSimId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIccIdsDone, iccid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", vSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->log(Ljava/lang/String;)V

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "oldIccIdInSlot":Ljava/lang/String;
    invoke-static {p0, p2}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v3

    .line 74
    .local v3, "oldSimInfo":Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v3, :cond_0

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIccIdsDoneAA, oldSimInfo.mSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->log(Ljava/lang/String;)V

    .line 76
    iget-object v2, v3, Landroid/provider/oppo/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 77
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 78
    .local v4, "value":Landroid/content/ContentValues;
    const-string v5, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v3, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_0
    const/4 v1, 0x0

    .line 84
    .local v1, "nNewCardCount":I
    if-eqz p1, :cond_1

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    const-string v5, "getIccIdsDoneBB, insertIccID"

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->log(Ljava/lang/String;)V

    .line 87
    invoke-static {p0, p1, p2}, Landroid/provider/oppo/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 98
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIccIdsDoneCC, nNewCardCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->log(Ljava/lang/String;)V

    .line 100
    if-lez v1, :cond_2

    .line 112
    if-nez p2, :cond_4

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oppo.qualcomm.gemini.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 114
    .local v0, "isGemini":Z
    if-ne v0, v9, :cond_3

    .line 115
    const-string v5, "SIM1"

    invoke-static {p0, v5, p2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V

    .line 123
    .end local v0    # "isGemini":Z
    :cond_2
    :goto_0
    return-void

    .line 117
    .restart local v0    # "isGemini":Z
    :cond_3
    const-string v5, "SIM"

    invoke-static {p0, v5, p2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 120
    .end local v0    # "isGemini":Z
    :cond_4
    const-string v5, "SIM2"

    invoke-static {p0, v5, p2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "OppoSIMRecords"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public static setColorForNewSIM(Landroid/content/Context;I)V
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "vSimId"    # I

    .prologue
    const/4 v7, 0x0

    .line 127
    invoke-static {p0, p1}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v1

    .line 128
    .local v1, "simInfo":Landroid/provider/oppo/Telephony$SIMInfo;
    const/4 v0, -0x1

    .line 130
    .local v0, "simColor":I
    if-eqz v1, :cond_1

    .line 131
    iget v0, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    .line 132
    if-ltz v0, :cond_0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    .line 133
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 134
    .local v2, "valueColor1":Landroid/content/ContentValues;
    const/4 v0, 0x1

    .line 135
    const-string v3, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    .end local v2    # "valueColor1":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public static setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "strName"    # Ljava/lang/String;
    .param p2, "vSimId"    # I

    .prologue
    .line 144
    invoke-static {p0, p2}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v1

    .line 146
    .local v1, "simInfo":Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v1, :cond_0

    .line 147
    iget-object v0, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 148
    .local v0, "simDisplayName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultNameForNewSIM: simInfo.mSimId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",   strName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->log(Ljava/lang/String;)V

    .line 150
    iget-wide v2, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {p0, v2, v3, p1}, Landroid/provider/oppo/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 157
    .end local v0    # "simDisplayName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setNumberForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "vSimId"    # I

    .prologue
    .line 167
    invoke-static {p0, p2}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v0

    .line 169
    .local v0, "simInfo":Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 171
    .local v1, "simNumber":Ljava/lang/String;
    iget-wide v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {p0, p1, v2, v3}, Landroid/provider/oppo/Telephony$SIMInfo;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    .line 173
    .end local v1    # "simNumber":Ljava/lang/String;
    :cond_0
    return-void
.end method
