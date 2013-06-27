.class public final enum Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
.super Ljava/lang/Enum;
.source "MusicDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POPUP_SOFTKEY_BUTTON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

.field public static final enum DRM_BUY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

.field public static final enum DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

.field public static final enum DRM_DELETE_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

.field public static final enum DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

.field public static final enum DRM_PLAY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    const-string v1, "DRM_DELETE_SOFTKEY_BUTTON"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_DELETE_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    const-string v1, "DRM_BUY_SOFTKEY_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_BUY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    const-string v1, "DRM_PLAY_SOFTKEY_BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 55
    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    const-string v1, "DRM_OK_SOFTKEY_BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    const-string v1, "DRM_CANCEL_SOFTKEY_BUTTON"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_DELETE_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_BUY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->$VALUES:[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .locals 1
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->$VALUES:[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    invoke-virtual {v0}, [Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    return-object v0
.end method
