.class public Lcom/sec/android/app/twlauncher/UserFolder;
.super Lcom/sec/android/app/twlauncher/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/UserFolder;

    return-object p0
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

    .line 48
    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v1, v0

    .line 49
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 50
    .local v2, itemType:I
    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_1

    :cond_0
    iget-wide v3, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

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

.method bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 105
    new-instance v0, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local p1
    iget-object v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 106
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 86
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 92
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
    .line 89
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 60
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v9, v0

    .line 62
    .local v9, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v1, v9, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_2

    .line 64
    check-cast v9, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v9           #ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->makeShortcut()Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v2

    .line 66
    .local v2, item:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    const-string v1, "WIN"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v8, "com.android.stk"

    .line 69
    .local v8, STKPackageName:Ljava/lang/String;
    iget-object v1, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    const-string v1, "Toolkit SIM"

    iput-object v1, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 81
    .end local v8           #STKPackageName:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->add(Ljava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 83
    return-void

    .line 79
    .end local v2           #item:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .restart local v9       #ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_2
    move-object v0, v9

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v2, v0

    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 3
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 96
    if-eqz p2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;

    .line 98
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ShortcutsAdapter;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 99
    .local v1, si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutsAdapter;->remove(Ljava/lang/Object;)V

    .line 101
    .end local v0           #adapter:Lcom/sec/android/app/twlauncher/ShortcutsAdapter;
    .end local v1           #si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :cond_0
    return-void
.end method

.method onOpen()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->requestFocus()Z

    .line 114
    return-void
.end method
