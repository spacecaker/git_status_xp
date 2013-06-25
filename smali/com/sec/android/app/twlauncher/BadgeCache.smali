.class public Lcom/sec/android/app/twlauncher/BadgeCache;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/BadgeCache$1;,
        Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    }
.end annotation


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherApplication;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    .line 56
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 57
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    .locals 2
    .parameter "componentName"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    .line 116
    .local v0, entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    return-object v0
.end method


# virtual methods
.method public getBadgeCount(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "component"

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 94
    if-nez p1, :cond_0

    .line 95
    :try_start_0
    monitor-exit v1

    move v1, v2

    .line 99
    :goto_0
    return v1

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BadgeCache;->cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    move-result-object v0

    .line 99
    .local v0, entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    :cond_1
    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 100
    .end local v0           #entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBadgeCount(Landroid/content/Intent;)I
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 79
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 81
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 83
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    monitor-exit v3

    move v3, v6

    .line 88
    :goto_0
    return v3

    .line 87
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/BadgeCache;->cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    move-result-object v1

    .line 88
    .local v1, entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    if-eqz v1, :cond_2

    iget v4, v1, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    :goto_1
    monitor-exit v3

    move v3, v4

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    .line 89
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getBadgeIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 105
    if-nez p1, :cond_0

    .line 106
    :try_start_0
    monitor-exit v1

    move-object v1, v2

    .line 110
    :goto_0
    return-object v1

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BadgeCache;->cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    move-result-object v0

    .line 110
    .local v0, entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    :cond_1
    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 111
    .end local v0           #entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setBadgeCount(Landroid/content/ComponentName;ILandroid/graphics/Bitmap;)V
    .locals 11
    .parameter "componentName"
    .parameter "badgeCount"
    .parameter "icon"

    .prologue
    .line 206
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v7

    .line 207
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BadgeCache;->cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    move-result-object v2

    .line 208
    .local v2, cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    if-lez p2, :cond_5

    .line 209
    const/4 v4, 0x0

    .line 211
    .local v4, newIcon:Landroid/graphics/Bitmap;
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v8, :cond_0

    if-eqz p3, :cond_0

    .line 213
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020087

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 214
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 215
    .local v6, width:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 217
    .local v3, height:I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 220
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .local v1, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 222
    .local v5, p:Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 224
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    const/4 v8, 0x0

    invoke-static {p3, v6, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v3           #height:I
    .end local v5           #p:Landroid/graphics/Paint;
    .end local v6           #width:I
    :cond_0
    if-nez v2, :cond_3

    .line 229
    new-instance v2, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    .end local v2           #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;-><init>(Lcom/sec/android/app/twlauncher/BadgeCache$1;)V

    .line 230
    .restart local v2       #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    iput p2, v2, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    .line 231
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v8, :cond_2

    if-eqz v4, :cond_2

    .line 232
    iput-object v4, v2, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 235
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v4           #newIcon:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    monitor-exit v7

    .line 250
    return-void

    .line 234
    .restart local v4       #newIcon:Landroid/graphics/Bitmap;
    :cond_2
    iput-object p3, v2, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 249
    .end local v2           #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    .end local v4           #newIcon:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 237
    .restart local v2       #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    .restart local v4       #newIcon:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    iput p2, v2, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    .line 238
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    .line 239
    iput-object v4, v2, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 241
    :cond_4
    iput-object p3, v2, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 245
    .end local v4           #newIcon:Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v2, :cond_1

    .line 246
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
