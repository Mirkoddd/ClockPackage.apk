.class Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;
.super Ljava/lang/Object;
.source "AlarmRepeat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const v5, 0x7f0e0049

    const v4, 0x7f0b0049

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, result:I
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v0

    .line 128
    .local v0, checkDay:I
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0e004b

    if-ne v2, v3, :cond_b6

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v0

    .line 130
    if-eqz v0, :cond_a3

    .line 131
    shl-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v1, v2

    .line 168
    :goto_31
    const-string v2, "AlarmRepeat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGroup.getCheckedRadioButtonId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v2, "AlarmRepeat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_110

    .line 196
    :goto_7c
    :pswitch_7c
    const-string v2, "AlarmRepeat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->setResult(I)V

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->finish()V

    .line 201
    :goto_a2
    return-void

    .line 133
    :cond_a3
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setText(I)V

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a2

    .line 138
    :cond_b6
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v5, :cond_cf

    .line 139
    or-int/lit8 v1, v1, -0x10

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    goto/16 :goto_31

    .line 141
    :cond_cf
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0e004a

    if-ne v2, v3, :cond_e4

    .line 145
    const v2, 0xfffff00

    or-int/2addr v1, v2

    goto/16 :goto_31

    .line 157
    :cond_e4
    if-eqz v0, :cond_ed

    .line 158
    shl-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v1, v2

    goto/16 :goto_31

    .line 160
    :cond_ed
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setText(I)V

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a2

    .line 183
    :pswitch_100
    or-int/lit8 v1, v1, 0x5

    .line 184
    goto/16 :goto_7c

    .line 186
    :pswitch_104
    or-int/lit8 v1, v1, 0x3

    .line 187
    goto/16 :goto_7c

    .line 189
    :pswitch_108
    or-int/lit8 v1, v1, 0x4

    .line 190
    goto/16 :goto_7c

    .line 192
    :pswitch_10c
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_7c

    .line 180
    :pswitch_data_110
    .packed-switch 0x7f0e0047
        :pswitch_100
        :pswitch_7c
        :pswitch_104
        :pswitch_108
        :pswitch_10c
    .end packed-switch
.end method
