.class Lcom/sec/android/app/clockpackage/deskclock/EventLoader$ShutdownRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownRequest"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/EventLoader$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader$ShutdownRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public processRequest(Lcom/sec/android/app/clockpackage/deskclock/EventLoader;)V
    .registers 2
    .parameter "eventLoader"

    .prologue
    .line 47
    return-void
.end method

.method public skipRequest(Lcom/sec/android/app/clockpackage/deskclock/EventLoader;)V
    .registers 2
    .parameter "eventLoader"

    .prologue
    .line 50
    return-void
.end method
