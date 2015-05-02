.class public Lcom/android/internal/telephony/ColorOSHolidayMode;
.super Ljava/lang/Object;
.source "ColorOSHolidayMode.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.oppo.holidaymode.db.HolidayModeProvider"

.field public static final CONTACTS_ALL:Ljava/lang/String; = "all"

.field public static final CONTACTS_ID:Ljava/lang/String; = "cts_id"

.field public static final CONTACTS_MY_COLLECTION:Ljava/lang/String; = "my collection"

.field public static final CONTACTS_NAME:Ljava/lang/String; = "name"

.field public static final CONTACTS_NONE:Ljava/lang/String; = "none"

.field public static final CONTACTS_NUMBER:Ljava/lang/String; = "number"

.field public static final CONTACTS_TABLE_NAME:Ljava/lang/String; = "holidaymode_contacts"

.field public static final CONTACTS_USER_DEFINED:Ljava/lang/String; = "user defined"

.field public static final CONTENT_URI_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

.field public static final CONTENT_URI_STATES:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INCOMING_CALL_COUNT:Ljava/lang/String; = "call_count"

.field public static final INCOMING_CALL_FIRST:Ljava/lang/String; = "call_first"

.field public static final INCOMING_CALL_NUMBER:Ljava/lang/String; = "call_number"

.field public static final INCOMING_CALL_PERMIT:Ljava/lang/String; = "call_permit"

.field public static final INCOMING_CALL_SECOND:Ljava/lang/String; = "call_second"

.field public static final INCOMING_CALL_TABLE_NAME:Ljava/lang/String; = "holidaymode_incoming_call"

.field public static final INCOMING_CALL_THIRD:Ljava/lang/String; = "call_third"

.field public static final KEY_MSG_BODY:Ljava/lang/String; = "body"

.field public static final KEY_PHONE_NUMNER:Ljava/lang/String; = "PHONE_NUMBER"

.field public static final KEY_SERVICE_CENTER:Ljava/lang/String; = "service_center"

.field public static final KEY_TIME_3_MINUTES:J = 0x2bf20L

.field public static final NEW_CLOUD_SMS:Ljava/lang/String; = "android.intent.action.NEW_CLOUD_SMS_TO_BLACKLIST"

.field public static final NEW_CLOUD_WAPPUSH:Ljava/lang/String; = "android.intent.action.NEW_CLOUD_WAPPUSH_TO_BLACKLIST"

.field public static final NEW_SMS:Ljava/lang/String; = "android.intent.action.NEW_SMS_TO_BLACKLIST"

.field public static final NEW_WAPPUSH:Ljava/lang/String; = "android.intent.action.NEW_WAPPUSH_TO_BLACKLIST"

