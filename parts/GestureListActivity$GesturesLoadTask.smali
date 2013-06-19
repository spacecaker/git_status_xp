.class Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;
.super Landroid/os/AsyncTask;
.source "GestureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/GestureListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/lidroid/parts/GestureListActivity$NamedGesture;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mPathColor:I

.field private mThumbnailInset:I

.field private mThumbnailSize:I

.field final synthetic this$0:Lcom/lidroid/parts/GestureListActivity;


# direct methods
.method private constructor <init>(Lcom/lidroid/parts/GestureListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/parts/GestureListActivity;Lcom/lidroid/parts/GestureListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;-><init>(Lcom/lidroid/parts/GestureListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 230
    :goto_0
    return-object v7

    .line 209
    :cond_0
    invoke-static {}, Lcom/lidroid/parts/GestureListActivity;->access$200()Landroid/gesture/GestureLibrary;

    move-result-object v6

    .line 211
    .local v6, store:Landroid/gesture/GestureLibrary;
    invoke-virtual {v6}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 212
    invoke-virtual {v6}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 227
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    .line 215
    .restart local v4       #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v4}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gesture/Gesture;

    .line 216
    .local v1, gesture:Landroid/gesture/Gesture;
    iget v7, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->mThumbnailSize:I

    iget v8, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->mThumbnailSize:I

    iget v9, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->mThumbnailInset:I

    iget v10, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->mPathColor:I

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/gesture/Gesture;->toBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Lcom/lidroid/parts/GestureListActivity$NamedGesture;

    invoke-direct {v5}, Lcom/lidroid/parts/GestureListActivity$NamedGesture;-><init>()V

    .line 219
    .local v5, namedGesture:Lcom/lidroid/parts/GestureListActivity$NamedGesture;
    iput-object v1, v5, Lcom/lidroid/parts/GestureListActivity$NamedGesture;->gesture:Landroid/gesture/Gesture;

    .line 220
    iput-object v4, v5, Lcom/lidroid/parts/GestureListActivity$NamedGesture;->name:Ljava/lang/String;

    .line 222
    iget-object v7, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #getter for: Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;
    invoke-static {v7}, Lcom/lidroid/parts/GestureListActivity;->access$100(Lcom/lidroid/parts/GestureListActivity;)Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    move-result-object v7

    iget-object v8, v5, Lcom/lidroid/parts/GestureListActivity$NamedGesture;->gesture:Landroid/gesture/Gesture;

    invoke-virtual {v8}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->addBitmap(Ljava/lang/Long;Landroid/graphics/Bitmap;)V

    .line 223
    new-array v7, v12, [Lcom/lidroid/parts/GestureListActivity$NamedGesture;

    aput-object v5, v7, v11

    invoke-virtual {p0, v7}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 230
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #gesture:Landroid/gesture/Gesture;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #namedGesture:Lcom/lidroid/parts/GestureListActivity$NamedGesture;
    :cond_4
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 250
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    invoke-virtual {v0}, Lcom/lidroid/parts/GestureListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #getter for: Lcom/lidroid/parts/GestureListActivity;->mEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lidroid/parts/GestureListActivity;->access$400(Lcom/lidroid/parts/GestureListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #getter for: Lcom/lidroid/parts/GestureListActivity;->mEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lidroid/parts/GestureListActivity;->access$400(Lcom/lidroid/parts/GestureListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    const v2, 0x7f08003b

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #getter for: Lcom/lidroid/parts/GestureListActivity;->mStoreFile:Ljava/io/File;
    invoke-static {v4}, Lcom/lidroid/parts/GestureListActivity;->access$500(Lcom/lidroid/parts/GestureListActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/lidroid/parts/GestureListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Lcom/lidroid/parts/GestureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #calls: Lcom/lidroid/parts/GestureListActivity;->checkForEmpty()V
    invoke-static {v0}, Lcom/lidroid/parts/GestureListActivity;->access$600(Lcom/lidroid/parts/GestureListActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 190
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 192
    const/16 v1, -0x100

    iput v1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->mPathColor:I

    .line 194
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    invoke-virtual {v1}, Lcom/lidroid/parts/GestureListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 195
    .local v0, scale:F
    const/high16 v1, 0x4100

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->mThumbnailInset:I

    .line 196
    const/high16 v1, 0x4280

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->mThumbnailSize:I

    .line 198
    const-string v1, "##############"

    const-string v2, "#########################"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Lcom/lidroid/parts/GestureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    const-string v1, "$$$$$$$$$$$$$$"

    const-string v2, "$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #getter for: Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;
    invoke-static {v1}, Lcom/lidroid/parts/GestureListActivity;->access$100(Lcom/lidroid/parts/GestureListActivity;)Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->setNotifyOnChange(Z)V

    .line 202
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #getter for: Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;
    invoke-static {v1}, Lcom/lidroid/parts/GestureListActivity;->access$100(Lcom/lidroid/parts/GestureListActivity;)Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->clear()V

    .line 203
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/lidroid/parts/GestureListActivity$NamedGesture;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 237
    iget-object v5, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #getter for: Lcom/lidroid/parts/GestureListActivity;->mAdapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;
    invoke-static {v5}, Lcom/lidroid/parts/GestureListActivity;->access$100(Lcom/lidroid/parts/GestureListActivity;)Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;

    move-result-object v0

    .line 238
    .local v0, adapter:Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->setNotifyOnChange(Z)V

    .line 240
    move-object v1, p1

    .local v1, arr$:[Lcom/lidroid/parts/GestureListActivity$NamedGesture;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 241
    .local v2, gesture:Lcom/lidroid/parts/GestureListActivity$NamedGesture;
    invoke-virtual {v0, v2}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->add(Ljava/lang/Object;)V

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v2           #gesture:Lcom/lidroid/parts/GestureListActivity$NamedGesture;
    :cond_0
    iget-object v5, p0, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->this$0:Lcom/lidroid/parts/GestureListActivity;

    #getter for: Lcom/lidroid/parts/GestureListActivity;->mSorter:Ljava/util/Comparator;
    invoke-static {v5}, Lcom/lidroid/parts/GestureListActivity;->access$300(Lcom/lidroid/parts/GestureListActivity;)Ljava/util/Comparator;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->sort(Ljava/util/Comparator;)V

    .line 245
    invoke-virtual {v0}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->notifyDataSetChanged()V

    .line 246
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, [Lcom/lidroid/parts/GestureListActivity$NamedGesture;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lidroid/parts/GestureListActivity$GesturesLoadTask;->onProgressUpdate([Lcom/lidroid/parts/GestureListActivity$NamedGesture;)V

    return-void
.end method
