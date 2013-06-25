.class public Lcom/sec/android/app/twlauncher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/android/app/twlauncher/DragSource;


# instance fields
.field protected mCloseButton:Landroid/widget/Button;

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragItem:Lcom/sec/android/app/twlauncher/ShortcutInfo;

.field protected mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field protected mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 87
    return-void
.end method

.method onClose()V
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 149
    .local v0, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 150
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 0
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 114
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 71
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 78
    .local v0, app:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 79
    .local v1, pos:[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 80
    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    aget v4, v1, v6

    aget v5, v1, v8

    aget v6, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v1, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    .line 100
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 102
    .local v0, app:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    invoke-interface {v1, p2, p0, v0, v2}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 104
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showRenameDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method onOpen()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 145
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 124
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 111
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 132
    return-void
.end method
