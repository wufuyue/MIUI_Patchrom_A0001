.class public Lcom/android/internal/telephony/ColorOSBlackListPhone;
.super Ljava/lang/Object;
.source "ColorOSBlackListPhone.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.oppo.provider.blacklist"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final BLACKLIST_APP_INFO:Ljava/lang/String; = "oppo.intent.action.OPPO_ACTION_NOTIFICATION"

.field private static final BLACKLIST_BLOCK_CONTENT_URI:Landroid/net/Uri;

.field private static final BLACKLIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;

.field private static final BLACKLIST_CONTENT_URI:Landroid/net/Uri;

.field private static final BLACKLIST_TABLE:Ljava/lang/String; = "blacklist"

.field private static final CALLSLOG_CONTENT_URI:Landroid/net/Uri;

.field private static final CALLSLOG_TABLE:Ljava/lang/String; = "calls"

.field private static final CONFIG_BLOCK_SETTING_SWITCH:Ljava/lang/String; = "block_setting_switch"

.field private static final CONFIG_CONTENT_URI:Landroid/net/Uri;

.field private static final CONFIG_PHONE_BLACKLIST_NAME:Ljava/lang/String; = "phone_blacklist_switch"

.field private static final CONFIG_TABLE:Ljava/lang/String; = "Config"

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final DURNNING:Ljava/lang/String; = "duration"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NEW:Ljava/lang/String; = "new"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final SIMID:Ljava/lang/String; = "simid"

.field private static final SMS_WHITELIST_CONTENT_URI:Landroid/net/Uri;

.field private static final SMS_WHITELIST_NUMBER_CONTENT_URI:Landroid/net/Uri;

.field private static final SMS_WHITELIST_TABLE:Ljava/lang/String; = "sms_whitelist"

.field private static final TAG:Ljava/lang/String; = "ColorOSBlackListPhone"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_BLACK_PHONE:I = 0x2

.field private static final TYPE_BLOCK_BOTH:I = 0x3

.field private static final URI_PATH_NUMBER:Ljava/lang/String; = "number"

.field private static final URI_PATH_SMS_AND_CALL_BLOCK:Ljava/lang/String; = "sms_and_call_block"

.field private static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "content://com.oppo.provider.blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    .line 41
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "blacklist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 43
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "blacklist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_CONTENT_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "sms_and_call_block"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;

    .line 58
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "calls"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CALLSLOG_CONTENT_URI:Landroid/net/Uri;

    .line 62
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "Config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CONFIG_CONTENT_URI:Landroid/net/Uri;

    .line 66
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sms_whitelist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SMS_WHITELIST_CONTENT_URI:Landroid/net/Uri;

    .line 68
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SMS_WHITELIST_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "number"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SMS_WHITELIST_NUMBER_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBlockSetting(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blocksetting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "blockSetting":I
    if-nez v0, :cond_0

    .line 77
    .local v1, "isBlockOpen":Z
    :goto_0
    return v1

    .line 75
    .end local v1    # "isBlockOpen":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "type=? OR type=?"

    return-object v0
.end method

.method private static isBlockOpened(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CONFIG_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v10

    const-string v3, "value"

    aput-object v3, v2, v9

    const-string v3, "name=?"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "phone_blacklist_switch"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 102
    :goto_0
    return v10

    .line 90
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, v9, :cond_1

    .line 105
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v7

    .line 107
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 105
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v7

    goto :goto_1

    .line 98
    :cond_2
    const/4 v0, 0x1

    :try_start_4
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    .line 99
    .local v8, "i":I
    if-lez v8, :cond_3

    move v0, v9

    .line 105
    :goto_2
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_3
    move v10, v0

    .line 99
    goto :goto_0

    :cond_3
    move v0, v10

    goto :goto_2

    .line 100
    .end local v8    # "i":I
    :catch_2
    move-exception v7

    .line 101
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 105
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 106
    :catch_3
    move-exception v7

    goto :goto_1

    .line 104
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 105
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 104
    :goto_4
    throw v0

    .line 106
    :catch_4
    move-exception v7

    .line 107
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 106
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i":I
    :catch_5
    move-exception v7

    .line 107
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static isInBlackList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 117
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->getWhere()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 131
    :goto_0
    return v10

    .line 126
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 128
    .local v8, "i":I
    if-lez v8, :cond_1

    move v0, v9

    .line 134
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    move v10, v0

    .line 128
    goto :goto_0

    :cond_1
    move v0, v10

    goto :goto_1

    .line 129
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v7

    .line 136
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 134
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 133
    :goto_3
    throw v0

    .line 135
    :catch_2
    move-exception v7

    .line 136
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 135
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i":I
    :catch_3
    move-exception v7

    .line 136
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v8

    .line 164
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SMS_WHITELIST_NUMBER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 165
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 173
    .local v7, "i":I
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_2
    if-lez v7, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v8, v0

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_1
.end method

.method public static isJudgeBlackListPhone(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pbNumber"    # Ljava/lang/String;
    .param p2, "vSimID"    # I

    .prologue
    const/4 v3, 0x1

    .line 184
    const-string v4, "ColorOSBlackListPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isJudgeBlackListPhone pbNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  vSimID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "isJudgeBlackListPhone_TYP1"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->getBlockSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "Blacklist is enabled"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 194
    .local v0, "bInWhite":Z
    const-string v4, "ColorOSBlackListPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isJudgeBlackListPhone_TYPE4 bInWhite = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez v0, :cond_0

    .line 197
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->isInBlackList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 198
    .local v1, "isExitBlackList":Z
    if-ne v1, v3, :cond_0

    .line 200
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->writeDabaseByNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 201
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "isJudgeBlackListPhone_TYPE5"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v2, Landroid/content/Intent;

    const-string v4, "oppo.intent.action.OPPO_ACTION_NOTIFICATION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "newintent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    .end local v0    # "bInWhite":Z
    .end local v1    # "isExitBlackList":Z
    .end local v2    # "newintent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 211
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isHolidayMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isHolidayModeContacts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSHolidayMode;->insertOrUpdateIncomingCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "isJudgeBlackListPhone_TYP2"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/ColorOSHolidayMode;->insertCallLog(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 244
    :cond_1
    const-string v3, "ColorOSBlackListPhone"

    const-string v4, "isJudgeBlackListPhone_TYPEND"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static writeDabaseByNumber(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "pbNumber"    # Ljava/lang/String;

    .prologue
    .line 143
    move-object v0, p2

    .line 144
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 150
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string v2, "duration"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "new"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v2, "simid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CALLSLOG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
