.class public Lcom/sec/android/app/twlauncher/AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 7
    .parameter "launcher"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;

    const v3, 0x7f0a0018

    const v4, 0x7f02006d

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;-><init>(Lcom/sec/android/app/twlauncher/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;

    const v3, 0x7f0a0014

    const v4, 0x7f020074

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;-><init>(Lcom/sec/android/app/twlauncher/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;

    const v3, 0x7f0a0017

    const v4, 0x7f02006b

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;-><init>(Lcom/sec/android/app/twlauncher/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;

    const v3, 0x7f0a0019

    const v4, 0x7f020075

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;-><init>(Lcom/sec/android/app/twlauncher/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;

    .line 84
    .local v1, item:Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;
    if-nez p2, :cond_0

    .line 85
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 88
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 89
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-object p2
.end method
