.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 948
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 952
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 953
    .local v0, et:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1602(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/text/Editable;)Landroid/text/Editable;

    .line 955
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_4b

    .line 961
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v1

    .line 962
    .local v1, etext:Landroid/text/Editable;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 965
    if-nez p2, :cond_4c

    .line 966
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 968
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 1000
    .end local v1           #etext:Landroid/text/Editable;
    :cond_4b
    :goto_4b
    return-void

    .line 970
    .restart local v1       #etext:Landroid/text/Editable;
    :cond_4c
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-ne v2, v3, :cond_100

    .line 971
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v2

    if-nez v2, :cond_8e

    .line 974
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 975
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 976
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_4b

    .line 980
    :cond_8e
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-gt v2, v3, :cond_b2

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v2, v3, :cond_e1

    .line 983
    :cond_b2
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 985
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 992
    :goto_d0
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_4b

    .line 989
    :cond_e1
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 990
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    goto :goto_d0

    .line 996
    :cond_100
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_4b
.end method
