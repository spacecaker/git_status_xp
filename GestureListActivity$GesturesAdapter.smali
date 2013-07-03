.class Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GestureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/GestureListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lidroid/parts/GestureListActivity$NamedGesture;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mThumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lidroid/parts/GestureListActivity;


# direct methods
.method public constructor <init>(Lcom/lidroid/parts/GestureListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->this$0:Lcom/lidroid/parts/GestureListActivity;

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->mThumbnails:Ljava/util/Map;

    .line 276
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 277
    return-void
.end method


# virtual methods
.method addBitmap(Ljava/lang/Long;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "id"
    .parameter "bitmap"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->mThumbnails:Ljava/util/Map;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 285
    if-nez p2, :cond_0

    .line 286
    iget-object v4, p0, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/parts/GestureListActivity$NamedGesture;

    .local v0, gesture:Lcom/lidroid/parts/GestureListActivity$NamedGesture;
    move-object v1, p2

    .line 290
    check-cast v1, Landroid/widget/TextView;

    .line 292
    .local v1, label:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 293
    iget-object v4, v0, Lcom/lidroid/parts/GestureListActivity$NamedGesture;->name:Ljava/lang/String;

    const-string v5, "___"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, payload:[Ljava/lang/String;
    aget-object v2, v3, v8

    .line 296
    .local v2, name:Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " *"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    :cond_1
    if-eqz v2, :cond_2

    .line 300
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_2
    iget-object v4, p0, Lcom/lidroid/parts/GestureListActivity$GesturesAdapter;->mThumbnails:Ljava/util/Map;

    iget-object v5, v0, Lcom/lidroid/parts/GestureListActivity$NamedGesture;->gesture:Landroid/gesture/Gesture;

    invoke-virtual {v5}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 306
    return-object p2
.end method
