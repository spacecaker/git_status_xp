.class Lcom/android/music/WeekSelector$2;
.super Ljava/lang/Object;
.source "WeekSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/WeekSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/WeekSelector;


# direct methods
.method constructor <init>(Lcom/android/music/WeekSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/music/WeekSelector$2;->this$0:Lcom/android/music/WeekSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/music/WeekSelector$2;->this$0:Lcom/android/music/WeekSelector;

    iget-object v1, v1, Lcom/android/music/WeekSelector;->mWeeks:Lcom/android/music/VerticalTextSpinner;

    invoke-virtual {v1}, Lcom/android/music/VerticalTextSpinner;->getCurrentSelectedPos()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 73
    .local v0, numweeks:I
    iget-object v1, p0, Lcom/android/music/WeekSelector$2;->this$0:Lcom/android/music/WeekSelector;

    const-string v2, "numweeks"

    invoke-static {v1, v2, v0}, Lcom/android/music/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    iget-object v1, p0, Lcom/android/music/WeekSelector$2;->this$0:Lcom/android/music/WeekSelector;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/music/WeekSelector;->setResult(I)V

    .line 75
    iget-object v1, p0, Lcom/android/music/WeekSelector$2;->this$0:Lcom/android/music/WeekSelector;

    invoke-virtual {v1}, Lcom/android/music/WeekSelector;->finish()V

    .line 76
    return-void
.end method
