.class public Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;
.super Landroid/view/View;
.source "AddMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/AddMeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewAddMeRect"
.end annotation


# instance fields
.field private mLGuide:Landroid/graphics/RectF;

.field private mLScr:Landroid/graphics/RectF;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mRGuide:Landroid/graphics/RectF;

.field private mRScr:Landroid/graphics/RectF;

.field private mScreenPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/sec/android/app/camera/AddMeView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AddMeView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->this$0:Lcom/sec/android/app/camera/AddMeView;

    .line 202
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->init()V

    .line 204
    return-void
.end method


# virtual methods
.method init()V
    .locals 5

    .prologue
    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLinePaint:Landroid/graphics/Paint;

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x26

    const/16 v3, 0x81

    const/16 v4, 0xce

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mScreenPaint:Landroid/graphics/Paint;

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mScreenPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mScreenPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mScreenPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 220
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->this$0:Lcom/sec/android/app/camera/AddMeView;

    #getter for: Lcom/sec/android/app/camera/AddMeView;->mbHideViewRect:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/AddMeView;->access$000(Lcom/sec/android/app/camera/AddMeView;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 248
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLScr:Landroid/graphics/RectF;

    if-nez v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->this$0:Lcom/sec/android/app/camera/AddMeView;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 229
    .local v2, sidemenuWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    .line 230
    .local v0, hcenter:F
    const/4 v1, 0x2

    .line 232
    .local v1, offset:I
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v2, v6, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLScr:Landroid/graphics/RectF;

    .line 233
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v0, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mRScr:Landroid/graphics/RectF;

    .line 235
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v2, v6, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLGuide:Landroid/graphics/RectF;

    .line 236
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v0, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mRGuide:Landroid/graphics/RectF;

    .line 238
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLGuide:Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 239
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mRGuide:Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 242
    .end local v0           #hcenter:F
    .end local v1           #offset:I
    .end local v2           #sidemenuWidth:F
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->this$0:Lcom/sec/android/app/camera/AddMeView;

    #getter for: Lcom/sec/android/app/camera/AddMeView;->mbCapturedFirtstPerson:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/AddMeView;->access$200(Lcom/sec/android/app/camera/AddMeView;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 243
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->this$0:Lcom/sec/android/app/camera/AddMeView;

    #getter for: Lcom/sec/android/app/camera/AddMeView;->isLeftPane:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/AddMeView;->access$300(Lcom/sec/android/app/camera/AddMeView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLGuide:Landroid/graphics/RectF;

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 244
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->this$0:Lcom/sec/android/app/camera/AddMeView;

    #getter for: Lcom/sec/android/app/camera/AddMeView;->isLeftPane:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/AddMeView;->access$300(Lcom/sec/android/app/camera/AddMeView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mRScr:Landroid/graphics/RectF;

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mRGuide:Landroid/graphics/RectF;

    goto :goto_1

    .line 244
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLScr:Landroid/graphics/RectF;

    goto :goto_2

    .line 246
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->this$0:Lcom/sec/android/app/camera/AddMeView;

    #getter for: Lcom/sec/android/app/camera/AddMeView;->isLeftPane:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/AddMeView;->access$300(Lcom/sec/android/app/camera/AddMeView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mRGuide:Landroid/graphics/RectF;

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->mLGuide:Landroid/graphics/RectF;

    goto :goto_3
.end method
