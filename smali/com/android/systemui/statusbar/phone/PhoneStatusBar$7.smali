.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 2286
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final mini(II)I
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2288
    if-le p2, p1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 2291
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v8

    .line 2293
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v3

    .line 2295
    .local v3, numChildren:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 2296
    .local v5, scrollTop:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    add-int v4, v5, v7

    .line 2297
    .local v4, scrollBottom:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2298
    .local v6, snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2299
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2300
    .local v1, child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v7, v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    if-ge v7, v4, :cond_0

    .line 2302
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2305
    .end local v1           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2306
    .local v0, N:I
    new-instance v7, Ljava/lang/Thread;

    new-instance v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;

    invoke-direct {v9, p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;Ljava/util/ArrayList;)V

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 2355
    monitor-exit v8

    .line 2356
    return-void

    .line 2355
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #numChildren:I
    .end local v4           #scrollBottom:I
    .end local v5           #scrollTop:I
    .end local v6           #snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
