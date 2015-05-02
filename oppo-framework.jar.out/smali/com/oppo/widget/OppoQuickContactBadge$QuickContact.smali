.class public Lcom/oppo/widget/OppoQuickContactBadge$QuickContact;
.super Ljava/lang/Object;
.source "OppoQuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoQuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickContact"
.end annotation


# static fields
.field public static final ACTION_QUICK_CONTACT:Ljava/lang/String; = "com.oppo.callsLog.quick.quickcontact"

.field public static final EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "exclude_mimes"

.field public static final EXTRA_INCONTACTS:Ljava/lang/String; = "inContacts"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field public static final EXTRA_TARGET_RECT:Ljava/lang/String; = "target_rect"

.field public static final MODE_LARGE:I = 0x3

.field public static final MODE_MEDIUM:I = 0x2

.field public static final MODE_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;
    .param p5, "personId"    # J

    .prologue
    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.android.QuickContactActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v1, "target_rect"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 353
    const-string v1, "mode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v1, "exclude_mimes"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v1, "inContacts"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 357
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;
    .param p5, "personId"    # J

    .prologue
    .line 318
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 319
    .local v7, "location":[I
    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 321
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 322
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    aget v0, v7, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 323
    const/4 v0, 0x1

    aget v0, v7, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 324
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 325
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 327
    invoke-static/range {v0 .. v6}, Lcom/oppo/widget/OppoQuickContactBadge$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 328
    return-void
.end method
