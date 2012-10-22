.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmNameInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 2892
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2892
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 16
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const v8, 0x7f0b006c

    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2895
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    rsub-int/lit8 v1, v2, 0x64

    .line 2898
    .local v1, keep:I
    const-string v2, "AlarmDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dtstart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dtend="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    if-lez p3, :cond_7f

    if-gtz v1, :cond_7f

    .line 2901
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2903
    .local v0, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2905
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2906
    const-string v2, ""

    .line 2915
    .end local v0           #format:Ljava/lang/String;
    :goto_7e
    return-object v2

    .line 2907
    :cond_7f
    sub-int v2, p3, p2

    if-lt v1, v2, :cond_85

    .line 2908
    const/4 v2, 0x0

    goto :goto_7e

    .line 2910
    :cond_85
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2912
    .restart local v0       #format:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2914
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$AlarmNameInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$3500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2915
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_7e
.end method
