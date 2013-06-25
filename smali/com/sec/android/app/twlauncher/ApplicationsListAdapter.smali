.class public Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ApplicationsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 42
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    .line 43
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 49
    .local v4, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez p2, :cond_0

    .line 50
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030007

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v5, v0

    .line 55
    .local v5, item:Landroid/widget/LinearLayout;
    const v8, 0x7f06000b

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 56
    .local v7, textView:Landroid/widget/TextView;
    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.stk.StkLauncherActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v8, :cond_1

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 58
    :cond_1
    const-string v8, "Toolkit SIM"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    const v8, 0x7f06000a

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 64
    .local v3, imageView:Landroid/widget/ImageView;
    new-instance v8, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v9, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const/4 v6, 0x0

    .line 67
    .local v6, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 68
    .local v1, className:Ljava/lang/String;
    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_2

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 69
    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 70
    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v9, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    invoke-static {v6, v1, v8, v9}, Lcom/sec/android/app/twlauncher/Utilities;->getDrawableIconBg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 73
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_3

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 76
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    iget-object v9, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v8

    iput v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 79
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    return-object p2

    .line 60
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_4
    iget-object v8, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
