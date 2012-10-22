.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$6;
.super Ljava/lang/Object;
.source "WCMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;->controlListHead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$6;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$6;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$300(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    .line 440
    return-void
.end method
