.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$1;,
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CFIS_ADN_CAPABILITY_ID_OFFSET:I = 0xe

.field private static final CFIS_ADN_EXTENSION_ID_OFFSET:I = 0xf

.field private static final CFIS_BCD_NUMBER_LENGTH_OFFSET:I = 0x2

.field private static final CFIS_TON_NPI_OFFSET:I = 0x3

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_GID1_DONE:I = 0x22

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PLMN_LIST_DONE:I = 0x64

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_POL_ACT_DONE:I = 0xc7

.field private static final EVENT_GET_POL_DONE:I = 0x63

.field private static final EVENT_GET_POL_ERROR:I = 0x4d

.field private static final EVENT_GET_POL_SEL_DONE:I = 0x12b

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_POL_ACT_DONE:I = 0xbc

.field private static final EVENT_SET_POL_DONE:I = 0x58

.field private static final EVENT_SET_POL_ERROR:I = 0x42

.field private static final EVENT_SET_POL_SEL_DONE:I = 0x120

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final EVENT_UPDATE_PLMN_LIST_DONE:I = 0x65

.field protected static final LOG_TAG:Ljava/lang/String; = "SIMRecords"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field private static final POL_TECH_CDMA2000:I = 0x2

.field private static final POL_TECH_E_UTRAN:I = 0x4

.field private static final POL_TECH_GSM:I = 0x1

.field private static final POL_TECH_UNKNOW:I = 0x0

.field private static final POL_TECH_UTRAN:I = 0x3

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80


# instance fields
.field private eventGetPolError:Z

.field private eventSetPolError:Z

