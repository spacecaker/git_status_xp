.class public Lcom/lidroid/parts/GestureListActivity;
.super Landroid/app/ListActivity;
.source "GestureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;,
        Lcom/lidroid/parts/GestureListActivity$NamedGesture;,
        Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;
    }
.end annotation


# static fields
.field private static final MENU_ID_REMOVE:I = 0x2

.field private static final REQUEST_NEW_GESTURE:I = 0x1

.field private static final STATUS_CANCELLED:I = 0x1

.field private static final STATUS_NOT_LOADED:I = 0x3

.field private static final STATUS_NO_STORAGE:I = 0x2

.field private static final STATUS_SUCCESS:I

.field private static sStore:Landroid/gesture/GestureLibrary;


# instance fields
.field public addGesture:Landroid/view/View$OnClickListener;

.field private mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

.field private mEmpty:Landroid/widget/TextView;

.field private final mSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lidroid/parts/GestureListActivity$NamedGesture;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreFile:Ljava/io/File;

.field private mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/misc/lockscreen_gestures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mStoreFile:Ljava/io/File;

    .line 60
    new-instance v0, Lcom/lidroid/parts/GestureListActivity$1;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/GestureListActivity$1;-><init>(Lcom/lidroid/parts/GestureListActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mSorter:Ljava/util/Comparator;

    .line 100
    new-instance v0, Lcom/lidroid/parts/GestureListActivity$2;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/GestureListActivity$2;-><init>(Lcom/lidroid/parts/GestureListActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->addGesture:Landroid/view/View$OnClickListener;

    .line 269
    return-void
.end method

.method static synthetic access$100(Lcom/lidroid/parts/GestureListActivity;)Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    return-object v0
.end method

.method static synthetic access$200()Landroid/gesture/GestureLibrary;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/lidroid/parts/GestureListActivity;->sStore:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lidroid/parts/GestureListActivity;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lidroid/parts/GestureListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lidroid/parts/GestureListActivity;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mStoreFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lidroid/parts/GestureListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lidroid/parts/GestureListActivity;->checkForEmpty()V

    return-void
.end method

.method private checkForEmpty()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    invoke-virtual {v0}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mEmpty:Landroid/widget/TextView;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :cond_0
    return-void
.end method

.method private deleteGesture(Lcom/lidroid/parts/GestureListActivity$NamedGesture;)V
    .locals 5
    .parameter "gesture"

    .prologue
    const/4 v4, 0x0

    .line 170
    sget-object v1, Lcom/lidroid/parts/GestureListActivity;->sStore:Landroid/gesture/GestureLibrary;

    iget-object v2, p1, Lcom/lidroid/parts/GestureListActivity$NamedGesture;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/lidroid/parts/GestureListActivity$NamedGesture;->gesture:Landroid/gesture/Gesture;

    invoke-virtual {v1, v2, v3}, Landroid/gesture/GestureLibrary;->removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 171
    sget-object v1, Lcom/lidroid/parts/GestureListActivity;->sStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->save()Z

    .line 173
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    .line 174
    .local v0, adapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;
    invoke-virtual {v0, v4}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->setNotifyOnChange(Z)V

    .line 175
    invoke-virtual {v0, p1}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->remove(Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity;->mSorter:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->sort(Ljava/util/Comparator;)V

    .line 177
    invoke-direct {p0}, Lcom/lidroid/parts/GestureListActivity;->checkForEmpty()V

    .line 178
    invoke-virtual {v0}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->notifyDataSetChanged()V

    .line 180
    const v1, 0x7f08003a

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 181
    return-void
.end method

.method static getStore()Landroid/gesture/GestureLibrary;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/lidroid/parts/GestureListActivity;->sStore:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method private loadGestures()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    invoke-virtual {v0}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->cancel(Z)Z

    .line 123
    :cond_0
    new-instance v0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;-><init>(Lcom/lidroid/parts/GestureListActivity;Lcom/lidroid/parts/GestureListActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    iput-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    .line 124
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :pswitch_0
    invoke-direct {p0}, Lcom/lidroid/parts/GestureListActivity;->loadGestures()V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 158
    .local v1, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/parts/GestureListActivity$NamedGesture;

    .line 160
    .local v0, gesture:Lcom/lidroid/parts/GestureListActivity$NamedGesture;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 166
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 162
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/lidroid/parts/GestureListActivity;->deleteGesture(Lcom/lidroid/parts/GestureListActivity$NamedGesture;)V

    .line 163
    const/4 v2, 0x1

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/GestureListActivity;->setContentView(I)V

    .line 78
    new-instance v1, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    invoke-direct {v1, p0, p0}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;-><init>(Lcom/lidroid/parts/GestureListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    .line 79
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/GestureListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    sget-object v1, Lcom/lidroid/parts/GestureListActivity;->sStore:Landroid/gesture/GestureLibrary;

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity;->mStoreFile:Ljava/io/File;

    invoke-static {v1}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v1

    sput-object v1, Lcom/lidroid/parts/GestureListActivity;->sStore:Landroid/gesture/GestureLibrary;

    .line 84
    :cond_0
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/GestureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lidroid/parts/GestureListActivity;->mEmpty:Landroid/widget/TextView;

    .line 85
    invoke-direct {p0}, Lcom/lidroid/parts/GestureListActivity;->loadGestures()V

    .line 87
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/GestureListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 88
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/GestureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    .local v0, btn:Landroid/widget/Button;
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity;->addGesture:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 148
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 149
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 151
    const/4 v1, 0x2

    const v2, 0x7f080039

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 152
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    invoke-virtual {v0}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->cancel(Z)Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/parts/GestureListActivity;->mTask:Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;

    .line 134
    :cond_0
    return-void
.end method

.method public reloadGestures(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/lidroid/parts/GestureListActivity;->loadGestures()V

    .line 98
    return-void
.end method
