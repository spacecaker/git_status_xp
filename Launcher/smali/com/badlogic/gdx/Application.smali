.class public interface abstract Lcom/badlogic/gdx/Application;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_DEBUG:I = 0x3

.field public static final LOG_ERROR:I = 0x1

.field public static final LOG_INFO:I = 0x2

.field public static final LOG_NONE:I


# virtual methods
.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract exit()V
.end method

.method public abstract getAudio()Lcom/badlogic/gdx/Audio;
.end method

.method public abstract getFiles()Lcom/badlogic/gdx/Files;
.end method

.method public abstract getGraphics()Lcom/badlogic/gdx/Graphics;
.end method

.method public abstract getInput()Lcom/badlogic/gdx/Input;
.end method

.method public abstract getJavaHeap()J
.end method

.method public abstract getNativeHeap()J
.end method

.method public abstract getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
.end method

.method public abstract getType()Lcom/badlogic/gdx/Application$ApplicationType;
.end method

.method public abstract getVersion()I
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract postRunnable(Ljava/lang/Runnable;)V
.end method

.method public abstract setLogLevel(I)V
.end method
