.class public abstract Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.super Ljava/lang/Object;
.source "PowerButton.java"


# static fields
.field private static final MASK_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClickPattern:[J

.field private mExternalClickListener:Landroid/view/View$OnClickListener;

.field private mExternalLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mHapticFeedback:Z

.field protected mIcon:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickPattern:[J

.field protected mState:I

.field protected mType:Ljava/lang/String;

.field protected mVibrator:Landroid/os/Vibrator;

.field protected mView:Landroid/view/View;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickPattern:[J

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickPattern:[J

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    return-object v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerButton-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleLongClick(Landroid/content/Context;)Z
.end method

.method protected onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 129
    return-void
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    return-void
.end method

.method setExternalClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 202
    return-void
.end method

.method setExternalLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 206
    return-void
.end method

.method setHapticFeedback(Z[J[J)V
    .locals 0
    .parameter "enabled"
    .parameter "clickPattern"
    .parameter "longClickPattern"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mHapticFeedback:Z

    .line 134
    iput-object p2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickPattern:[J

    .line 135
    iput-object p3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickPattern:[J

    .line 136
    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    const v1, 0x7f0e001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIconView:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    const v1, 0x7f0e001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIndicatorView:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mVibrator:Landroid/os/Vibrator;

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIconView:Landroid/widget/ImageView;

    .line 158
    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIndicatorView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected abstract toggleState(Landroid/content/Context;)V
.end method

.method protected update(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateState(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->updateView()V

    .line 119
    return-void
.end method

.method protected abstract updateState(Landroid/content/Context;)V
.end method

.method protected updateView()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    return-void
.end method
