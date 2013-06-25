.class Lcom/sec/android/app/twlauncher/ShortcutInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field badgeCount:I

.field customIcon:Z

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/Bitmap;

.field onExternalStorage:Z

.field title:Ljava/lang/CharSequence;

.field usingFallbackIcon:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 93
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 96
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 97
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "iconCache"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "iconType"

    .line 127
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 130
    .local v0, titleStr:Ljava/lang/String;
    :goto_0
    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 133
    .local v1, uri:Ljava/lang/String;
    :goto_1
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    if-eqz v2, :cond_3

    .line 136
    const-string v2, "iconType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 152
    :cond_0
    :goto_2
    return-void

    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_1
    move-object v0, v4

    .line 129
    goto :goto_0

    .restart local v0       #titleStr:Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .line 132
    goto :goto_1

    .line 140
    .restart local v1       #uri:Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->onExternalStorage:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_4

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 143
    :cond_4
    const-string v2, "iconType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "iconPackage"

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "iconResource"

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 123
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;->unbind()V

    .line 162
    return-void
.end method
