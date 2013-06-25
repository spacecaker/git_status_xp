.class public Lcom/sec/android/app/twlauncher/ShortcutsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/twlauncher/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

.field private final mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    .line 40
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 46
    .local v1, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    if-nez p2, :cond_0

    .line 47
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v2, v0

    .line 51
    .local v2, itemview:Lcom/sec/android/app/twlauncher/MenuItemView;
    new-instance v3, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v3

    iput v3, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 58
    return-object p2
.end method
