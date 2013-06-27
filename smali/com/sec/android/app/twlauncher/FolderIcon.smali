.class public Lcom/sec/android/app/twlauncher/FolderIcon;
.super Lcom/sec/android/app/twlauncher/BubbleTextView;
.source "FolderIcon.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOpenIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;
    .locals 6
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/FolderIcon;

    .line 49
    .local v1, icon:Lcom/sec/android/app/twlauncher/FolderIcon;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 50
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f02006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iput-object v0, v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 52
    const v3, 0x7f020070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {v1, v5, v0, v5, v5}, Lcom/sec/android/app/twlauncher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v3, p3, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1, p3}, Lcom/sec/android/app/twlauncher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object p3, v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 58
    iput-object p1, v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 60
    return-object v1
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    .line 65
    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v1, v0

    .line 66
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 67
    .local v2, itemType:I
    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_1

    :cond_0
    iget-wide v3, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v3, v7

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 98
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 77
    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v8, v0

    .line 79
    .local v8, dragItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v1, v8, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 81
    check-cast v8, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v8           #dragItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->makeShortcut()Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v2

    .line 87
    .local v2, item:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 89
    return-void

    .line 83
    .end local v2           #item:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .restart local v8       #dragItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v2, v0

    .line 84
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_0
.end method
