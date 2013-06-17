.class public Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
.super Landroid/widget/RelativeLayout;
.source "TwImageSwitcherLayout.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field private final IMAGE_BUTTON_TAG:I

.field private mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mImageSwitcher:Landroid/widget/ImageSwitcher;

.field private mPosition:I

.field private mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/widget/TwStopMotionPreview;)V
    .locals 1
    .parameter "context"
    .parameter "stopMotionPreview"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->IMAGE_BUTTON_TAG:I

    .line 43
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->init(Lcom/sec/android/app/camera/widget/TwStopMotionPreview;)V

    .line 44
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/widget/TwStopMotionPreview;)V
    .locals 7
    .parameter "stopMotionPreview"

    .prologue
    const/4 v4, -0x2

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    .line 48
    new-instance v2, Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageSwitcher:Landroid/widget/ImageSwitcher;

    .line 49
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->enableAnimation()V

    .line 52
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v1, switcherLayout:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02036f

    const v5, 0x7f020370

    const v6, 0x7f020371

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDeleteButtonWidth:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    iget v3, v3, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDeleteButtonHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, buttonLayout:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mButtonLeftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 61
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 65
    return-void
.end method


# virtual methods
.method public disableAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 111
    return-void
.end method

.method public enableAnimation()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 106
    return-void
.end method

.method public hideDeleteButton()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, imageView:Landroid/widget/ImageView;
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 70
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-object v0
.end method

.method public setButtonTag(I)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .parameter "disable"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 123
    return-void
.end method

.method public setImageSwitcherImage(IZ)V
    .locals 5
    .parameter "position"
    .parameter "showDeleteButton"

    .prologue
    .line 78
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mPosition:I

    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setButtonTag(I)V

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getThumbnailAt(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getThumbnailAt(I)[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->showDeleteButton()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->hideDeleteButton()V

    goto :goto_0
.end method

.method public showDeleteButton()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->mImageButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 115
    return-void
.end method
