// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `معلومات الضمان`
  String get warrantyDetails {
    return Intl.message(
      'معلومات الضمان',
      name: 'warrantyDetails',
      desc: '',
      args: [],
    );
  }

  /// `داخل الضمان`
  String get inWarranty {
    return Intl.message(
      'داخل الضمان',
      name: 'inWarranty',
      desc: '',
      args: [],
    );
  }

  /// `حالة المهام`
  String get taskStates {
    return Intl.message(
      'حالة المهام',
      name: 'taskStates',
      desc: '',
      args: [],
    );
  }

  /// `مرفوضة`
  String get denied {
    return Intl.message(
      'مرفوضة',
      name: 'denied',
      desc: '',
      args: [],
    );
  }

  /// `اختيار جهة منفذة`
  String get selectExecCompany {
    return Intl.message(
      'اختيار جهة منفذة',
      name: 'selectExecCompany',
      desc: '',
      args: [],
    );
  }

  /// `اختيار جهة مالكة`
  String get selectGovCompany {
    return Intl.message(
      'اختيار جهة مالكة',
      name: 'selectGovCompany',
      desc: '',
      args: [],
    );
  }

  /// `إضافة جهة مالكة جديدة`
  String get addNewGovCompany {
    return Intl.message(
      'إضافة جهة مالكة جديدة',
      name: 'addNewGovCompany',
      desc: '',
      args: [],
    );
  }

  /// `إضافة جهة منفذة جديدة`
  String get addNewExecutionCompany {
    return Intl.message(
      'إضافة جهة منفذة جديدة',
      name: 'addNewExecutionCompany',
      desc: '',
      args: [],
    );
  }

  /// `برجاء إدخال لجنة واحدة على الأقل`
  String get atLeast1Committee {
    return Intl.message(
      'برجاء إدخال لجنة واحدة على الأقل',
      name: 'atLeast1Committee',
      desc: '',
      args: [],
    );
  }

  /// `رقم التليفون 1`
  String get phone1 {
    return Intl.message(
      'رقم التليفون 1',
      name: 'phone1',
      desc: '',
      args: [],
    );
  }

  /// `رقم التليفون 2`
  String get phone2 {
    return Intl.message(
      'رقم التليفون 2',
      name: 'phone2',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك ادخل بريدك الإلكترونى`
  String get emailNull {
    return Intl.message(
      'من فضلك ادخل بريدك الإلكترونى',
      name: 'emailNull',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك أدخل رقم قومى صحيح`
  String get invalidNationalId {
    return Intl.message(
      'من فضلك أدخل رقم قومى صحيح',
      name: 'invalidNationalId',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك ادخل كلمة مرور صحيحه`
  String get invalidPassword {
    return Intl.message(
      'من فضلك ادخل كلمة مرور صحيحه',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك التأكد من كلمة المرور`
  String get invalidConfirmPassword {
    return Intl.message(
      'من فضلك التأكد من كلمة المرور',
      name: 'invalidConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك ادخل كلمة المرور`
  String get passwordNull {
    return Intl.message(
      'من فضلك ادخل كلمة المرور',
      name: 'passwordNull',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور قصيره`
  String get shortPassword {
    return Intl.message(
      'كلمة المرور قصيره',
      name: 'shortPassword',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك ادخل الاسم`
  String get nameNull {
    return Intl.message(
      'من فضلك ادخل الاسم',
      name: 'nameNull',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك ادخل رقم الهاتف`
  String get phoneNumberNull {
    return Intl.message(
      'من فضلك ادخل رقم الهاتف',
      name: 'phoneNumberNull',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك أدخل رقم هاتف صالح`
  String get invalidPhoneNumber {
    return Intl.message(
      'من فضلك أدخل رقم هاتف صالح',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك أدخل بريد إلكترونى صالح`
  String get invalidEmail {
    return Intl.message(
      'من فضلك أدخل بريد إلكترونى صالح',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف قصير`
  String get shortPhone {
    return Intl.message(
      'رقم الهاتف قصير',
      name: 'shortPhone',
      desc: '',
      args: [],
    );
  }

  /// `هذا الحقل مطلوب!`
  String get inputNull {
    return Intl.message(
      'هذا الحقل مطلوب!',
      name: 'inputNull',
      desc: '',
      args: [],
    );
  }

  /// `حدث خطأ اثناء التسجيل`
  String get signInFailed {
    return Intl.message(
      'حدث خطأ اثناء التسجيل',
      name: 'signInFailed',
      desc: '',
      args: [],
    );
  }

  /// `تأكد من الرقم القومى وكلمه المرور`
  String get idOrPasswordIsWrong {
    return Intl.message(
      'تأكد من الرقم القومى وكلمه المرور',
      name: 'idOrPasswordIsWrong',
      desc: '',
      args: [],
    );
  }

  /// `فشل الاتصال حاول مره اخرى`
  String get noNetwork {
    return Intl.message(
      'فشل الاتصال حاول مره اخرى',
      name: 'noNetwork',
      desc: '',
      args: [],
    );
  }

  /// `البيانات ليست مكتمله!`
  String get dataIsNotCompleted {
    return Intl.message(
      'البيانات ليست مكتمله!',
      name: 'dataIsNotCompleted',
      desc: '',
      args: [],
    );
  }

  /// `© 2020 Lina&Dina.كل الحقوق محفوظه `
  String get copyRights {
    return Intl.message(
      '© 2020 Lina&Dina.كل الحقوق محفوظه ',
      name: 'copyRights',
      desc: '',
      args: [],
    );
  }

  /// `اختر لغه العرض المفضله`
  String get selectLanguageTitle {
    return Intl.message(
      'اختر لغه العرض المفضله',
      name: 'selectLanguageTitle',
      desc: '',
      args: [],
    );
  }

  /// `رقم بطاقه التأمين`
  String get medicalIdNumber {
    return Intl.message(
      'رقم بطاقه التأمين',
      name: 'medicalIdNumber',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول`
  String get signIn {
    return Intl.message(
      'تسجيل الدخول',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `رجوع`
  String get back {
    return Intl.message(
      'رجوع',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `الدخول كضيف`
  String get guest {
    return Intl.message(
      'الدخول كضيف',
      name: 'guest',
      desc: '',
      args: [],
    );
  }

  /// `تم`
  String get done {
    return Intl.message(
      'تم',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `الوظيفة`
  String get jobDesc {
    return Intl.message(
      'الوظيفة',
      name: 'jobDesc',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get password {
    return Intl.message(
      'كلمة المرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد كلمة المرور`
  String get confirmPassword {
    return Intl.message(
      'تأكيد كلمة المرور',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ الميلاد`
  String get birthDate {
    return Intl.message(
      'تاريخ الميلاد',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `تنبيه`
  String get alert {
    return Intl.message(
      'تنبيه',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `بطاقة الخصم`
  String get discountCard {
    return Intl.message(
      'بطاقة الخصم',
      name: 'discountCard',
      desc: '',
      args: [],
    );
  }

  /// `الملف الشخصى`
  String get profile {
    return Intl.message(
      'الملف الشخصى',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `المفضلات`
  String get favourite {
    return Intl.message(
      'المفضلات',
      name: 'favourite',
      desc: '',
      args: [],
    );
  }

  /// `الإعدادات`
  String get settings {
    return Intl.message(
      'الإعدادات',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `معلومات عنا`
  String get aboutUs {
    return Intl.message(
      'معلومات عنا',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الخروج`
  String get signOut {
    return Intl.message(
      'تسجيل الخروج',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `الإشعارات`
  String get notifications {
    return Intl.message(
      'الإشعارات',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `لا توجد بيانات`
  String get thisEmpty {
    return Intl.message(
      'لا توجد بيانات',
      name: 'thisEmpty',
      desc: '',
      args: [],
    );
  }

  /// `لم نعثر على اى بيانات`
  String get didNotFind {
    return Intl.message(
      'لم نعثر على اى بيانات',
      name: 'didNotFind',
      desc: '',
      args: [],
    );
  }

  /// `بيانات`
  String get data {
    return Intl.message(
      'بيانات',
      name: 'data',
      desc: '',
      args: [],
    );
  }

  /// `بحث`
  String get search {
    return Intl.message(
      'بحث',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `انطلق`
  String get go {
    return Intl.message(
      'انطلق',
      name: 'go',
      desc: '',
      args: [],
    );
  }

  /// `الرئيسيه`
  String get home {
    return Intl.message(
      'الرئيسيه',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `المزيد`
  String get more {
    return Intl.message(
      'المزيد',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `تحديد البيانات المعروضه`
  String get filter {
    return Intl.message(
      'تحديد البيانات المعروضه',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `إرسال`
  String get send {
    return Intl.message(
      'إرسال',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `عنوان البريد الإلكترونى`
  String get email {
    return Intl.message(
      'عنوان البريد الإلكترونى',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `العنوان`
  String get address {
    return Intl.message(
      'العنوان',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `مزيد من التفاصيل`
  String get moreDetails {
    return Intl.message(
      'مزيد من التفاصيل',
      name: 'moreDetails',
      desc: '',
      args: [],
    );
  }

  /// `أضف ملف`
  String get attachFile {
    return Intl.message(
      'أضف ملف',
      name: 'attachFile',
      desc: '',
      args: [],
    );
  }

  /// `{count} ملفات تم رفعها `
  String filesUploaded(Object count) {
    return Intl.message(
      '$count ملفات تم رفعها ',
      name: 'filesUploaded',
      desc: '',
      args: [count],
    );
  }

  /// `الإسم`
  String get name {
    return Intl.message(
      'الإسم',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `الشركه`
  String get company {
    return Intl.message(
      'الشركه',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `النوع`
  String get gender {
    return Intl.message(
      'النوع',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ البدء`
  String get startDate {
    return Intl.message(
      'تاريخ البدء',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ الإنتهاء`
  String get endDate {
    return Intl.message(
      'تاريخ الإنتهاء',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف`
  String get phoneNumber {
    return Intl.message(
      'رقم الهاتف',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `تعديل الملف الشخصى`
  String get editProfile {
    return Intl.message(
      'تعديل الملف الشخصى',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `تعديل`
  String get edit {
    return Intl.message(
      'تعديل',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `الموقع`
  String get location {
    return Intl.message(
      'الموقع',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `الفئه`
  String get category {
    return Intl.message(
      'الفئه',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `التخصص`
  String get specialization {
    return Intl.message(
      'التخصص',
      name: 'specialization',
      desc: '',
      args: [],
    );
  }

  /// `الهاتف`
  String get telPhone {
    return Intl.message(
      'الهاتف',
      name: 'telPhone',
      desc: '',
      args: [],
    );
  }

  /// `المفضله`
  String get favorite {
    return Intl.message(
      'المفضله',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `الدردشه`
  String get chat {
    return Intl.message(
      'الدردشه',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `أكتب رساله`
  String get typeMessage {
    return Intl.message(
      'أكتب رساله',
      name: 'typeMessage',
      desc: '',
      args: [],
    );
  }

  /// `لا يوجد رسائل الى الان`
  String get noMessagesYet {
    return Intl.message(
      'لا يوجد رسائل الى الان',
      name: 'noMessagesYet',
      desc: '',
      args: [],
    );
  }

  /// `إلغاء`
  String get cancel {
    return Intl.message(
      'إلغاء',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `تحقق من اتصالك بالانترنت`
  String get socketException {
    return Intl.message(
      'تحقق من اتصالك بالانترنت',
      name: 'socketException',
      desc: '',
      args: [],
    );
  }

  /// `تعذر الاتصال بالخادم`
  String get httpException {
    return Intl.message(
      'تعذر الاتصال بالخادم',
      name: 'httpException',
      desc: '',
      args: [],
    );
  }

  /// `حدث خطأ غير متوقع`
  String get formatException {
    return Intl.message(
      'حدث خطأ غير متوقع',
      name: 'formatException',
      desc: '',
      args: [],
    );
  }

  /// `إعادة المحاوله`
  String get retry {
    return Intl.message(
      'إعادة المحاوله',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `لم تقم بتغيير أى بيانات`
  String get noChangedData {
    return Intl.message(
      'لم تقم بتغيير أى بيانات',
      name: 'noChangedData',
      desc: '',
      args: [],
    );
  }

  /// `منطقة`
  String get area {
    return Intl.message(
      'منطقة',
      name: 'area',
      desc: '',
      args: [],
    );
  }

  /// `محافظة`
  String get governorate {
    return Intl.message(
      'محافظة',
      name: 'governorate',
      desc: '',
      args: [],
    );
  }

  /// `أنت غير مسجل`
  String get notAuth {
    return Intl.message(
      'أنت غير مسجل',
      name: 'notAuth',
      desc: '',
      args: [],
    );
  }

  /// `اللغه`
  String get language {
    return Intl.message(
      'اللغه',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `التاريخ`
  String get date {
    return Intl.message(
      'التاريخ',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `المشروعات`
  String get projects {
    return Intl.message(
      'المشروعات',
      name: 'projects',
      desc: '',
      args: [],
    );
  }

  /// `جديده`
  String get newProjects {
    return Intl.message(
      'جديده',
      name: 'newProjects',
      desc: '',
      args: [],
    );
  }

  /// `جاريه`
  String get active {
    return Intl.message(
      'جاريه',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `الضمان`
  String get withinWarranty {
    return Intl.message(
      'الضمان',
      name: 'withinWarranty',
      desc: '',
      args: [],
    );
  }

  /// `منتهيه`
  String get finished {
    return Intl.message(
      'منتهيه',
      name: 'finished',
      desc: '',
      args: [],
    );
  }

  /// `الجهه المالكه`
  String get ownerSide {
    return Intl.message(
      'الجهه المالكه',
      name: 'ownerSide',
      desc: '',
      args: [],
    );
  }

  /// `الموقف التنفيذى`
  String get executivePosition {
    return Intl.message(
      'الموقف التنفيذى',
      name: 'executivePosition',
      desc: '',
      args: [],
    );
  }

  /// `الجهه المنفذه`
  String get executingAgency {
    return Intl.message(
      'الجهه المنفذه',
      name: 'executingAgency',
      desc: '',
      args: [],
    );
  }

  /// `المستخلصات`
  String get financial {
    return Intl.message(
      'المستخلصات',
      name: 'financial',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل المستخلص`
  String get financialDetail {
    return Intl.message(
      'تفاصيل المستخلص',
      name: 'financialDetail',
      desc: '',
      args: [],
    );
  }

  /// `مقدم المستخلص`
  String get financialIssuer {
    return Intl.message(
      'مقدم المستخلص',
      name: 'financialIssuer',
      desc: '',
      args: [],
    );
  }

  /// `حالة المستخلص`
  String get financialStatues {
    return Intl.message(
      'حالة المستخلص',
      name: 'financialStatues',
      desc: '',
      args: [],
    );
  }

  /// `عنوان المستخلص`
  String get financialTitle {
    return Intl.message(
      'عنوان المستخلص',
      name: 'financialTitle',
      desc: '',
      args: [],
    );
  }

  /// `نوع المستخلص`
  String get financialType {
    return Intl.message(
      'نوع المستخلص',
      name: 'financialType',
      desc: '',
      args: [],
    );
  }

  /// `الجهه الصادره إليها`
  String get destinationAgency {
    return Intl.message(
      'الجهه الصادره إليها',
      name: 'destinationAgency',
      desc: '',
      args: [],
    );
  }

  /// `حالة المراجعه`
  String get reviewStatus {
    return Intl.message(
      'حالة المراجعه',
      name: 'reviewStatus',
      desc: '',
      args: [],
    );
  }

  /// `التقارير الفنيه`
  String get technicalReports {
    return Intl.message(
      'التقارير الفنيه',
      name: 'technicalReports',
      desc: '',
      args: [],
    );
  }

  /// `العنوان`
  String get title {
    return Intl.message(
      'العنوان',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `الحاله`
  String get status {
    return Intl.message(
      'الحاله',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `مدير المشروع`
  String get projectManager {
    return Intl.message(
      'مدير المشروع',
      name: 'projectManager',
      desc: '',
      args: [],
    );
  }

  /// `الوصف`
  String get description {
    return Intl.message(
      'الوصف',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل التقرير`
  String get reportDetails {
    return Intl.message(
      'تفاصيل التقرير',
      name: 'reportDetails',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل المشروع`
  String get projectDetails {
    return Intl.message(
      'تفاصيل المشروع',
      name: 'projectDetails',
      desc: '',
      args: [],
    );
  }

  /// `إكمال بيانات المشروع`
  String get completeProjectRequest {
    return Intl.message(
      'إكمال بيانات المشروع',
      name: 'completeProjectRequest',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل الطلب`
  String get projectRequestDetails {
    return Intl.message(
      'تفاصيل الطلب',
      name: 'projectRequestDetails',
      desc: '',
      args: [],
    );
  }

  /// `دور المركز`
  String get centerRole {
    return Intl.message(
      'دور المركز',
      name: 'centerRole',
      desc: '',
      args: [],
    );
  }

  /// `رقم العمليه`
  String get operationNumber {
    return Intl.message(
      'رقم العمليه',
      name: 'operationNumber',
      desc: '',
      args: [],
    );
  }

  /// `القطاع`
  String get sector {
    return Intl.message(
      'القطاع',
      name: 'sector',
      desc: '',
      args: [],
    );
  }

  /// `الجهه`
  String get side {
    return Intl.message(
      'الجهه',
      name: 'side',
      desc: '',
      args: [],
    );
  }

  /// `صفة الجهه`
  String get sideDescription {
    return Intl.message(
      'صفة الجهه',
      name: 'sideDescription',
      desc: '',
      args: [],
    );
  }

  /// `المدينه`
  String get city {
    return Intl.message(
      'المدينه',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `مدة التنفيذ`
  String get executiveDuration {
    return Intl.message(
      'مدة التنفيذ',
      name: 'executiveDuration',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ بداية المشروع`
  String get projectStartDate {
    return Intl.message(
      'تاريخ بداية المشروع',
      name: 'projectStartDate',
      desc: '',
      args: [],
    );
  }

  /// `الممثل المالك`
  String get ownerRepresentative {
    return Intl.message(
      'الممثل المالك',
      name: 'ownerRepresentative',
      desc: '',
      args: [],
    );
  }

  /// `مدير المركز التنفيذى`
  String get executiveCenterDirector {
    return Intl.message(
      'مدير المركز التنفيذى',
      name: 'executiveCenterDirector',
      desc: '',
      args: [],
    );
  }

  /// `رئيس اللجنه`
  String get chairman {
    return Intl.message(
      'رئيس اللجنه',
      name: 'chairman',
      desc: '',
      args: [],
    );
  }

  /// `الكود التعريفي `
  String get identificationCode {
    return Intl.message(
      'الكود التعريفي ',
      name: 'identificationCode',
      desc: '',
      args: [],
    );
  }

  /// `الإحصائيات`
  String get analytics {
    return Intl.message(
      'الإحصائيات',
      name: 'analytics',
      desc: '',
      args: [],
    );
  }

  /// `إجمالى المشروعات`
  String get totalProjects {
    return Intl.message(
      'إجمالى المشروعات',
      name: 'totalProjects',
      desc: '',
      args: [],
    );
  }

  /// `المدفوعات`
  String get payments {
    return Intl.message(
      'المدفوعات',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `الأرباح`
  String get earnings {
    return Intl.message(
      'الأرباح',
      name: 'earnings',
      desc: '',
      args: [],
    );
  }

  /// `إسم المشروع`
  String get projectName {
    return Intl.message(
      'إسم المشروع',
      name: 'projectName',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء مستخلص صادر جديد`
  String get addNewFinancial {
    return Intl.message(
      'إنشاء مستخلص صادر جديد',
      name: 'addNewFinancial',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء مشروع جديد`
  String get addNewProject {
    return Intl.message(
      'إنشاء مشروع جديد',
      name: 'addNewProject',
      desc: '',
      args: [],
    );
  }

  /// `إضافة فريق جديد`
  String get addNewTeam {
    return Intl.message(
      'إضافة فريق جديد',
      name: 'addNewTeam',
      desc: '',
      args: [],
    );
  }

  /// `الفرق`
  String get teams {
    return Intl.message(
      'الفرق',
      name: 'teams',
      desc: '',
      args: [],
    );
  }

  /// `بيانات الفريق`
  String get teamDetails {
    return Intl.message(
      'بيانات الفريق',
      name: 'teamDetails',
      desc: '',
      args: [],
    );
  }

  /// `أعضاء الفريق`
  String get teamMembers {
    return Intl.message(
      'أعضاء الفريق',
      name: 'teamMembers',
      desc: '',
      args: [],
    );
  }

  /// `مهام الفريق`
  String get teamMissions {
    return Intl.message(
      'مهام الفريق',
      name: 'teamMissions',
      desc: '',
      args: [],
    );
  }

  /// `إضافة مهمه جديده`
  String get addNewMission {
    return Intl.message(
      'إضافة مهمه جديده',
      name: 'addNewMission',
      desc: '',
      args: [],
    );
  }

  /// `تحديث المهمة`
  String get updateMission {
    return Intl.message(
      'تحديث المهمة',
      name: 'updateMission',
      desc: '',
      args: [],
    );
  }

  /// `إضافه عضو جديد`
  String get addNewMember {
    return Intl.message(
      'إضافه عضو جديد',
      name: 'addNewMember',
      desc: '',
      args: [],
    );
  }

  /// `المهمه`
  String get mission {
    return Intl.message(
      'المهمه',
      name: 'mission',
      desc: '',
      args: [],
    );
  }

  /// `رفع الملفات`
  String get uploadFiles {
    return Intl.message(
      'رفع الملفات',
      name: 'uploadFiles',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد`
  String get confirm {
    return Intl.message(
      'تأكيد',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `رفض`
  String get deny {
    return Intl.message(
      'رفض',
      name: 'deny',
      desc: '',
      args: [],
    );
  }

  /// `إسم الفريق`
  String get teamName {
    return Intl.message(
      'إسم الفريق',
      name: 'teamName',
      desc: '',
      args: [],
    );
  }

  /// `إسم العضو`
  String get memberName {
    return Intl.message(
      'إسم العضو',
      name: 'memberName',
      desc: '',
      args: [],
    );
  }

  /// `الرقم القومى`
  String get nationalId {
    return Intl.message(
      'الرقم القومى',
      name: 'nationalId',
      desc: '',
      args: [],
    );
  }

  /// `تقرير جديد`
  String get newReport {
    return Intl.message(
      'تقرير جديد',
      name: 'newReport',
      desc: '',
      args: [],
    );
  }

  /// `طلبات المشاريع`
  String get projectsRequests {
    return Intl.message(
      'طلبات المشاريع',
      name: 'projectsRequests',
      desc: '',
      args: [],
    );
  }

  /// `طريقة الطرح`
  String get publish {
    return Intl.message(
      'طريقة الطرح',
      name: 'publish',
      desc: '',
      args: [],
    );
  }

  /// `إسناد مباشر`
  String get directAttribution {
    return Intl.message(
      'إسناد مباشر',
      name: 'directAttribution',
      desc: '',
      args: [],
    );
  }

  /// `مناقصه`
  String get tender {
    return Intl.message(
      'مناقصه',
      name: 'tender',
      desc: '',
      args: [],
    );
  }

  /// `جهة تنفيذ أخرى`
  String get otherExecutingAgency {
    return Intl.message(
      'جهة تنفيذ أخرى',
      name: 'otherExecutingAgency',
      desc: '',
      args: [],
    );
  }

  /// `إسم الشركه`
  String get companyName {
    return Intl.message(
      'إسم الشركه',
      name: 'companyName',
      desc: '',
      args: [],
    );
  }

  /// `السجل التجاري`
  String get commercialRecord {
    return Intl.message(
      'السجل التجاري',
      name: 'commercialRecord',
      desc: '',
      args: [],
    );
  }

  /// `الشريحه الهندسيه`
  String get engineeringSlot {
    return Intl.message(
      'الشريحه الهندسيه',
      name: 'engineeringSlot',
      desc: '',
      args: [],
    );
  }

  /// `حالة الإشراف`
  String get supervisionStatues {
    return Intl.message(
      'حالة الإشراف',
      name: 'supervisionStatues',
      desc: '',
      args: [],
    );
  }

  /// `إشراف`
  String get supervision {
    return Intl.message(
      'إشراف',
      name: 'supervision',
      desc: '',
      args: [],
    );
  }

  /// `عدم الإشراف`
  String get donNotSupervision {
    return Intl.message(
      'عدم الإشراف',
      name: 'donNotSupervision',
      desc: '',
      args: [],
    );
  }

  /// `طلب مشروع جديد`
  String get newProjectRequest {
    return Intl.message(
      'طلب مشروع جديد',
      name: 'newProjectRequest',
      desc: '',
      args: [],
    );
  }

  /// `بيانات الجهه`
  String get agencyData {
    return Intl.message(
      'بيانات الجهه',
      name: 'agencyData',
      desc: '',
      args: [],
    );
  }

  /// `إسم الجهه`
  String get agencyName {
    return Intl.message(
      'إسم الجهه',
      name: 'agencyName',
      desc: '',
      args: [],
    );
  }

  /// `بيانات التواصل`
  String get communicationData {
    return Intl.message(
      'بيانات التواصل',
      name: 'communicationData',
      desc: '',
      args: [],
    );
  }

  /// `البريد الرسمي`
  String get officialMail {
    return Intl.message(
      'البريد الرسمي',
      name: 'officialMail',
      desc: '',
      args: [],
    );
  }

  /// `إسم المدير / العميد`
  String get mangerNameOr {
    return Intl.message(
      'إسم المدير / العميد',
      name: 'mangerNameOr',
      desc: '',
      args: [],
    );
  }

  /// `رقم المدير / العميد`
  String get mangerMobileOr {
    return Intl.message(
      'رقم المدير / العميد',
      name: 'mangerMobileOr',
      desc: '',
      args: [],
    );
  }

  /// `التليفون الأرضي`
  String get phone {
    return Intl.message(
      'التليفون الأرضي',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `نوع المشروع`
  String get projectType {
    return Intl.message(
      'نوع المشروع',
      name: 'projectType',
      desc: '',
      args: [],
    );
  }

  /// `بيانات المشروع`
  String get projectData {
    return Intl.message(
      'بيانات المشروع',
      name: 'projectData',
      desc: '',
      args: [],
    );
  }

  /// `القيمه التقديريه`
  String get estimatedValue {
    return Intl.message(
      'القيمه التقديريه',
      name: 'estimatedValue',
      desc: '',
      args: [],
    );
  }

  /// `بيانات اللجان`
  String get committeesData {
    return Intl.message(
      'بيانات اللجان',
      name: 'committeesData',
      desc: '',
      args: [],
    );
  }

  /// `بيانات اللجنة`
  String get committeeData {
    return Intl.message(
      'بيانات اللجنة',
      name: 'committeeData',
      desc: '',
      args: [],
    );
  }

  /// `إضافة لجنه جديده`
  String get addNewCommittee {
    return Intl.message(
      'إضافة لجنه جديده',
      name: 'addNewCommittee',
      desc: '',
      args: [],
    );
  }

  /// `إسم اللجنه`
  String get committeeName {
    return Intl.message(
      'إسم اللجنه',
      name: 'committeeName',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء`
  String get create {
    return Intl.message(
      'إنشاء',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `وصف المشروع`
  String get projectDescription {
    return Intl.message(
      'وصف المشروع',
      name: 'projectDescription',
      desc: '',
      args: [],
    );
  }

  /// `المرفقات`
  String get attachments {
    return Intl.message(
      'المرفقات',
      name: 'attachments',
      desc: '',
      args: [],
    );
  }

  /// `ضمان نهائي`
  String get decimalGuarantee {
    return Intl.message(
      'ضمان نهائي',
      name: 'decimalGuarantee',
      desc: '',
      args: [],
    );
  }

  /// `ضمان أولي`
  String get annualGuarantee {
    return Intl.message(
      'ضمان أولي',
      name: 'annualGuarantee',
      desc: '',
      args: [],
    );
  }

  /// `خارج الضمان`
  String get outOfWarranty {
    return Intl.message(
      'خارج الضمان',
      name: 'outOfWarranty',
      desc: '',
      args: [],
    );
  }

  /// `إسم مقدم الطلب`
  String get applicantName {
    return Intl.message(
      'إسم مقدم الطلب',
      name: 'applicantName',
      desc: '',
      args: [],
    );
  }

  /// `سبب الرفض`
  String get rejectionReason {
    return Intl.message(
      'سبب الرفض',
      name: 'rejectionReason',
      desc: '',
      args: [],
    );
  }

  /// `أدخل سبب الرفض`
  String get enterRejectionReason {
    return Intl.message(
      'أدخل سبب الرفض',
      name: 'enterRejectionReason',
      desc: '',
      args: [],
    );
  }

  /// `إسم الجهه`
  String get sideName {
    return Intl.message(
      'إسم الجهه',
      name: 'sideName',
      desc: '',
      args: [],
    );
  }

  /// `بيانات مقدم الطلب`
  String get sidePresenter {
    return Intl.message(
      'بيانات مقدم الطلب',
      name: 'sidePresenter',
      desc: '',
      args: [],
    );
  }

  /// `تم التأكيد بنجاح`
  String get confirmingDone {
    return Intl.message(
      'تم التأكيد بنجاح',
      name: 'confirmingDone',
      desc: '',
      args: [],
    );
  }

  /// `علاقته بالجهه`
  String get sidePresenterRelation {
    return Intl.message(
      'علاقته بالجهه',
      name: 'sidePresenterRelation',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف`
  String get mobile {
    return Intl.message(
      'رقم الهاتف',
      name: 'mobile',
      desc: '',
      args: [],
    );
  }

  /// `سنه`
  String get years {
    return Intl.message(
      'سنه',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `شهر`
  String get months {
    return Intl.message(
      'شهر',
      name: 'months',
      desc: '',
      args: [],
    );
  }

  /// `أيام`
  String get days {
    return Intl.message(
      'أيام',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `يوم`
  String get day {
    return Intl.message(
      'يوم',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `إختر مده`
  String get selectDuration {
    return Intl.message(
      'إختر مده',
      name: 'selectDuration',
      desc: '',
      args: [],
    );
  }

  /// `إشراف`
  String get supervisionRole {
    return Intl.message(
      'إشراف',
      name: 'supervisionRole',
      desc: '',
      args: [],
    );
  }

  /// `تصميم`
  String get designRole {
    return Intl.message(
      'تصميم',
      name: 'designRole',
      desc: '',
      args: [],
    );
  }

  /// `أشراف وتصميم`
  String get supervisionDesignRole {
    return Intl.message(
      'أشراف وتصميم',
      name: 'supervisionDesignRole',
      desc: '',
      args: [],
    );
  }

  /// `أعمال أستشاريه`
  String get consultingRole {
    return Intl.message(
      'أعمال أستشاريه',
      name: 'consultingRole',
      desc: '',
      args: [],
    );
  }

  /// `الكل`
  String get all {
    return Intl.message(
      'الكل',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `جامعة المنصوره`
  String get mansouraUniversity {
    return Intl.message(
      'جامعة المنصوره',
      name: 'mansouraUniversity',
      desc: '',
      args: [],
    );
  }

  /// `أخرى`
  String get other {
    return Intl.message(
      'أخرى',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `غرف`
  String get rooms {
    return Intl.message(
      'غرف',
      name: 'rooms',
      desc: '',
      args: [],
    );
  }

  /// `أضف مجموعه جديده`
  String get addNewRoom {
    return Intl.message(
      'أضف مجموعه جديده',
      name: 'addNewRoom',
      desc: '',
      args: [],
    );
  }

  /// `إسم الغرفه`
  String get roomName {
    return Intl.message(
      'إسم الغرفه',
      name: 'roomName',
      desc: '',
      args: [],
    );
  }

  /// `صوره`
  String get photo {
    return Intl.message(
      'صوره',
      name: 'photo',
      desc: '',
      args: [],
    );
  }

  /// `خاصه`
  String get private {
    return Intl.message(
      'خاصه',
      name: 'private',
      desc: '',
      args: [],
    );
  }

  /// `عامه`
  String get public {
    return Intl.message(
      'عامه',
      name: 'public',
      desc: '',
      args: [],
    );
  }

  /// `حالة الجروب`
  String get groupStatus {
    return Intl.message(
      'حالة الجروب',
      name: 'groupStatus',
      desc: '',
      args: [],
    );
  }

  /// `الأعضاء`
  String get participants {
    return Intl.message(
      'الأعضاء',
      name: 'participants',
      desc: '',
      args: [],
    );
  }

  /// `مشرف`
  String get admin {
    return Intl.message(
      'مشرف',
      name: 'admin',
      desc: '',
      args: [],
    );
  }

  /// `رسائل مثبته`
  String get pinnedMessages {
    return Intl.message(
      'رسائل مثبته',
      name: 'pinnedMessages',
      desc: '',
      args: [],
    );
  }

  /// `التفاصيل`
  String get info {
    return Intl.message(
      'التفاصيل',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `المجموعات`
  String get groups {
    return Intl.message(
      'المجموعات',
      name: 'groups',
      desc: '',
      args: [],
    );
  }

  /// `إضافه عضو جديد`
  String get addParticipant {
    return Intl.message(
      'إضافه عضو جديد',
      name: 'addParticipant',
      desc: '',
      args: [],
    );
  }

  /// `تثبيت`
  String get pin {
    return Intl.message(
      'تثبيت',
      name: 'pin',
      desc: '',
      args: [],
    );
  }

  /// `حذف من المثبته`
  String get unPin {
    return Intl.message(
      'حذف من المثبته',
      name: 'unPin',
      desc: '',
      args: [],
    );
  }

  /// `إزالة هذا عضو {participantName}`
  String removeParticipant(Object participantName) {
    return Intl.message(
      'إزالة هذا عضو $participantName',
      name: 'removeParticipant',
      desc: '',
      args: [participantName],
    );
  }

  /// `هل أنت متأكد؟`
  String get areYouSure {
    return Intl.message(
      'هل أنت متأكد؟',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `إسم المنشئ`
  String get issuerName {
    return Intl.message(
      'إسم المنشئ',
      name: 'issuerName',
      desc: '',
      args: [],
    );
  }

  /// `بريد المنشئ`
  String get issuerMail {
    return Intl.message(
      'بريد المنشئ',
      name: 'issuerMail',
      desc: '',
      args: [],
    );
  }

  /// `المراجع`
  String get reviewer {
    return Intl.message(
      'المراجع',
      name: 'reviewer',
      desc: '',
      args: [],
    );
  }

  /// `حاله المراجعه`
  String get reviewStatues {
    return Intl.message(
      'حاله المراجعه',
      name: 'reviewStatues',
      desc: '',
      args: [],
    );
  }

  /// `المراجعات`
  String get reviews {
    return Intl.message(
      'المراجعات',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `داخل جامعة المنصورة`
  String get inMansoura {
    return Intl.message(
      'داخل جامعة المنصورة',
      name: 'inMansoura',
      desc: '',
      args: [],
    );
  }

  /// `خارج جامعة المنصوره`
  String get outMansoura {
    return Intl.message(
      'خارج جامعة المنصوره',
      name: 'outMansoura',
      desc: '',
      args: [],
    );
  }

  /// `نسبة الإستكمال`
  String get completionRate {
    return Intl.message(
      'نسبة الإستكمال',
      name: 'completionRate',
      desc: '',
      args: [],
    );
  }

  /// `هل تريد الخروج من التطبيق ؟`
  String get wantToExit {
    return Intl.message(
      'هل تريد الخروج من التطبيق ؟',
      name: 'wantToExit',
      desc: '',
      args: [],
    );
  }

  /// `لم يكتمل بعد، لكن بحالة جيدة`
  String get notDoneOk {
    return Intl.message(
      'لم يكتمل بعد، لكن بحالة جيدة',
      name: 'notDoneOk',
      desc: '',
      args: [],
    );
  }

  /// `لم يكتمل بعد، ومتأخر`
  String get notDoneLate {
    return Intl.message(
      'لم يكتمل بعد، ومتأخر',
      name: 'notDoneLate',
      desc: '',
      args: [],
    );
  }

  /// `انتهى بمشاكل`
  String get doneProblem {
    return Intl.message(
      'انتهى بمشاكل',
      name: 'doneProblem',
      desc: '',
      args: [],
    );
  }

  /// `انتهى بدون مشاكل`
  String get doneNoProblem {
    return Intl.message(
      'انتهى بدون مشاكل',
      name: 'doneNoProblem',
      desc: '',
      args: [],
    );
  }

  /// `علاقه مقدم الطلب`
  String get presenterRelation {
    return Intl.message(
      'علاقه مقدم الطلب',
      name: 'presenterRelation',
      desc: '',
      args: [],
    );
  }

  /// `صاحب الجهه`
  String get sideOwner {
    return Intl.message(
      'صاحب الجهه',
      name: 'sideOwner',
      desc: '',
      args: [],
    );
  }

  /// `ممثل الجهه`
  String get sideRepresentative {
    return Intl.message(
      'ممثل الجهه',
      name: 'sideRepresentative',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ الإنشاء`
  String get creationDate {
    return Intl.message(
      'تاريخ الإنشاء',
      name: 'creationDate',
      desc: '',
      args: [],
    );
  }

  /// `ملاحظات`
  String get notes {
    return Intl.message(
      'ملاحظات',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `النشاط`
  String get activity {
    return Intl.message(
      'النشاط',
      name: 'activity',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل الإنشاء`
  String get creationDetails {
    return Intl.message(
      'تفاصيل الإنشاء',
      name: 'creationDetails',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ البدايه المتوقع`
  String get plannedStartDate {
    return Intl.message(
      'تاريخ البدايه المتوقع',
      name: 'plannedStartDate',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ النهايه المتوقع`
  String get plannedEndDate {
    return Intl.message(
      'تاريخ النهايه المتوقع',
      name: 'plannedEndDate',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ البدابه الفعلى`
  String get actualStartDate {
    return Intl.message(
      'تاريخ البدابه الفعلى',
      name: 'actualStartDate',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ النهايه الفعلى`
  String get actualEndDate {
    return Intl.message(
      'تاريخ النهايه الفعلى',
      name: 'actualEndDate',
      desc: '',
      args: [],
    );
  }

  /// `وارده`
  String get coming {
    return Intl.message(
      'وارده',
      name: 'coming',
      desc: '',
      args: [],
    );
  }

  /// `صادره`
  String get out {
    return Intl.message(
      'صادره',
      name: 'out',
      desc: '',
      args: [],
    );
  }

  /// `جميع البيانات`
  String get allData {
    return Intl.message(
      'جميع البيانات',
      name: 'allData',
      desc: '',
      args: [],
    );
  }

  /// `عنوان التقرير`
  String get reportTitle {
    return Intl.message(
      'عنوان التقرير',
      name: 'reportTitle',
      desc: '',
      args: [],
    );
  }

  /// `وصف التقرير`
  String get reportDesc {
    return Intl.message(
      'وصف التقرير',
      name: 'reportDesc',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ التقرير`
  String get reportDate {
    return Intl.message(
      'تاريخ التقرير',
      name: 'reportDate',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ تقديم التقرير`
  String get reportEntryDate {
    return Intl.message(
      'تاريخ تقديم التقرير',
      name: 'reportEntryDate',
      desc: '',
      args: [],
    );
  }

  /// `مقدم التقرير`
  String get reportIssuer {
    return Intl.message(
      'مقدم التقرير',
      name: 'reportIssuer',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ النهايه يجب ان يكون بعد تاريخ البدايه`
  String get endDateIsBefore {
    return Intl.message(
      'تاريخ النهايه يجب ان يكون بعد تاريخ البدايه',
      name: 'endDateIsBefore',
      desc: '',
      args: [],
    );
  }

  /// `قائمة الجهات`
  String get agenciesList {
    return Intl.message(
      'قائمة الجهات',
      name: 'agenciesList',
      desc: '',
      args: [],
    );
  }

  /// `مهمه`
  String get task {
    return Intl.message(
      'مهمه',
      name: 'task',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل المهمة`
  String get taskDetails {
    return Intl.message(
      'تفاصيل المهمة',
      name: 'taskDetails',
      desc: '',
      args: [],
    );
  }

  /// `تعليق`
  String get comment {
    return Intl.message(
      'تعليق',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `التعليقات`
  String get allComments {
    return Intl.message(
      'التعليقات',
      name: 'allComments',
      desc: '',
      args: [],
    );
  }

  /// `إضافه تعليق`
  String get addNewComment {
    return Intl.message(
      'إضافه تعليق',
      name: 'addNewComment',
      desc: '',
      args: [],
    );
  }

  /// `غير مصرح لك !`
  String get unAuthorized {
    return Intl.message(
      'غير مصرح لك !',
      name: 'unAuthorized',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}