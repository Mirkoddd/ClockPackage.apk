.class public Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;
.super Ljava/lang/Object;
.source "Ui3dLogicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunOnKey"
.end annotation


# instance fields
.field private m_bAnimateZoom:Z

.field private m_key:I

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IZ)V
    .registers 4
    .parameter
    .parameter "key"
    .parameter "bAnimateZoom"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;->m_key:I

    .line 605
    iput-boolean p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;->m_bAnimateZoom:Z

    .line 606
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    iget v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;->m_key:I

    iget-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;->m_bAnimateZoom:Z

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnKey(IZ)V
    invoke-static {v0, v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$500(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IZ)V

    .line 610
    return-void
.end method