.field public static final PROJECTION_CONTACTS:[Ljava/lang/String;

.field public static final PROJECTION_INCOMING_CALL:[Ljava/lang/String;

.field public static final PROJECTION_STATES:[Ljava/lang/String;

.field public static final STATES_HOLIDAY_MODE:Ljava/lang/String; = "states_holiday_mode"

.field public static final STATES_HOLIDAY_MODE_ALWAYS:Ljava/lang/String; = "states_holiday_mode_always"

.field public static final STATES_HOLIDAY_MODE_CONTACTS_GROUP:Ljava/lang/String; = "states_holiday_mode_contacts_group"

.field public static final STATES_HOLIDAY_MODE_TIME_END:Ljava/lang/String; = "states_holiday_mode_time_end"

.field public static final STATES_HOLIDAY_MODE_TIME_START:Ljava/lang/String; = "states_holiday_mode_time_start"

.field public static final STATES_NAME:Ljava/lang/String; = "name"

.field public static final STATES_TABLE_NAME:Ljava/lang/String; = "holidaymode_states"

.field public static final STATES_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "OppoHolidayMode"

.field public static final TIME_00_00:Ljava/lang/String; = "00:00"

.field public static final TIME_24_00:Ljava/lang/String; = "24:00"

.field public static mSmsUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    const-string v0, "content://com.oppo.holidaymode.db.HolidayModeProvider/holidaymode_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_CONTACTS:Landroid/net/Uri;

    .line 41
    const-string v0, "content://com.oppo.holidaymode.db.HolidayModeProvider/holidaymode_states"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_STATES:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.oppo.holidaymode.db.HolidayModeProvider/holidaymode_incoming_call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

    .line 81
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSHolidayMode;->mSmsUri:Landroid/net/Uri;

    .line 83
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "cts_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/ColorOSHolidayMode;->PROJECTION_CONTACTS:[Ljava/lang/String;

    .line 90
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ColorOSHolidayMode;->PROJECTION_STATES:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "call_number"

    aput-object v1, v0, v3

    const-string v1, "call_first"

    aput-object v1, v0, v4

    const-string v1, "call_second"

    aput-object v1, v0, v5

    const-string v1, "call_third"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "call_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "call_permit"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ColorOSHolidayMode;->PROJECTION_INCOMING_CALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    const-string v0, "PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeFormat(I)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # I

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "string":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 343
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static insertCallLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "vSimID"    # I

    .prologue
    const/4 v9, 0x0

    .line 361
    const-string v6, "OppoHolidayMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertCallLog = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",  vSimID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "number"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v6, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    const-string v6, "type"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v6, "new"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    invoke-static {p0, p2}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v4

    .line 370
    .local v4, "simInfo":Landroid/provider/oppo/Telephony$SIMInfo;
    const/4 v3, -0x1

    .line 371
    .local v3, "simId":I
    if-eqz v4, :cond_0

    .line 372
    iget-wide v6, v4, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    long-to-int v3, v6

    .line 375
    :cond_0
    const-string v6, "simid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/oppo/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 381
    .local v2, "pIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_PHONE_POP_UP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v6, "backPendingIntent"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method public static insertOrUpdateIncomingCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "holiday_call_reminder_mode_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 389
    const/4 v2, 0x1

    .line 484
    :cond_0
    :goto_0
    return v2

    .line 392
    :cond_1
    const/16 v17, 0x0

    .line 393
    .local v17, "updateState":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/ColorOSHolidayMode;->PROJECTION_INCOMING_CALL:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 397
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 399
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 400
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v12, v2, :cond_6

    .line 401
    invoke-interface {v9, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 402
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 403
    .local v16, "strNumber":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 404
    .local v10, "first":J
    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 405
    .local v8, "count":I
    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 406
    .local v15, "state":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 408
    .local v13, "nowTime":J
    const-wide/32 v2, 0x2bf20

    add-long/2addr v2, v10

    cmp-long v2, v13, v2

    if-lez v2, :cond_3

    .line 409
    const-string v2, "false"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call_number = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 400
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 416
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    const-string v2, "true"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 418
    const-string v2, "OppoHolidayMode"

    const-string v3, "insertOrUpdateIncomingCall state = false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    const/4 v2, 0x0

    .line 464
    if-eqz v9, :cond_0

    .line 465
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 466
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 422
    :cond_4
    packed-switch v8, :pswitch_data_0

    .line 458
    :goto_4
    const/16 v17, 0x1

    goto :goto_2

    .line 424
    :pswitch_0
    :try_start_1
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v18, "values":Landroid/content/ContentValues;
    const-string v2, "call_second"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    const-string v2, "call_count"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call_number = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 464
    .end local v8    # "count":I
    .end local v10    # "first":J
    .end local v12    # "i":I
    .end local v13    # "nowTime":J
    .end local v15    # "state":Ljava/lang/String;
    .end local v16    # "strNumber":Ljava/lang/String;
    .end local v18    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    .line 465
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 466
    const/4 v9, 0x0

    .line 464
    :cond_5
    throw v2

    .line 438
    .restart local v8    # "count":I
    .restart local v10    # "first":J
    .restart local v12    # "i":I
    .restart local v13    # "nowTime":J
    .restart local v15    # "state":Ljava/lang/String;
    .restart local v16    # "strNumber":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 439
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v2, "call_third"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v2, "call_count"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string v2, "call_permit"

    const-string v3, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call_number = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    const-string v2, "OppoHolidayMode"

    const-string v3, "insertOrUpdateIncomingCall state = false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    const/4 v2, 0x0

    .line 464
    if-eqz v9, :cond_0

    .line 465
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 464
    .end local v8    # "count":I
    .end local v10    # "first":J
    .end local v12    # "i":I
    .end local v13    # "nowTime":J
    .end local v15    # "state":Ljava/lang/String;
    .end local v16    # "strNumber":Ljava/lang/String;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_6
    if-eqz v9, :cond_7

    .line 465
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 466
    const/4 v9, 0x0

    .line 471
    :cond_7
    if-nez v17, :cond_8

    .line 472
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v2, "call_number"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v2, "call_first"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    const-string v2, "call_second"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    const-string v2, "call_third"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    const-string v2, "call_count"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    const-string v2, "call_permit"

    const-string v3, "false"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 483
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string v2, "OppoHolidayMode"

    const-string v3, "insertOrUpdateIncomingCall state = true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isContactsAll(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 184
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 186
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1 = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 212
    :goto_0
    return v0

    .line 198
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "strNumber":Ljava/lang/String;
    const-string v0, "OppoHolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContactsAll  strNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    if-eqz v6, :cond_1

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    .line 202
    goto :goto_0

    .line 206
    .end local v7    # "strNumber":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    const/4 v6, 0x0

    .line 206
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_4

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    const/4 v6, 0x0

    :cond_4
    move v0, v8

    .line 212
    goto :goto_0
.end method

.method private static isContactsGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 127
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 128
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_STATES:Landroid/net/Uri;

    const-string v3, "name = \'states_holiday_mode_contacts_group\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 137
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "value":Ljava/lang/String;
    const-string v0, "OppoHolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContactsGroup  value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-eqz v6, :cond_0

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    const/4 v6, 0x0

    .line 149
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 143
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    const/4 v6, 0x0

    .line 143
    :cond_1
    throw v0

    :cond_2
    if-eqz v6, :cond_3

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    const/4 v6, 0x0

    :cond_3
    move-object v7, v4

    .line 149
    goto :goto_0
.end method

.method private static isContactsUserDefined(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 217
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v9

    .line 219
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_CONTACTS:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 241
    :goto_0
    return v0

    .line 227
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "strNumber":Ljava/lang/String;
    const-string v0, "OppoHolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContactsUserDefined  strNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    if-eqz v6, :cond_1

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    .line 231
    goto :goto_0

    .line 235
    .end local v7    # "strNumber":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    const/4 v6, 0x0

    .line 235
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_4

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    const/4 v6, 0x0

    :cond_4
    move v0, v8

    .line 241
    goto :goto_0
.end method

.method public static isHolidayMode(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    const/4 v3, 0x0

    .line 245
    const/4 v8, 0x0

    .line 246
    .local v8, "HolidayModeStates":Z
    const/4 v7, 0x0

    .line 247
    .local v7, "HolidayModeAlwaysStates":Z
    const/4 v9, 0x0

    .line 248
    .local v9, "StartTime":Ljava/lang/String;
    const/4 v6, 0x0

    .line 250
    .local v6, "EndTime":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ColorOSHolidayMode;->CONTENT_URI_STATES:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ColorOSHolidayMode;->PROJECTION_STATES:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 252
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 254
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v11, v0, :cond_5

    .line 256
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 257
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "value":Ljava/lang/String;
    const-string v0, "states_holiday_mode"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 255
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 261
    :cond_1
    const-string v0, "states_holiday_mode_always"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_1

    .line 263
    :cond_2
    const-string v0, "states_holiday_mode_time_start"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    move-object v9, v13

    goto :goto_1

    .line 265
    :cond_3
    const-string v0, "states_holiday_mode_time_end"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    move-object v6, v13

    goto :goto_1

    .line 271
    .end local v11    # "i":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    .line 272
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 273
    const/4 v10, 0x0

    .line 271
    :cond_4
    throw v0

    :cond_5
    if-eqz v10, :cond_6

    .line 272
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 273
    const/4 v10, 0x0

    .line 278
    :cond_6
    const-string v0, "OppoHolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHolidayMode  HolidayModeStates = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v0, "OppoHolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHolidayMode  HolidayModeAlwaysStates = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "OppoHolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHolidayMode  StartTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "OppoHolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHolidayMode  EndTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v8, v7, v9, v6}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isTimeCompare(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v14

    .line 286
    :goto_2
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static isHolidayModeContacts(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isContactsGroup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "isHolidayModeContactsGroup":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1

    .line 111
    :cond_0
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const-string v2, "OppoHolidayMode"

    const-string v3, "isHolidayModeContacts = true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    const-string v2, "my collection"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isMyCollection(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 116
    :cond_2
    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isContactsAll(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 118
    :cond_3
    const-string v2, "user defined"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isContactsUserDefined(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 122
    :cond_4
    const-string v2, "OppoHolidayMode"

    const-string v3, "isHolidayModeContacts = true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isMyCollection(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 153
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 154
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "starred =  1 AND data1 = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 180
    :goto_0
    return v0

    .line 165
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "strNumber":Ljava/lang/String;
    const-string v0, "OppoHolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContactsGroup  strNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    if-eqz v6, :cond_1

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    .line 169
    goto :goto_0

    .line 173
    .end local v7    # "strNumber":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    const/4 v6, 0x0

    .line 173
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_4

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    const/4 v6, 0x0

    :cond_4
    move v0, v8

    .line 180
    goto :goto_0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 351
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 352
    .local v0, "isScreenOn":Z
    const-string v2, "OppoHolidayMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v0
.end method

.method private static isTimeCompare(ZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "HolidayModeStates"    # Z
    .param p1, "HolidayModeAlwaysStates"    # Z
    .param p2, "StartTime"    # Ljava/lang/String;
    .param p3, "EndTime"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 291
    if-eqz p0, :cond_8

    .line 292
    if-eqz p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v4

    .line 295
    :cond_1
    const-string v6, "OppoHolidayMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeCompare HolidayModeAlwaysStates = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 299
    .local v2, "t":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 300
    iget v0, v2, Landroid/text/format/Time;->hour:I

    .line 301
    .local v0, "hour":I
    iget v1, v2, Landroid/text/format/Time;->minute:I

    .line 302
    .local v1, "minute":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/telephony/ColorOSHolidayMode;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/ColorOSHolidayMode;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "timeString":Ljava/lang/String;
    const-string v6, "OppoHolidayMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeCompare timeString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-eqz p3, :cond_2

    const-string v6, ""

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p2, :cond_2

    const-string v6, ""

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v4, v5

    .line 309
    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    .line 312
    const-string v6, "OppoHolidayMode"

    const-string v7, "timeCompare EndTime.compareTo(StartTime) > 0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {v3, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    :cond_4
    move v4, v5

    .line 318
    goto/16 :goto_0

    .line 320
    :cond_5
    invoke-virtual {p3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_8

    .line 321
    const-string v6, "OppoHolidayMode"

    const-string v7, "timeCompare EndTime.compareTo(StartTime) < 0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    const-string v6, "24:00"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 326
    :cond_6
    const-string v6, "00:00"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_7

    invoke-virtual {v3, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    :cond_7
    move v4, v5

    .line 330
    goto/16 :goto_0

    .end local v0    # "hour":I
    .end local v1    # "minute":I
    .end local v2    # "t":Landroid/text/format/Time;
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_8
    move v4, v5

    .line 335
    goto/16 :goto_0
.end method
