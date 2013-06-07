.class public Lcom/android/settings/TabbedSettings;
.super Landroid/app/ActivityGroup;
.source "Tab.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x5a

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x96


# instance fields
.field currentTab:I

.field gesture:Landroid/view/GestureDetector;

.field prevView:Landroid/view/View;

.field tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method private changeLtoR()V
    .locals 5

    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 165
    .local v0, curTab:I
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v1, v2, 0x4

    .line 166
    .local v1, nextTab:I
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TabbedSettings;->prevView:Landroid/view/View;

    .line 167
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->prevView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/TabbedSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 170
    return-void
.end method

.method private changeRtoL()V
    .locals 5

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 153
    .local v0, curTab:I
    add-int/lit8 v2, v0, -0x1

    rem-int/lit8 v1, v2, 0x4

    .line 154
    .local v1, nextTab:I
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TabbedSettings;->prevView:Landroid/view/View;

    .line 155
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->prevView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/TabbedSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 158
    return-void
.end method

.method private static createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "text"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030059

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-object v1
.end method

.method private setupTab(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "textView"
    .parameter "tag"
    .parameter "act"

    .prologue
    .line 79
    iget-object v5, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/settings/TabbedSettings;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, tabview:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 81
    .local v3, spec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 83
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.android.settings."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 84
    .local v2, ourClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, action:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 86
    iget-object v5, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0           #action:Landroid/content/Intent;
    .end local v2           #ourClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/TabbedSettings;->gesture:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/TabbedSettings;->gesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/android/settings/TabbedSettings;->setContentView(I)V

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/TabbedSettings;->gesture:Landroid/view/GestureDetector;

    .line 40
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/android/settings/TabbedSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    .line 41
    iget-object v0, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Lcom/android/settings/TabbedSettings;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/android/settings/TabbedSettings;->currentTab:I

    .line 45
    iget-object v0, p0, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/android/settings/TabbedSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/TabbedSettings$1;-><init>(Lcom/android/settings/TabbedSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 67
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Settings"

    const-string v2, "Settings"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TabbedSettings;->setupTab(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Parts"

    const-string v2, "PersonalSettings"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TabbedSettings;->setupTab(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Tools"

    const-string v2, "ProgramSettings"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TabbedSettings;->setupTab(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "System"

    const-string v2, "DeviceInfoSettings"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TabbedSettings;->setupTab(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v5, 0x4316

    const/high16 v4, 0x42b4

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x437a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 132
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/android/settings/TabbedSettings;->changeLtoR()V

    move v0, v1

    .line 135
    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 141
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/settings/TabbedSettings;->changeRtoL()V

    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 178
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 195
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "me"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/TabbedSettings;->gesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
