.class Lcom/sec/android/app/clockpackage/alarm/Alarm$10;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/Alarm;->controlListHead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

.field final synthetic val$mNoItemLayout_txtCreate:Landroid/view/View;

.field final synthetic val$paddingBottom:I

.field final synthetic val$paddingLeft:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;Landroid/view/View;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$mNoItemLayout_txtCreate:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$paddingLeft:I

    iput p4, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$paddingBottom:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .parameter "view"
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 618
    if-eqz p2, :cond_15

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$mNoItemLayout_txtCreate:Landroid/view/View;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$mNoItemLayout_txtCreate:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$paddingLeft:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$paddingBottom:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 625
    :goto_14
    return-void

    .line 622
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$mNoItemLayout_txtCreate:Landroid/view/View;

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$mNoItemLayout_txtCreate:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$paddingLeft:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$10;->val$paddingBottom:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_14
.end method
