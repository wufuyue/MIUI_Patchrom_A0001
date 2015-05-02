.class public Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;
.super Lcom/android/internal/policy/impl/PhoneLayoutInflater;
.source "ColorPhoneLayoutInflater.java"


# instance fields
.field private LAYOUT_IDS:[I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;->LAYOUT_IDS:[I

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;->mContext:Landroid/content/Context;

    .line 35
    return-void

    .line 30
    :array_0
    .array-data 4
        0xc090457
        0x1090058
    .end array-data
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;->LAYOUT_IDS:[I

    .line 39
    return-void

    .line 30
    :array_0
    .array-data 4
        0xc090457
        0x1090058
    .end array-data
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/PhoneLayoutInflater;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/PhoneLayoutInflater;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 57
    iget-object v2, p0, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;->LAYOUT_IDS:[I

    array-length v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 58
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;->LAYOUT_IDS:[I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    if-ne p1, v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/internal/policy/impl/ColorPhoneLayoutInflater;->LAYOUT_IDS:[I

    mul-int/lit8 v3, v0, 0x2

    aget p1, v2, v3

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
