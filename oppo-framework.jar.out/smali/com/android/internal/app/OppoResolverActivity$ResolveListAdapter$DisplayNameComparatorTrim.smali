.class Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;
.super Ljava/lang/Object;
.source "OppoResolverActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayNameComparatorTrim"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$1:Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;->this$1:Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;->sCollator:Ljava/text/Collator;

    .line 539
    iput-object p2, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;->mPM:Landroid/content/pm/PackageManager;

    .line 540
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 543
    iget-object v2, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 544
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 546
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;->sCollator:Ljava/text/Collator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 536
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/OppoResolverActivity$ResolveListAdapter$DisplayNameComparatorTrim;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
