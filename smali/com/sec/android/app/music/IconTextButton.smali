.class public Lcom/sec/android/app/music/IconTextButton;
.super Landroid/widget/LinearLayout;
.source "IconTextButton.java"


# instance fields
.field mButton:Landroid/widget/LinearLayout;

.field mContext:Landroid/content/Context;

.field mImage:Landroid/widget/ImageView;

.field mResources:Landroid/content/res/Resources;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/sec/android/app/music/IconTextButton;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/music/IconTextButton;->initViews()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/sec/android/app/music/IconTextButton;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/music/IconTextButton;->initViews()V

    .line 41
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 44
    iget-object v2, p0, Lcom/sec/android/app/music/IconTextButton;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f02008b

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/music/IconTextButton;->mButton:Landroid/widget/LinearLayout;

    .line 48
    const v2, 0x7f0c0048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/music/IconTextButton;->mImage:Landroid/widget/ImageView;

    .line 49
    const v2, 0x7f0c0049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/music/IconTextButton;->mText:Landroid/widget/TextView;

    .line 50
    iget-object v2, p0, Lcom/sec/android/app/music/IconTextButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/IconTextButton;->mResources:Landroid/content/res/Resources;

    .line 51
    return-void
.end method


# virtual methods
.method public setImageAndText(II)V
    .locals 0
    .parameter "resId1"
    .parameter "resId2"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/IconTextButton;->setImageResource(I)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/sec/android/app/music/IconTextButton;->setText(I)V

    .line 104
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/music/IconTextButton;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/music/IconTextButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/music/IconTextButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/music/IconTextButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :cond_0
    return-void
.end method
