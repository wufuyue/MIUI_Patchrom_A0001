.class Lcom/oppo/widget/OppoTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "OppoTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/widget/OppoTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/oppo/widget/OppoTimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimePicker$SavedState;->mHour:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimePicker$SavedState;->mMinute:I

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppo/widget/OppoTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oppo/widget/OppoTimePicker$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 355
    iput p2, p0, Lcom/oppo/widget/OppoTimePicker$SavedState;->mHour:I

    .line 356
    iput p3, p0, Lcom/oppo/widget/OppoTimePicker$SavedState;->mMinute:I

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/oppo/widget/OppoTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/oppo/widget/OppoTimePicker$1;

    .prologue
    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 375
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 376
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    return-void
.end method
