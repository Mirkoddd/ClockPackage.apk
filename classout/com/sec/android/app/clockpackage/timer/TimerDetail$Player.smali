.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;
.super Ljava/lang/Object;
.source "TimerDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Player"
.end annotation


# static fields
.field static mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 998
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .parameter "c"
    .parameter "mSelectedUri"

    .prologue
    .line 1019
    const-string v1, "TimerDetail.Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uri1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    .line 1022
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_66

    .line 1023
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1025
    :try_start_26
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player$1;

    invoke-direct {v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1034
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1035
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1036
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1037
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1038
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_4b} :catch_4c

    .line 1051
    :cond_4b
    :goto_4b
    return-void

    .line 1040
    :catch_4c
    move-exception v0

    .line 1042
    .local v0, e:Ljava/io/IOException;
    const-string v1, "TimerDetail.Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 1047
    .end local v0           #e:Ljava/io/IOException;
    :cond_66
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4b

    .line 1049
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    goto :goto_4b
.end method

.method public static stopMediaPlayer()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1058
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c

    .line 1059
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1060
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1061
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1062
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1063
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1065
    :cond_1c
    return-void
.end method
