.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 971
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .line 974
    .local v2, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 975
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cradle_current_clock"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 977
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cradle_time_display"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 979
    .local v1, isDisplayClock:Z
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 981
    packed-switch p2, :pswitch_data_6c

    .line 1000
    :goto_2f
    if-eqz v1, :cond_66

    .line 1001
    invoke-virtual {v2, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 1006
    :goto_34
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 1008
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->removeDialog(I)V

    .line 1009
    return-void

    .line 984
    :pswitch_44
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_2f

    .line 993
    :pswitch_55
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_2f

    .line 1003
    :cond_66
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    goto :goto_34

    .line 981
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_44
        :pswitch_55
    .end packed-switch
.end method
