.class public Lcom/iLoong/launcher/Workspace/e;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Ljava/util/ArrayList;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/e;->b:Ljava/util/ArrayList;

    iput v5, p0, Lcom/iLoong/launcher/Workspace/e;->c:I

    iput v5, p0, Lcom/iLoong/launcher/Workspace/e;->d:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const/high16 v1, 0x4240

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Workspace/e;->d:I

    iput v0, p0, Lcom/iLoong/launcher/Workspace/e;->c:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/e;->a:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aL:Z

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/iLoong/launcher/Workspace/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/iLoong/launcher/Workspace/b;

    const v3, 0x7f0c0044

    const v4, 0x7f020018

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Workspace/b;-><init>(Lcom/iLoong/launcher/Workspace/e;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v6, p0, Lcom/iLoong/launcher/Workspace/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/iLoong/launcher/Workspace/b;

    const v3, 0x7f0c0040

    const v4, 0x7f02001a

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Workspace/b;-><init>(Lcom/iLoong/launcher/Workspace/e;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/iLoong/launcher/Workspace/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/iLoong/launcher/Workspace/b;

    const v3, 0x7f0c0041

    const v4, 0x7f02001b

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Workspace/b;-><init>(Lcom/iLoong/launcher/Workspace/e;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/iLoong/launcher/Workspace/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/iLoong/launcher/Workspace/b;

    const v3, 0x7f0c003e

    const v4, 0x7f02001d

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Workspace/b;-><init>(Lcom/iLoong/launcher/Workspace/e;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/iLoong/launcher/Workspace/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/iLoong/launcher/Workspace/b;

    const v3, 0x7f0c0042

    const v4, 0x7f02001f

    const/4 v5, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Workspace/b;-><init>(Lcom/iLoong/launcher/Workspace/e;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aL:Z

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Workspace/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Workspace/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Workspace/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/b;

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Workspace/e;->a:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/iLoong/launcher/Workspace/b;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->bz:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/iLoong/launcher/Desktop3D/cb;->bA:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v3, v0, Lcom/iLoong/launcher/Workspace/b;->b:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/iLoong/launcher/Workspace/e;->c:I

    iget v5, p0, Lcom/iLoong/launcher/Workspace/e;->d:I

    invoke-static {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->createIconThumbnail(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/iLoong/launcher/Workspace/b;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/iLoong/launcher/Workspace/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_1
    move-object v2, p2

    goto :goto_0
.end method
