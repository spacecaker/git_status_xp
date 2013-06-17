.class Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadStatus"
.end annotation


# instance fields
.field public mOptions:Landroid/graphics/BitmapFactory$Options;

.field public mState:Lcom/sec/android/app/camera/BitmapManager$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/sec/android/app/camera/BitmapManager$State;->ALLOW:Lcom/sec/android/app/camera/BitmapManager$State;

    iput-object v0, p0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/BitmapManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;

    sget-object v3, Lcom/sec/android/app/camera/BitmapManager$State;->CANCEL:Lcom/sec/android/app/camera/BitmapManager$State;

    if-ne v2, v3, :cond_0

    .line 48
    const-string v0, "Cancel"

    .line 56
    .local v0, s:Ljava/lang/String;
    :goto_0
    const-string v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 49
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;

    sget-object v3, Lcom/sec/android/app/camera/BitmapManager$State;->ALLOW:Lcom/sec/android/app/camera/BitmapManager$State;

    if-ne v2, v3, :cond_1

    .line 50
    const-string v0, "Allow"

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    const-string v0, "?"

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0
.end method