.field private mApptype:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field private mCallForwardingEnabled:Z

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCPHS_MWI:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfMWIS:[B

.field mEfpol:[B

.field private mIsSingleCard:Z

.field private mIsTestCard:Z
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for white card mode"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field mOperatorAlphaName:[Ljava/lang/String;

.field mOperatorNumeric:[Ljava/lang/String;

.field mPlmn:[I

.field public mPlmnNumber:I

.field mPnnHomeName:Ljava/lang/String;

.field mReadBuffer:[B

.field protected mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSpdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSpnDisplayCondition:I

.field mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

.field private mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field mTech:[I

.field public mUsedPlmnNumber:I

.field mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

.field mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

.field mWriteBuffer:[B

.field protected onCompleteMsg:Landroid/os/Message;

.field private oppoMsisdnNumber:Ljava/lang/String;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private oppoMsisdnTag:Ljava/lang/String;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 259
    const/16 v0, 0x83

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "302370"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "302720"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "310260"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "405025"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "405026"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405912"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405913"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405914"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "405915"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "405916"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "405917"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "405918"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "405919"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "405920"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "405921"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "405922"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "405923"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "405924"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "405930"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "405931"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "405932"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "502142"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "502143"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "502145"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "502146"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "502147"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "502148"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for SIMInfo db, only for QCOM platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 284
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 93
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 94
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 96
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 97
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 98
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 99
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 121
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 123
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 216
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->eventGetPolError:Z

    .line 217
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->eventSetPolError:Z

    .line 234
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnNumber:Ljava/lang/String;

    .line 239
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnTag:Ljava/lang/String;

    .line 286
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 288
    new-instance v1, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 289
    new-instance v1, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    .line 291
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 296
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsTestCard:Z

    .line 301
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "oppo.qualcomm.gemini.support"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 302
    .local v0, "vTempFlag":Z
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsSingleCard:Z

    .line 306
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0, v2, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords X ctor this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 312
    return-void

    :cond_0
    move v1, v3

    .line 302
    goto :goto_0
.end method

.method private dispatchGsmMessage(Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "message"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1546
    const/4 v0, 0x0

    return v0
.end method

.method public static getBooleanArray(B)[B
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 2151
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 2152
    .local v0, "array":[B
    const/4 v1, 0x7

    .local v1, "i":B
    :goto_0
    if-ltz v1, :cond_0

    .line 2153
    and-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2154
    shr-int/lit8 v2, p0, 0x1

    int-to-byte p0, v2

    .line 2152
    add-int/lit8 v2, v1, -0x1

    int-to-byte v1, v2

    goto :goto_0

    .line 2156
    :cond_0
    return-object v0
.end method

.method private getExtFromEf(I)I
    .locals 3
    .param p1, "ef"    # I

    .prologue
    .line 388
    packed-switch p1, :pswitch_data_0

    .line 398
    const/16 v0, 0x6f4a

    .line 400
    .local v0, "ext":I
    :goto_0
    return v0

    .line 391
    .end local v0    # "ext":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_0

    .line 392
    const/16 v0, 0x6f4e

    .restart local v0    # "ext":I
    goto :goto_0

    .line 394
    .end local v0    # "ext":I
    :cond_0
    const/16 v0, 0x6f4a

    .line 396
    .restart local v0    # "ext":I
    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x6f40
        :pswitch_0
    .end packed-switch
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 6
    .param p1, "start"    # Z
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1861
    if-eqz p1, :cond_2

    .line 1864
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v1, v2, :cond_1

    .line 1870
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1945
    :goto_0
    return-void

    .line 1873
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1877
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$uicc$SIMRecords$GetSpnFsmState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1943
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 1879
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 1881
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f46

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1883
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1885
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 1888
    :pswitch_1
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 1889
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 1890
    .local v0, "data":[B
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 1891
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 1893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1895
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1898
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 1900
    .end local v0    # "data":[B
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f14

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1902
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1904
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1908
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    goto/16 :goto_0

    .line 1912
    :pswitch_2
    if-eqz p2, :cond_4

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 1913
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 1914
    .restart local v0    # "data":[B
    array-length v1, v0

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1917
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1919
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 1921
    .end local v0    # "data":[B
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f18

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1923
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1925
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 1929
    :pswitch_3
    if-eqz p2, :cond_5

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 1930
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 1931
    .restart local v0    # "data":[B
    array-length v1, v0

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 1933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1934
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1940
    .end local v0    # "data":[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 1937
    :cond_5
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1877
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x1

    .line 2037
    array-length v3, p1

    div-int/lit8 v1, v3, 0x2

    .line 2039
    .local v1, "usedCspGroups":I
    const/16 v2, -0x40

    .line 2041
    .local v2, "valueAddedServicesGroup":B
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 2042
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 2043
    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2045
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 2049
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 2062
    :goto_1
    return-void

    .line 2051
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 2054
    const-string v3, "[CSP] Set Automatic Network Selection"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2055
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .line 2042
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2061
    :cond_2
    const-string v3, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleEfPOLResponse(I[BLandroid/os/Message;)V
    .locals 3
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 2276
    const/4 v0, 0x0

    .line 2277
    .local v0, "ret":Ljava/lang/Object;
    const-string v1, "wjp_pol"

    const-string v2, "handle response============"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->responseNetworkInfoWithActs(I[B)Ljava/lang/Object;

    move-result-object v0

    .line 2279
    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2280
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 2281
    return-void
.end method

.method private handlePlmnListData(Landroid/os/Message;[BLjava/lang/Throwable;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # [B
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 2569
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2571
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2572
    return-void
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 3
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 1500
    if-nez p1, :cond_1

    .line 1501
    const-string v0, "handleSimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 1535
    const-string v0, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1513
    :pswitch_0
    const-string v0, "handleSimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1514
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 1517
    :pswitch_1
    const-string v0, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    goto :goto_0

    .line 1522
    :pswitch_2
    const-string v0, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 7
    .param p1, "ba"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1570
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 1571
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1576
    array-length v1, p1

    .line 1580
    .local v1, "n":I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 1581
    .local v2, "pdu":[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1582
    const-string v3, "3gpp"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 1584
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 1586
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    .end local v1    # "n":I
    .end local v2    # "pdu":[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1590
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1592
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1593
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1595
    .local v0, "ba":[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 1596
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1602
    array-length v4, v0

    .line 1606
    .local v4, "n":I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 1607
    .local v5, "pdu":[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1608
    const-string v6, "3gpp"

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 1610
    .local v3, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 1615
    aput-byte v10, v0, v9

    .line 1592
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "n":I
    .end local v5    # "pdu":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1623
    .end local v0    # "ba":[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1992
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 1993
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1814
    if-nez p1, :cond_1

    .line 1827
    :cond_0
    :goto_0
    return v2

    .line 1816
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1817
    goto :goto_0

    .line 1820
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1821
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1822
    .local v1, "spdiNet":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1823
    goto :goto_0
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .param p1, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 1954
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1956
    .local v3, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 1958
    .local v2, "plmnEntries":[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1960
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_0

    .line 1961
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v4, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .end local v3    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .local v4, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v3, v4

    .line 1964
    .end local v4    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v3    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_3

    .line 1965
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 1970
    :cond_1
    if-nez v2, :cond_4

    .line 1986
    :cond_2
    return-void

    .line 1958
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 1974
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 1976
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 1978
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 1981
    .local v1, "plmnCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 1982
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1983
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1976
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private responseNetworkInfoWithActs(I[B)Ljava/lang/Object;
    .locals 9
    .param p1, "fileid"    # I
    .param p2, "data"    # [B

    .prologue
    .line 2161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs enter fileid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2169
    const/4 v3, 0x5

    .line 2170
    .local v3, "offset":I
    const/16 v5, 0x6f30

    if-ne p1, v5, :cond_0

    .line 2171
    const/4 v3, 0x3

    .line 2174
    :cond_0
    array-length v5, p2

    div-int/2addr v5, v3

    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    .line 2176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs mPlmnNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2177
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmn:[I

    .line 2178
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTech:[I

    .line 2179
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorAlphaName:[Ljava/lang/String;

    .line 2180
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNumeric:[Ljava/lang/String;

    .line 2181
    const/16 v5, 0x8

    new-array v1, v5, [B

    .line 2182
    .local v1, "mTechBit1":[B
    const/16 v5, 0x8

    new-array v2, v5, [B

    .line 2184
    .local v2, "mTechBit2":[B
    array-length v5, p2

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReadBuffer:[B

    .line 2185
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReadBuffer:[B

    .line 2188
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    .line 2210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    if-ge v0, v5, :cond_1

    .line 2211
    mul-int v5, v0, v3

    aget-byte v5, p2, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    mul-int v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p2, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    mul-int v5, v0, v3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p2, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 2212
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    .line 2213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs mccmnc is FFFFFF ,then break ============mUsedPlmnNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2257
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2258
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v0, 0x0

    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    if-ge v0, v5, :cond_e

    .line 2259
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNumeric:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_d

    .line 2260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs  add mOperatorAlphaName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorAlphaName:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2261
    new-instance v5, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorAlphaName:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNumeric:[Ljava/lang/String;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTech:[I

    aget v8, v8, v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2218
    .end local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmn:[I

    mul-int v6, v0, v3

    aget-byte v6, p2, v6

    mul-int v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p2, v7

    mul-int v8, v0, v3

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p2, v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->getplmn(BBB)I

    move-result v6

    aput v6, v5, v0

    .line 2219
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNumeric:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmn:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 2220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs plmn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNumeric:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2221
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorAlphaName:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNumeric:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPlmnOverrideForUplmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 2222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs plmn name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorAlphaName:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2225
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTech:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    .line 2226
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    .line 2227
    const/16 v5, 0x6f30

    if-ne p1, v5, :cond_4

    .line 2210
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2232
    :cond_4
    mul-int v5, v0, v3

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p2, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->getBooleanArray(B)[B

    move-result-object v1

    .line 2233
    mul-int v5, v0, v3

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p2, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->getBooleanArray(B)[B

    move-result-object v2

    .line 2235
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    :cond_5
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 2236
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs plmn:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmn:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        tech is gsm and utran  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2237
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTech:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    goto :goto_3

    .line 2240
    :cond_7
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 2241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs plmn:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmn:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        tech is UTRAN  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2242
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTech:[I

    const/4 v6, 0x3

    aput v6, v5, v0

    goto/16 :goto_3

    .line 2243
    :cond_8
    const/4 v5, 0x1

    aget-byte v5, v1, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 2244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs plmn:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmn:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        tech is E-UTRAN  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2245
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTech:[I

    const/4 v6, 0x4

    aput v6, v5, v0

    goto/16 :goto_3

    .line 2247
    :cond_9
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 2248
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs plmn:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmn:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    tech is gsm  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2249
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTech:[I

    const/4 v6, 0x1

    aput v6, v5, v0

    goto/16 :goto_3

    .line 2250
    :cond_b
    const/4 v5, 0x2

    aget-byte v5, v2, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2251
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseNetworkInfoWithActs plmn:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmn:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        tech is cdma  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2252
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTech:[I

    const/4 v6, 0x2

    aput v6, v5, v0

    goto/16 :goto_3

    .line 2268
    .restart local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    :cond_d
    const-string v5, "SIMRecords"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseNetworkInfoWithActs: invalid oper. i is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2272
    :cond_e
    return-object v4
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 1677
    :cond_0
    return-void
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 2090
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2091
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 1683
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1684
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1686
    :cond_0
    return-void
.end method

.method private validEfCfis([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 573
    if-eqz p1, :cond_0

    aget-byte v2, p1, v1

    if-lt v2, v0, :cond_0

    aget-byte v2, p1, v1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing SIMRecords this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 320
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 321
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfMWIS[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCPHS_MWI[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCff[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCfis[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpdiNetworks[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPnnHomeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUsimServiceTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGid1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2085
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 5

    .prologue
    const/16 v4, 0x6f40

    const/4 v3, 0x1

    .line 1694
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1699
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1701
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1702
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1706
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1708
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1711
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1712
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1714
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1715
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1718
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1719
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1729
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1734
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1735
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1736
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1739
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 1741
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1742
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1744
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1745
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1747
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1748
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1751
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1753
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1754
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f3e

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1757
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1778
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 325
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public formPlmnToByte(Ljava/lang/String;)[B
    .locals 14
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 2311
    const/4 v11, 0x3

    new-array v10, v11, [B

    .line 2317
    .local v10, "ret":[B
    const-string v11, "wjp_pol"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "formPlmnToByte plmn:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2321
    .local v9, "plmnvalue":I
    const v11, 0x1869f

    if-le v9, v11, :cond_0

    .line 2322
    const-string v11, "wjp_pol"

    const-string v12, "mnc_includes_pcs_digit true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    const/4 v8, 0x1

    .line 2329
    .local v8, "mnc_includes_pcs_digit":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 2330
    div-int/lit16 v0, v9, 0x3e8

    .line 2331
    .local v0, "mcc":I
    mul-int/lit16 v11, v0, 0x3e8

    sub-int v4, v9, v11

    .line 2337
    .local v4, "mnc":I
    :goto_1
    const-string v11, "wjp_pol"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mcc:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   mnc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    div-int/lit8 v1, v0, 0x64

    .line 2341
    .local v1, "mcc_digit_1":I
    mul-int/lit8 v11, v1, 0x64

    sub-int v11, v0, v11

    div-int/lit8 v2, v11, 0xa

    .line 2342
    .local v2, "mcc_digit_2":I
    mul-int/lit8 v11, v1, 0x64

    sub-int v11, v0, v11

    mul-int/lit8 v12, v2, 0xa

    sub-int v3, v11, v12

    .line 2344
    .local v3, "mcc_digit_3":I
    if-eqz v8, :cond_2

    .line 2346
    div-int/lit8 v5, v4, 0x64

    .line 2347
    .local v5, "mnc_digit_1":I
    mul-int/lit8 v11, v5, 0x64

    sub-int v11, v4, v11

    div-int/lit8 v6, v11, 0xa

    .line 2348
    .local v6, "mnc_digit_2":I
    mul-int/lit8 v11, v5, 0x64

    sub-int v11, v4, v11

    mul-int/lit8 v12, v6, 0xa

    sub-int v7, v11, v12

    .line 2357
    .local v7, "mnc_digit_3":I
    :goto_2
    const-string v11, "wjp_pol"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mcc_digit_1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   mcc_digit_2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   mcc_digit_3:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const-string v11, "wjp_pol"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mnc_digit_1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   mnc_digit_2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   mnc_digit_3:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const/4 v11, 0x0

    shl-int/lit8 v12, v2, 0x4

    add-int/2addr v12, v1

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 2361
    const/4 v11, 0x1

    shl-int/lit8 v12, v7, 0x4

    add-int/2addr v12, v3

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 2362
    const/4 v11, 0x2

    shl-int/lit8 v12, v6, 0x4

    add-int/2addr v12, v5

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 2363
    const-string v11, "wjp_pol"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ret[0]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-byte v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   ret[1]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-byte v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   ret[2]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget-byte v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    return-object v10

    .line 2325
    .end local v0    # "mcc":I
    .end local v1    # "mcc_digit_1":I
    .end local v2    # "mcc_digit_2":I
    .end local v3    # "mcc_digit_3":I
    .end local v4    # "mnc":I
    .end local v5    # "mnc_digit_1":I
    .end local v6    # "mnc_digit_2":I
    .end local v7    # "mnc_digit_3":I
    .end local v8    # "mnc_includes_pcs_digit":Z
    :cond_0
    const-string v11, "wjp_pol"

    const-string v12, "mnc_includes_pcs_digit false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const/4 v8, 0x0

    .restart local v8    # "mnc_includes_pcs_digit":Z
    goto/16 :goto_0

    .line 2333
    :cond_1
    div-int/lit8 v0, v9, 0x64

    .line 2334
    .restart local v0    # "mcc":I
    mul-int/lit8 v11, v0, 0x64

    sub-int v4, v9, v11

    .restart local v4    # "mnc":I
    goto/16 :goto_1

    .line 2352
    .restart local v1    # "mcc_digit_1":I
    .restart local v2    # "mcc_digit_2":I
    .restart local v3    # "mcc_digit_3":I
    :cond_2
    div-int/lit8 v5, v4, 0xa

    .line 2353
    .restart local v5    # "mnc_digit_1":I
    mul-int/lit8 v11, v5, 0xa

    sub-int v6, v4, v11

    .line 2354
    .restart local v6    # "mnc_digit_2":I
    const/16 v7, 0xf

    .restart local v7    # "mnc_digit_3":I
    goto/16 :goto_2
.end method

.method public formRatToByte(I)[B
    .locals 7
    .param p1, "rat"    # I

    .prologue
    const/16 v6, -0x80

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2369
    const-string v1, "wjp_pol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formRatToByte rat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 2371
    .local v0, "ret":[B
    if-nez p1, :cond_0

    .line 2374
    const/16 v1, -0x40

    aput-byte v1, v0, v4

    .line 2375
    aput-byte v6, v0, v5

    .line 2376
    const-string v1, "wjp_pol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm+td+lte rat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :goto_0
    return-object v0

    .line 2378
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2379
    aput-byte v4, v0, v4

    .line 2380
    aput-byte v6, v0, v5

    .line 2381
    const-string v1, "wjp_pol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm rat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2382
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 2383
    aput-byte v6, v0, v4

    .line 2384
    aput-byte v4, v0, v5

    .line 2385
    const-string v1, "wjp_pol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "td rat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2388
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 2389
    const/16 v1, 0x40

    aput-byte v1, v0, v4

    .line 2390
    aput-byte v4, v0, v5

    .line 2391
    const-string v1, "wjp_pol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lte rat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2394
    :cond_3
    aput-byte v4, v0, v4

    .line 2395
    aput-byte v4, v0, v5

    .line 2396
    const-string v1, "wjp_pol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknow rat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1793
    :cond_0
    const/4 v0, 0x2

    .line 1807
    .local v0, "rule":I
    :cond_1
    :goto_0
    return v0

    .line 1794
    .end local v0    # "rule":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1795
    const/4 v0, 0x1

    .line 1796
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1798
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1801
    .end local v0    # "rule":I
    :cond_3
    const/4 v0, 0x2

    .line 1802
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1804
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 708
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 709
    const-string v1, "getOperatorNumeric: IMSI == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 719
    :goto_0
    return-object v0

    .line 712
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v1, :cond_2

    .line 713
    :cond_1
    const-string v1, "getSIMOperatorNumeric: bad mncLength"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPOLTotleNumber()I
    .locals 1

    .prologue
    .line 2521
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    return v0
.end method

.method public getPOLUsedNumber()I
    .locals 1

    .prologue
    .line 2525
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    return v0
.end method

.method public getPlmnList(ZLandroid/os/Message;)Z
    .locals 5
    .param p1, "bwAct"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2531
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-nez v2, :cond_0

    .line 2546
    :goto_0
    return v0

    .line 2537
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mApptype:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 2539
    .local v0, "bUsim":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlmnList bUsim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bwAct:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2541
    if-eqz p1, :cond_2

    .line 2542
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f60

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    :goto_1
    move v0, v1

    .line 2546
    goto :goto_0

    .line 2544
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f30

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public getPreferedOperatorList(Landroid/os/Message;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "msst"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    const/16 v3, 0x6f60

    const/4 v2, 0x0

    .line 2284
    const-string v0, "wjp_pol"

    const-string v1, "simrecord getPreferedOperatorList ============"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 2287
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->onCompleteMsg:Landroid/os/Message;

    .line 2303
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    .line 2304
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    .line 2305
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x63

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2308
    return-void
.end method

.method public getSpnDisplayCondition()I
    .locals 1

    .prologue
    .line 2109
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 577
    const/4 v2, 0x0

    .line 578
    .local v2, "voiceMailWaiting":Z
    const/4 v0, -0x1

    .line 579
    .local v0, "countVoiceMessages":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v5, :cond_3

    .line 583
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v2, v3

    .line 584
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v3, v4, v3

    and-int/lit16 v0, v3, 0xff

    .line 586
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 588
    const/4 v0, -0x1

    .line 590
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM MWIS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 604
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v4

    .line 583
    goto :goto_0

    .line 591
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v3, :cond_1

    .line 593
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    aget-byte v3, v3, v4

    and-int/lit8 v1, v3, 0xf

    .line 596
    .local v1, "indicator":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 598
    const/4 v0, -0x1

    .line 602
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM CPHS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 599
    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 600
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getplmn(BBB)I
    .locals 10
    .param p1, "data0"    # B
    .param p2, "data1"    # B
    .param p3, "data2"    # B

    .prologue
    .line 2121
    and-int/lit8 v1, p1, 0xf

    .line 2122
    .local v1, "mcc_digit_1":I
    shr-int/lit8 v8, p1, 0x4

    and-int/lit8 v2, v8, 0xf

    .line 2123
    .local v2, "mcc_digit_2":I
    and-int/lit8 v3, p2, 0xf

    .line 2125
    .local v3, "mcc_digit_3":I
    and-int/lit8 v5, p3, 0xf

    .line 2126
    .local v5, "mnc_digit_1":I
    shr-int/lit8 v8, p3, 0x4

    and-int/lit8 v6, v8, 0xf

    .line 2127
    .local v6, "mnc_digit_2":I
    shr-int/lit8 v8, p2, 0x4

    and-int/lit8 v7, v8, 0xf

    .line 2129
    .local v7, "mnc_digit_3":I
    mul-int/lit8 v8, v1, 0x64

    mul-int/lit8 v9, v2, 0xa

    add-int/2addr v8, v9

    add-int v0, v8, v3

    .line 2131
    .local v0, "mcc":I
    const/16 v8, 0xf

    if-ne v7, v8, :cond_0

    .line 2134
    mul-int/lit8 v8, v5, 0xa

    add-int v4, v8, v6

    .line 2135
    .local v4, "mnc":I
    mul-int/lit8 v8, v0, 0x64

    add-int/2addr v8, v4

    .line 2141
    :goto_0
    return v8

    .line 2140
    .end local v4    # "mnc":I
    :cond_0
    mul-int/lit8 v8, v5, 0x64

    mul-int/lit8 v9, v6, 0xa

    add-int/2addr v8, v9

    add-int v4, v8, v7

    .line 2141
    .restart local v4    # "mnc":I
    mul-int/lit16 v8, v0, 0x3e8

    add-int/2addr v8, v4

    goto :goto_0
.end method

.method protected handleFileUpdate(I)V
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/16 v3, 0x6f40

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMiuiAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->reset()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1457
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1461
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1462
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1466
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1467
    const-string v0, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 1472
    :sswitch_3
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1473
    const-string v0, "SIM Refresh called for EF_MSISDN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1474
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1478
    :sswitch_4
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1479
    const-string v0, "SIM Refresh called for EF_CFIS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1484
    :sswitch_5
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1485
    const-string v0, "SIM Refresh called for EF_CFF_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1454
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f13 -> :sswitch_5
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f40 -> :sswitch_3
        0x6fc7 -> :sswitch_0
        0x6fcb -> :sswitch_4
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for SIMInfo db, only from QCOM platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 733
    const/4 v15, 0x0

    .line 735
    .local v15, "isRecordLoadResponse":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " while being destroyed. Ignoring."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1439
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    :cond_2
    :goto_1
    if-eqz v15, :cond_0

    .line 1447
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 743
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1441
    :catch_0
    move-exception v13

    .line 1443
    .local v13, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "Exception parsing SIM record"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1446
    if-eqz v15, :cond_0

    goto :goto_2

    .line 748
    .end local v13    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    const/4 v15, 0x1

    .line 750
    :try_start_3
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 752
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception querying IMSI, Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1446
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_3

    .line 1447
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    .line 1446
    :cond_3
    throw v2

    .line 757
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    :cond_4
    :try_start_4
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_6

    .line 762
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid IMSI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 766
    :cond_6
    const-string v2, "IMSI: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 773
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const-string v4, "52018"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const-string v4, "52005"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 776
    :cond_7
    const-string v2, "DTAC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 777
    const-string v2, "gsm.sim.operator.alpha"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const-string v4, "00101"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 788
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsTestCard:Z

    .line 793
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_b

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 796
    .local v20, "mccmncCode":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_b

    aget-object v19, v10, v14

    .line 797
    .local v19, "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 798
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 804
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_c

    .line 808
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 809
    .local v18, "mcc":I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 816
    .end local v18    # "mcc":I
    :cond_c
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 821
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 796
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v14    # "i$":I
    .restart local v17    # "len$":I
    .restart local v19    # "mccmnc":Ljava/lang/String;
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 810
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 811
    .local v12, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 812
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 826
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :sswitch_2
    const/4 v15, 0x1

    .line 828
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 829
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 831
    .local v11, "data":[B
    const/16 v16, 0x0

    .line 832
    .local v16, "isValidMbdn":Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_MBI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 837
    const/4 v2, 0x0

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_f

    .line 841
    const-string v2, "Got valid mailbox number for MBDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 842
    const/16 v16, 0x1

    .line 847
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 849
    if-eqz v16, :cond_10

    .line 851
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 856
    :cond_10
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 869
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    .end local v16    # "isValidMbdn":Z
    :sswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 870
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 871
    const/4 v15, 0x1

    .line 873
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 875
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_12

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or missing EF"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_11

    const-string v2, "[MAILBOX]"

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 883
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 887
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 888
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 877
    :cond_11
    const-string v2, "[MBDN]"

    goto :goto_5

    .line 895
    :cond_12
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 897
    .local v3, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_13

    const-string v2, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_14

    .line 904
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 905
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 897
    :cond_13
    const-string v2, " EF[MBDN]"

    goto :goto_6

    .line 912
    :cond_14
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 913
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 917
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    const/4 v15, 0x1

    .line 919
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 921
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_15

    .line 922
    const-string v2, "Invalid or missing EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 926
    :cond_15
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 928
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 929
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 931
    const-string v2, "MSISDN: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 936
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsSingleCard:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setNumberForNewSIM(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 942
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    const/4 v15, 0x0

    .line 943
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 948
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    .line 949
    const-string v2, "SIMRecords"

    const-string v4, "[EVENT_SET_MSISDN_DONE] fail."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_7
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 958
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 960
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 951
    :cond_16
    const-string v2, "SIMRecords"

    const-string v4, "[EVENT_SET_MSISDN_DONE] success!"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    goto :goto_7

    .line 965
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const/4 v15, 0x1

    .line 967
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 968
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 970
    .restart local v11    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_MWIS : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 972
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_MWIS_DONE exception = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 978
    :cond_17
    const/4 v2, 0x0

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_18

    .line 979
    const-string v2, "SIMRecords: Uninitialized record MWIS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 983
    :cond_18
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    goto/16 :goto_1

    .line 987
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_7
    const/4 v15, 0x1

    .line 989
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 990
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 992
    .restart local v11    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CPHS_MWI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 994
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_19

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1000
    :cond_19
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    goto/16 :goto_1

    .line 1004
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_8
    const/4 v15, 0x1

    .line 1006
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1007
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1009
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1013
    const/4 v2, 0x0

    array-length v4, v11

    invoke-static {v11, v2, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1021
    :cond_1a
    const-string v2, "ffffffffffffffffffff"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 1028
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsSingleCard:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->clearSlotId(Landroid/content/Context;I)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->getIccIdsDone(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1038
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_9
    const/4 v15, 0x1

    .line 1040
    :try_start_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1041
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1043
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_20

    .line 1074
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_1d

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1077
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_8
    move/from16 v0, v17

    if-ge v14, v0, :cond_1d

    aget-object v19, v10, v14

    .line 1078
    .restart local v19    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1079
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1085
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1f

    .line 1086
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_4b

    .line 1088
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1090
    .restart local v18    # "mcc":I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1102
    .end local v18    # "mcc":I
    :cond_1f
    :goto_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_2

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1047
    :cond_20
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_AD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1049
    array-length v2, v11

    const/4 v4, 0x3

    if-ge v2, v4, :cond_25

    .line 1050
    const-string v2, "Corrupt AD data on SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1074
    :try_start_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_22

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1077
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_a
    move/from16 v0, v17

    if-ge v14, v0, :cond_22

    aget-object v19, v10, v14

    .line 1078
    .restart local v19    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1079
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1085
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_24

    .line 1086
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v2, :cond_4d

    .line 1088
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1090
    .restart local v18    # "mcc":I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1102
    .end local v18    # "mcc":I
    :cond_24
    :goto_b
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_2

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 1054
    :cond_25
    :try_start_f
    array-length v2, v11

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2a

    .line 1055
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1074
    :try_start_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_27

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1077
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_c
    move/from16 v0, v17

    if-ge v14, v0, :cond_27

    aget-object v19, v10, v14

    .line 1078
    .restart local v19    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1079
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1085
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_29

    .line 1086
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v2, :cond_4f

    .line 1088
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1090
    .restart local v18    # "mcc":I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1102
    .end local v18    # "mcc":I
    :cond_29
    :goto_d
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_2

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 1059
    :cond_2a
    const/4 v2, 0x3

    :try_start_13
    aget-byte v2, v11, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1061
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_2b

    .line 1062
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1068
    :cond_2b
    const/4 v2, 0x0

    aget-byte v2, v11, v2

    const/16 v4, 0x80

    if-eq v2, v4, :cond_2c

    const/4 v2, 0x0

    aget-byte v2, v11, v2

    const/16 v4, 0x81

    if-eq v2, v4, :cond_2c

    const/4 v2, 0x0

    aget-byte v2, v11, v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2c

    const/4 v2, 0x0

    aget-byte v2, v11, v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2d

    .line 1070
    :cond_2c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsTestCard:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1074
    :cond_2d
    :try_start_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2f

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1077
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_e
    move/from16 v0, v17

    if-ge v14, v0, :cond_2f

    aget-object v19, v10, v14

    .line 1078
    .restart local v19    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1079
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1085
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_31

    .line 1086
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v2, :cond_51

    .line 1088
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1090
    .restart local v18    # "mcc":I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1102
    .end local v18    # "mcc":I
    :cond_31
    :goto_f
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_2

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1074
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_33

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1077
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_10
    move/from16 v0, v17

    if-ge v14, v0, :cond_33

    aget-object v19, v10, v14

    .line 1078
    .restart local v19    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1079
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1085
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_35

    .line 1086
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v4, :cond_49

    .line 1088
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1090
    .restart local v18    # "mcc":I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1102
    .end local v18    # "mcc":I
    :cond_35
    :goto_11
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_36

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1074
    :cond_36
    throw v2

    .line 1112
    :sswitch_a
    const/4 v15, 0x1

    .line 1113
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1114
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1118
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    const/4 v15, 0x1

    .line 1120
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1121
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1123
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFF_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1128
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1132
    const/4 v2, 0x0

    aget-byte v2, v11, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_37

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1132
    :cond_37
    const/4 v2, 0x0

    goto :goto_12

    .line 1137
    :cond_38
    const-string v2, "EVENT_GET_CFF_DONE: EF_CFIS is valid, ignoring EF_CFF_CPHS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1142
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_c
    const/4 v15, 0x1

    .line 1144
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1145
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1147
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1151
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 1155
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1156
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 1157
    const-string v2, "update failed. "

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1162
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    const/4 v15, 0x1

    .line 1164
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1165
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1167
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1171
    new-instance v24, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v2, 0x0

    array-length v4, v11

    move-object/from16 v0, v24

    invoke-direct {v0, v11, v2, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1173
    .local v24, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_13
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1174
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_39

    .line 1175
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1173
    :cond_39
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_13

    .line 1184
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    .end local v24    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :sswitch_f
    const/4 v15, 0x1

    .line 1186
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1187
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1190
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1194
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1198
    :sswitch_11
    const/4 v15, 0x0

    .line 1199
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1200
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3a

    .line 1201
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    goto/16 :goto_1

    .line 1203
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on GET_SMS with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1207
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const/4 v15, 0x1

    .line 1209
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1210
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1212
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1216
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-direct {v2, v11}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1221
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_13
    const/4 v15, 0x1

    .line 1223
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1225
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1229
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1235
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_14
    const/4 v15, 0x0

    .line 1236
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1238
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3b

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1243
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1244
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 1254
    .local v22, "onCphsCompleted":Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3c

    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_3c

    .line 1255
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1257
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1259
    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1261
    const/16 v22, 0x0

    .line 1264
    :cond_3c
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1269
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v22    # "onCphsCompleted":Landroid/os/Message;
    :cond_3d
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1270
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1272
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1277
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    const/4 v15, 0x0

    .line 1278
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1279
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3e

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1286
    :goto_14
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1287
    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1288
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1290
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1283
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_14

    .line 1294
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    const/4 v15, 0x1

    .line 1296
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1297
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1299
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1305
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1306
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 1309
    const/4 v2, 0x1

    aget-byte v2, v11, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: callForwardingEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1309
    :cond_3f
    const/4 v2, 0x0

    goto :goto_15

    .line 1314
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: invalid data="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1319
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_17
    const/4 v15, 0x1

    .line 1321
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1323
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_41

    .line 1324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching EF_CSP data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1328
    :cond_41
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1330
    .restart local v11    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CSP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_1

    .line 1335
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_18
    const/4 v15, 0x1

    .line 1337
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1338
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1340
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_42

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in get GID1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    goto/16 :goto_1

    .line 1345
    :cond_42
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 1346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GID1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1352
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    :sswitch_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_POL_DONE fileid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1354
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1356
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_44

    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching EF POL data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1363
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v4, 0x6f30

    if-eq v2, v4, :cond_43

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f30

    const/16 v5, 0x63

    const/16 v6, 0x6f30

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->onCompleteMsg:Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1366
    :cond_43
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Message;

    .line 1367
    .local v23, "response":Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1368
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handlePlmnListData(Landroid/os/Message;[BLjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1374
    .end local v11    # "data":[B
    .end local v23    # "response":Landroid/os/Message;
    :cond_44
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1375
    .restart local v11    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_POL_DONE data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1377
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1378
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1380
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 1381
    .local v21, "msgtarget":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v11, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfPOLResponse(I[BLandroid/os/Message;)V

    goto/16 :goto_1

    .line 1387
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    .end local v21    # "msgtarget":Landroid/os/Message;
    :sswitch_1a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->eventGetPolError:Z

    goto/16 :goto_1

    .line 1390
    :sswitch_1b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->eventSetPolError:Z

    goto/16 :goto_1

    .line 1394
    :sswitch_1c
    const-string v2, "wjp_pol"

    const-string v4, "EVENT_SET_POL_DONE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1398
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_45

    .line 1399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in EVENT_SET_POL_DONE EF POL data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1407
    :cond_45
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1408
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1410
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 1411
    .restart local v21    # "msgtarget":Landroid/os/Message;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1418
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "msgtarget":Landroid/os/Message;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1420
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_46

    .line 1421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception get PLMN data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1424
    :cond_46
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Message;

    .line 1425
    .restart local v23    # "response":Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v11, v0

    .line 1426
    .restart local v11    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handlePlmnListData(Landroid/os/Message;[BLjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1429
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "data":[B
    .end local v23    # "response":Landroid/os/Message;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1431
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_47

    .line 1432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception update PLMN data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1435
    :cond_47
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    const/4 v4, 0x0

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->handlePlmnListData(Landroid/os/Message;[BLjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1077
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v14    # "i$":I
    .restart local v17    # "len$":I
    .restart local v19    # "mccmnc":Ljava/lang/String;
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    :cond_48
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_10

    .line 1097
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_49
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1099
    const-string v4, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1091
    :catch_2
    move-exception v12

    .line 1092
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1093
    const-string v4, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1077
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v11    # "data":[B
    .restart local v14    # "i$":I
    .restart local v17    # "len$":I
    .restart local v19    # "mccmnc":Ljava/lang/String;
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    :cond_4a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 1097
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_4b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1099
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1091
    :catch_3
    move-exception v12

    .line 1092
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1093
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1077
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v14    # "i$":I
    .restart local v17    # "len$":I
    .restart local v19    # "mccmnc":Ljava/lang/String;
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    :cond_4c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 1097
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_4d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1099
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1091
    :catch_4
    move-exception v12

    .line 1092
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1093
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1077
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v14    # "i$":I
    .restart local v17    # "len$":I
    .restart local v19    # "mccmnc":Ljava/lang/String;
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    :cond_4e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c

    .line 1097
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_4f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1099
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1091
    :catch_5
    move-exception v12

    .line 1092
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1093
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1077
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v14    # "i$":I
    .restart local v17    # "len$":I
    .restart local v19    # "mccmnc":Ljava/lang/String;
    .restart local v20    # "mccmncCode":Ljava/lang/String;
    :cond_50
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_e

    .line 1097
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "mccmncCode":Ljava/lang/String;
    :cond_51
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1099
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1091
    :catch_6
    move-exception v12

    .line 1092
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1093
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_f

    .line 741
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_8
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_a
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x11 -> :sswitch_12
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x14 -> :sswitch_14
        0x16 -> :sswitch_11
        0x18 -> :sswitch_b
        0x19 -> :sswitch_15
        0x1a -> :sswitch_13
        0x1e -> :sswitch_5
        0x20 -> :sswitch_16
        0x21 -> :sswitch_17
        0x22 -> :sswitch_18
        0x42 -> :sswitch_1b
        0x4d -> :sswitch_1a
        0x58 -> :sswitch_1c
        0x63 -> :sswitch_19
        0x64 -> :sswitch_1d
        0x65 -> :sswitch_1e
    .end sparse-switch
.end method

.method public handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 1557
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1559
    .local v0, "index":[I
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1560
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error on SMS_ON_SIM with exp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1567
    :goto_0
    return-void

    .line 1563
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ EF_SMS RECORD index= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1564
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f3c

    aget v3, v0, v3

    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public isCallForwardStatusStored()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 2020
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method public is_test_card()Z
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "white card mode"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 2102
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsTestCard:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1998
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2003
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2011
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 2007
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2008
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1642
    const-string v1, "record load complete"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1647
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1650
    const-string v1, "gsm.sim.operator.numeric"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v1, "gsm.apn.sim.operator.numeric"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAllRecordsLoaded set mcc imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1658
    const-string v1, "gsm.sim.operator.iso-country"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 1665
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 1667
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1669
    return-void

    .line 1653
    :cond_0
    const-string v1, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1661
    :cond_1
    const-string v1, "onAllRecordsLoaded empty imsi skipping setting mcc"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 1691
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 1629
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1632
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1633
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-gez v0, :cond_0

    .line 1635
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1636
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 695
    if-eqz p1, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 701
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMiuiAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->reset()V

    const-string v0, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    const-string v0, "gsm.sim.operator.numeric"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gsm.sim.operator.numeric"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gsm.apn.sim.operator.numeric"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gsm.sim.operator.alpha"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gsm.sim.operator.iso-country"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "set phone owner number"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/16 v2, 0x6f40

    .line 436
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnNumber:Ljava/lang/String;

    .line 437
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnTag:Ljava/lang/String;

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 441
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->oppoMsisdnNumber:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 446
    return-void
.end method

.method public setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 13
    .param p1, "networkWithAct"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2403
    const-string v9, "wjp_pol"

    const-string v10, "simrecord setPOLEntry ============"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2406
    .local v6, "plmn":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v0

    .line 2407
    .local v0, "act":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v7

    .line 2409
    .local v7, "priority":I
    iget v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    mul-int/lit8 v9, v9, 0x5

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    .line 2410
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReadBuffer:[B

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    .line 2440
    iget v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPlmnNumber:I

    if-lt v7, v9, :cond_0

    .line 2441
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2518
    :goto_0
    return-void

    .line 2448
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mApptype:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v10, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v9, v10, :cond_3

    const/4 v1, 0x1

    .line 2451
    .local v1, "bUsim":Z
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPOLEntry bUsim: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2452
    const/4 v5, 0x5

    .line 2453
    .local v5, "offset":I
    if-nez v1, :cond_1

    .line 2454
    const/4 v5, 0x3

    .line 2457
    :cond_1
    if-nez v6, :cond_4

    .line 2459
    const-string v9, "wjp_pol"

    const-string v10, " setPOLEntry plmn is null , delete============"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    iget v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, v5

    const/4 v11, -0x1

    aput-byte v11, v9, v10

    .line 2461
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    iget v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x1

    const/4 v11, -0x1

    aput-byte v11, v9, v10

    .line 2462
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    iget v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x2

    const/4 v11, -0x1

    aput-byte v11, v9, v10

    .line 2463
    if-eqz v1, :cond_2

    .line 2464
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    iget v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x3

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    .line 2465
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    iget v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsedPlmnNumber:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x4

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    .line 2500
    :cond_2
    :goto_2
    const-string v9, "ro.oppo.version"

    const-string v10, "CN"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2501
    .local v8, "version":Ljava/lang/String;
    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2502
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPOLEntry isLastItem: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->isLastItem()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2503
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->isLastItem()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2504
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2448
    .end local v1    # "bUsim":Z
    .end local v5    # "offset":I
    .end local v8    # "version":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2468
    .restart local v1    # "bUsim":Z
    .restart local v5    # "offset":I
    :cond_4
    const/4 v9, 0x5

    new-array v4, v9, [B

    .line 2469
    .local v4, "change":[B
    const/4 v9, 0x3

    new-array v2, v9, [B

    .line 2470
    .local v2, "bplmn":[B
    const/4 v9, 0x2

    new-array v3, v9, [B

    .line 2472
    .local v3, "brat":[B
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->formPlmnToByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 2473
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->formRatToByte(I)[B

    move-result-object v3

    .line 2475
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    mul-int v10, v7, v5

    const/4 v11, 0x0

    aget-byte v11, v2, v11

    aput-byte v11, v9, v10

    .line 2476
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    mul-int v10, v7, v5

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    aput-byte v11, v9, v10

    .line 2477
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    mul-int v10, v7, v5

    add-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    aput-byte v11, v9, v10

    .line 2478
    if-eqz v1, :cond_2

    .line 2479
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    mul-int v10, v7, v5

    add-int/lit8 v10, v10, 0x3

    const/4 v11, 0x0

    aget-byte v11, v3, v11

    aput-byte v11, v9, v10

    .line 2480
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    mul-int v10, v7, v5

    add-int/lit8 v10, v10, 0x4

    const/4 v11, 0x1

    aget-byte v11, v3, v11

    aput-byte v11, v9, v10

    goto :goto_2

    .line 2510
    .end local v2    # "bplmn":[B
    .end local v3    # "brat":[B
    .end local v4    # "change":[B
    .restart local v8    # "version":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 2511
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v10, 0x6f60

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    const/16 v12, 0x58

    invoke-virtual {p0, v12, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2513
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v10, 0x6f30

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mWriteBuffer:[B

    const/16 v12, 0x58

    invoke-virtual {p0, v12, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 9
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 629
    if-eq p1, v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 638
    if-eqz p2, :cond_3

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 644
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 649
    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS: updating cf number, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 651
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v6

    .line 653
    .local v6, "bcdNumber":[B
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v6

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v1, 0xe

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v1, 0xf

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 660
    .end local v6    # "bcdNumber":[B
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v8, 0x6fcb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 668
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 669
    if-eqz p2, :cond_5

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 677
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 681
    :catch_0
    move-exception v7

    .line 682
    .local v7, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 641
    .end local v7    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    .line 664
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: ignoring enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " invalid mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 485
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 488
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 514
    :goto_0
    return-void

    .line 492
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 493
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 495
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 499
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 503
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 510
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 512
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 9
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 532
    if-eq p1, v1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v2, :cond_2

    .line 542
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    if-nez p2, :cond_3

    :goto_1
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 546
    if-gez p2, :cond_4

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 553
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    if-nez p2, :cond_5

    const/4 v0, 0x5

    :goto_3
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v6

    .line 566
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v6    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    move v0, v1

    .line 542
    goto :goto_1

    .line 551
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 559
    :cond_5
    const/16 v0, 0xa

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSpnOverride"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " efMWIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " efCPHS_MWI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getOperatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePlmnList([BZLandroid/os/Message;)Z
    .locals 5
    .param p1, "date"    # [B
    .param p2, "bwAct"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x65

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2550
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-nez v2, :cond_0

    .line 2564
    :goto_0
    return v0

    .line 2556
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mApptype:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 2558
    .local v0, "bUsim":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlmnList bUsim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bwAct:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2559
    if-eqz p2, :cond_2

    .line 2560
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f60

    invoke-virtual {p0, v4, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    :goto_1
    move v0, v1

    .line 2564
    goto :goto_0

    .line 2562
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f30

    invoke-virtual {p0, v4, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_1
.end method
