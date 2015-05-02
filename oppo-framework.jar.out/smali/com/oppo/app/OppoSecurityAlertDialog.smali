.class public Lcom/oppo/app/OppoSecurityAlertDialog;
.super Ljava/lang/Object;
.source "OppoSecurityAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mIsCheck:Z

.field private mMessage:Landroid/widget/TextView;

.field private mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

.field private mRemember:Landroid/widget/CheckBox;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleId"    # I
    .param p3, "contentId"    # I
    .param p4, "always"    # Z
    .param p5, "isCheck"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    .line 41
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 42
    iput-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    .line 43
    iput-boolean v4, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    .line 51
    iput-object p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    .line 52
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0xc09044a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    .line 56
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    const v2, 0xc02049d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    const v2, 0xc02049e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    .line 61
    if-eqz p4, :cond_0

    .line 62
    iput-boolean p5, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    .line 63
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    new-instance v2, Lcom/oppo/app/OppoSecurityAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$1;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0xc040488

    new-instance v3, Lcom/oppo/app/OppoSecurityAlertDialog$3;

    invoke-direct {v3, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$3;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0xc040487

    new-instance v3, Lcom/oppo/app/OppoSecurityAlertDialog$2;

    invoke-direct {v3, p0}, Lcom/oppo/app/OppoSecurityAlertDialog$2;-><init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    .line 101
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 102
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mRemember:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/app/OppoSecurityAlertDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSecurityAlertDialog;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/app/OppoSecurityAlertDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/app/OppoSecurityAlertDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSecurityAlertDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/app/OppoSecurityAlertDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSecurityAlertDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 139
    return-void
.end method

.method public setOnSelectedListener(Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    .line 106
    return-void
.end method

.method public setWindowType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 132
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 119
    const-string v0, "zouhr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "personnal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persist.sys.personnal.security"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v0, "persist.sys.personnal.security"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 123
    :cond_0
    return-void
.end method
