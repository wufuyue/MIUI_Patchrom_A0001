.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field static final ID_COLUMN:I = 0x7

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field private mOppoUsageManager:Landroid/os/OppoUsageManager;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 142
    sget-object v0, Landroid/provider/oppo/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v3, 0x1

    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 157
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 160
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 163
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 166
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOppoUsageManager:Landroid/os/OppoUsageManager;

    .line 194
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 195
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 196
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 197
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 198
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 199
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v2, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 204
    invoke-static {}, Landroid/os/OppoUsageManager;->getOppoUsageManager()Landroid/os/OppoUsageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOppoUsageManager:Landroid/os/OppoUsageManager;

    .line 207
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x111003a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 209
    .local v1, "smsCapable":Z
    const-string v2, "telephony.sms.receive"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 212
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 213
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 214
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 217
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 218
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 219
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 223
    const-string v2, "created InboundSmsHandler"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 224
    return-void

    .line 209
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/OppoUsageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mOppoUsageManager:Landroid/os/OppoUsageManager;

    return-object v0
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 22
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 798
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 800
    const/4 v9, 0x0

    .line 803
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v20

    .line 806
    .local v20, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 807
    .local v7, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 808
    .local v16, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 810
    .local v8, "count":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 813
    .local v19, "seqNumber":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v10, v1

    const/4 v1, 0x1

    aput-object v16, v10, v1

    const/4 v1, 0x2

    aput-object v8, v10, v1

    .line 814
    .local v10, "deleteWhereArgs":[Ljava/lang/String;
    const-string v1, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v4, "address=? AND reference_number=? AND count=? AND sequence=?"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    const/4 v6, 0x2

    aput-object v8, v5, v6

    const/4 v6, 0x3

    aput-object v19, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 822
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seqNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 825
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 826
    .local v14, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v15

    .line 827
    .local v15, "pdu":[B
    invoke-static {v14}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 828
    .local v13, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v1

    invoke-static {v13, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: dup message segment PDU of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is different from existing PDU of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    :cond_0
    const/4 v1, 0x5

    .line 839
    if-eqz v9, :cond_1

    .line 840
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 860
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "count":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v13    # "oldPdu":[B
    .end local v14    # "oldPduString":Ljava/lang/String;
    .end local v15    # "pdu":[B
    .end local v16    # "refNumber":Ljava/lang/String;
    .end local v19    # "seqNumber":Ljava/lang/String;
    .end local v20    # "sequence":I
    :cond_1
    :goto_0
    return v1

    .line 834
    .restart local v7    # "address":Ljava/lang/String;
    .restart local v8    # "count":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v16    # "refNumber":Ljava/lang/String;
    .restart local v19    # "seqNumber":Ljava/lang/String;
    .restart local v20    # "sequence":I
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    if-eqz v9, :cond_3

    .line 840
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 845
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "count":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v16    # "refNumber":Ljava/lang/String;
    .end local v19    # "seqNumber":Ljava/lang/String;
    .end local v20    # "sequence":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v21

    .line 848
    .local v21, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 849
    .local v12, "newUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI of new row -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 852
    :try_start_2
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v17

    .line 853
    .local v17, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 855
    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 857
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 835
    .end local v12    # "newUri":Landroid/net/Uri;
    .end local v17    # "rowId":J
    .end local v21    # "values":Landroid/content/ContentValues;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 836
    .local v11, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v1, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 837
    const/4 v1, 0x2

    .line 839
    if-eqz v9, :cond_1

    .line 840
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 839
    .end local v11    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_5

    .line 840
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 858
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "newUri":Landroid/net/Uri;
    .restart local v21    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 859
    .local v11, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing URI for new row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 860
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 869
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 870
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private localSendBroadCastSms(Landroid/content/Intent;Landroid/content/BroadcastReceiver;[[BLcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "pdus"    # [[B
    .param p4, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1074
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.action.NEW_SMS_TO_BLACKLIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .restart local p1    # "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1076
    const-string v0, "format"

    invoke-virtual {p4}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const-string v0, "rTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1078
    const-string v0, "android.permission.RECEIVE_SMS"

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->colordispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1080
    return-void
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 602
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 612
    :goto_0
    :sswitch_0
    return v0

    .line 604
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 602
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected colordispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1089
    return-void
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 780
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 781
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 783
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows from raw table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 770
    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 773
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    const-string v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x2

    .line 495
    :goto_0
    return v0

    .line 488
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 490
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x1

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 14
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 565
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v13

    .line 568
    .local v13, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v13, :cond_0

    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_2

    .line 570
    :cond_0
    const/4 v4, -0x1

    .line 571
    .local v4, "destPort":I
    if-eqz v13, :cond_1

    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destination port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 577
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 591
    .local v0, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v1

    return v1

    .line 581
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v4    # "destPort":I
    :cond_2
    iget-object v11, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 582
    .local v11, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v12, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 583
    .local v12, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v12, :cond_3

    iget v4, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 585
    .restart local v4    # "destPort":I
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    iget v7, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v8, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .restart local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    .line 583
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v4    # "destPort":I
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 231
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x1

    .line 451
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 459
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 467
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 468
    if-ne v2, v1, :cond_2

    .line 469
    .local v1, "handled":Z
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 460
    .end local v1    # "handled":Z
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 461
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    const/4 v2, 0x2

    .restart local v2    # "result":I
    goto :goto_1

    .line 468
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 542
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 546
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 547
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 35
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 624
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v24

    .line 626
    .local v24, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v17

    .line 628
    .local v17, "destPort":I
    const/4 v5, 0x1

    move/from16 v0, v24

    if-ne v0, v5, :cond_2

    .line 630
    const/4 v5, 0x1

    new-array v0, v5, [[B

    move-object/from16 v28, v0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v6

    aput-object v6, v28, v5

    .line 684
    .local v28, "pdus":[[B
    :cond_0
    :goto_0
    new-instance v32, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 686
    .local v32, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/16 v5, 0xb84

    move/from16 v0, v17

    if-ne v0, v5, :cond_b

    .line 688
    new-instance v26, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v26 .. v26}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 689
    .local v26, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v12, v28

    .local v12, "arr$":[[B
    array-length v0, v12

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-object v27, v12, v19

    .line 691
    .local v27, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v5

    if-nez v5, :cond_1

    .line 692
    const-string v5, "3gpp"

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v25

    .line 693
    .local v25, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v27

    .line 695
    .end local v25    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, v27

    array-length v6, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 689
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 633
    .end local v12    # "arr$":[[B
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v26    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v27    # "pdu":[B
    .end local v28    # "pdus":[[B
    .end local v32    # "resultReceiver":Landroid/content/BroadcastReceiver;
    :cond_2
    const/4 v15, 0x0

    .line 636
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 637
    .local v11, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    .line 638
    .local v30, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 641
    .local v14, "count":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v9, v5

    const/4 v5, 0x1

    aput-object v30, v9, v5

    const/4 v5, 0x2

    aput-object v14, v9, v5

    .line 642
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v8, "address=? AND reference_number=? AND count=?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 645
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 646
    .local v16, "cursorCount":I
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 652
    const/4 v5, 0x0

    .line 678
    if-eqz v15, :cond_3

    .line 679
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 757
    .end local v9    # "whereArgs":[Ljava/lang/String;
    .end local v11    # "address":Ljava/lang/String;
    .end local v14    # "count":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v16    # "cursorCount":I
    .end local v30    # "refNumber":Ljava/lang/String;
    :cond_3
    :goto_2
    return v5

    .line 656
    .restart local v9    # "whereArgs":[Ljava/lang/String;
    .restart local v11    # "address":Ljava/lang/String;
    .restart local v14    # "count":Ljava/lang/String;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursorCount":I
    .restart local v30    # "refNumber":Ljava/lang/String;
    :cond_4
    :try_start_1
    move/from16 v0, v24

    new-array v0, v0, [[B

    move-object/from16 v28, v0

    .line 657
    .restart local v28    # "pdus":[[B
    :cond_5
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 659
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v6

    sub-int v20, v5, v6

    .line 661
    .local v20, "index":I
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v28, v20

    .line 665
    if-nez v20, :cond_5

    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 666
    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 668
    .local v29, "port":I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v29

    .line 669
    const/4 v5, -0x1

    move/from16 v0, v29

    if-eq v0, v5, :cond_5

    .line 670
    move/from16 v17, v29

    goto :goto_3

    .line 678
    .end local v20    # "index":I
    .end local v29    # "port":I
    :cond_6
    if-eqz v15, :cond_0

    .line 679
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 674
    .end local v9    # "whereArgs":[Ljava/lang/String;
    .end local v11    # "address":Ljava/lang/String;
    .end local v14    # "count":Ljava/lang/String;
    .end local v16    # "cursorCount":I
    .end local v28    # "pdus":[[B
    .end local v30    # "refNumber":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 675
    .local v18, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v5, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 676
    const/4 v5, 0x0

    .line 678
    if-eqz v15, :cond_3

    .line 679
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 678
    .end local v18    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v15, :cond_7

    .line 679
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v5

    .line 700
    .end local v15    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "arr$":[[B
    .restart local v19    # "i$":I
    .restart local v22    # "len$":I
    .restart local v26    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v28    # "pdus":[[B
    .restart local v32    # "resultReceiver":Landroid/content/BroadcastReceiver;
    :cond_8
    const/4 v5, 0x0

    aget-object v5, v28, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v33

    .line 701
    .local v33, "sms":Landroid/telephony/SmsMessage;
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 702
    .local v23, "mBundle":Landroid/os/Bundle;
    if-eqz v33, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v5

    if-nez v5, :cond_9

    .line 703
    const-string v5, "address"

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v5, "service_center"

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v26 .. v26}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I

    move-result v31

    .line 712
    .local v31, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchWapPdu() returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 714
    const/4 v5, -0x1

    move/from16 v0, v31

    if-ne v0, v5, :cond_a

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 718
    .end local v12    # "arr$":[[B
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "mBundle":Landroid/os/Bundle;
    .end local v26    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v31    # "result":I
    .end local v33    # "sms":Landroid/telephony/SmsMessage;
    :cond_b
    const/4 v5, -0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_d

    .line 719
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v21, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v13

    .line 724
    .local v13, "componentName":Landroid/content/ComponentName;
    if-eqz v13, :cond_c

    .line 726
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering SMS to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 733
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    move-object/from16 v3, v28

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->localSendBroadCastSms(Landroid/content/Intent;Landroid/content/BroadcastReceiver;[[BLcom/android/internal/telephony/InboundSmsTracker;)V

    .line 734
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 738
    .end local v13    # "componentName":Landroid/content/ComponentName;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms://localhost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    .line 739
    .local v34, "uri":Landroid/net/Uri;
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 743
    .restart local v21    # "intent":Landroid/content/Intent;
    const/16 v5, 0x23f4

    move/from16 v0, v17

    if-lt v0, v5, :cond_e

    const/16 v5, 0x23f7

    move/from16 v0, v17

    if-gt v0, v5, :cond_e

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    move-object/from16 v3, v28

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->localSendBroadCastSms(Landroid/content/Intent;Landroid/content/BroadcastReceiver;[[BLcom/android/internal/telephony/InboundSmsTracker;)V

    .line 747
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 751
    :cond_e
    const-string v5, "pdus"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 752
    const-string v5, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v5, "android.permission.RECEIVE_SMS"

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 757
    const/4 v5, 0x1

    goto/16 :goto_2
.end method

.method protected storeVoiceMailCount()V
    .locals 7

    .prologue
    .line 875
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "imsi":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v2

    .line 877
    .local v2, "mwi":I
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    .line 879
    .local v4, "sub":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storing Voice Mail Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for mVmCountKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v6, "vm_count_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vmId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v6, "vm_id_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in preferences."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 885
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 886
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 887
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v6, "vm_count_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 888
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v6, "vm_id_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 889
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 890
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 237
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 238
    return-void
.end method
