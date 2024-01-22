import 'dart:io';

import 'package:flutter/material.dart';
class AppColor {
  static Color yellow = Color(0xfff7c844);
  static Color bgColor = Color(0xfff8f7f3);
  static Color bgSideMenu = Color(0xff131e29);
  static Color white = Colors.white;
  static Color black = Colors.black;
}

class Letter {
  String referenceNumber;
  String date;
  String senderName;
  String organization;
  String contactInfo;
  String subject;
  String urgency;
  String contentSummary;
  String attachments;
  String assignedTo;
  String deadline;
  String comments;
  String approvalReview;

  Letter({
    required this.referenceNumber,
    required this.date,
    required this.senderName,
    required this.organization,
    required this.contactInfo,
    required this.subject,
    required this.urgency,
    required this.contentSummary,
    required this.attachments,
    required this.assignedTo,
    required this.deadline,
    required this.comments,
    required this.approvalReview,
  });
}

class LetterManagementPage extends StatefulWidget {
  @override
  _LetterManagementPageState createState() => _LetterManagementPageState();
}

class _LetterManagementPageState extends State<LetterManagementPage> {
  List<Letter> letters = [];

  final TextEditingController referenceNumber = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController senderNameController = TextEditingController();
  final TextEditingController organizationController = TextEditingController();
  final TextEditingController contactInfoController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController urgencyController = TextEditingController();
  final TextEditingController contentSummaryController = TextEditingController();
  final TextEditingController attachmentsController = TextEditingController();
  final TextEditingController assignedToController = TextEditingController();
  final TextEditingController deadlineController = TextEditingController();
  final TextEditingController commentsController = TextEditingController();
  final TextEditingController approvalReviewController = TextEditingController();

  //File? attachment;

  int rowsPerPage = 15;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List<DataRow> currentRows = _buildRows()
        .skip(currentPage * rowsPerPage)
        .take(rowsPerPage)
        .toList();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Letter Management System', style: TextStyle(fontSize: 20)),
          elevation: 8,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.yellow,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search, color: Colors.white),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () => _showForm(context),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  horizontalMargin: 20,
                  columns: _buildColumns(),
                  rows: currentRows,
                  headingRowColor: MaterialStateProperty.all(
                      Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: currentPage > 0 ? () => _changePage(-1) : null,
                    child: Text('Previous'),
                  ),
                  TextButton(
                    onPressed: currentRows.length == rowsPerPage ? () =>
                        _changePage(1) : null,
                    child: Text('Next'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<DataColumn> _buildColumns() {
    return [
      DataColumn(
        label: Container(
          color: Colors.yellow,
          child: Text(
              'Reference Number', style: TextStyle(color: Colors.white)),
        ),
      ),
      DataColumn(label: Text('Date')),
      DataColumn(label: Text('Sender Name')),
      DataColumn(label: Text('Organization')),
      DataColumn(label: Text('Contact Info')),
      DataColumn(label: Text('Subject')),
      DataColumn(label: Text('Urgency')),
      DataColumn(label: Text('Content Summary')),
      DataColumn(label: Text('Attachments')),
      DataColumn(label: Text('Assigned To')),
      DataColumn(label: Text('Deadline')),
      DataColumn(label: Text('Comments')),
      DataColumn(label: Text('Approval Review')),
    ];
  }

  List<DataRow> _buildRows() {
    return letters.map((letter) {
      return DataRow(
        color: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return AppColor.bgSideMenu;
            } else {
              return AppColor.bgSideMenu;
            }
          },
        ),

        cells: [
          DataCell(Text(letter.referenceNumber)),
          DataCell(Text(letter.date)),
          DataCell(Text(letter.senderName)),
          DataCell(Text(letter.organization)),
          DataCell(Text(letter.contactInfo)),
          DataCell(Text(letter.subject)),
          DataCell(Text(letter.urgency)),
          DataCell(Text(letter.contentSummary)),
          DataCell(Text(letter.attachments)),
          DataCell(Text(letter.assignedTo)),
          DataCell(Text(letter.deadline)),
          DataCell(Text(letter.comments)),
          DataCell(Text(letter.approvalReview)),
        ],
      );
    }).toList();
  }

  Future<void> _showForm(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Letter'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                _buildTextField(referenceNumber, 'reference number'),
                _buildTextField(dateController, 'Date'),
                _buildTextField(senderNameController, 'Sender Name'),
                _buildTextField(organizationController, 'Organization'),
                _buildTextField(subjectController, 'Subject'),
                _buildTextField(urgencyController, 'Urgency'),
                _buildTextField(contentSummaryController, 'Content Summary'),
                //_buildAttachmentField(),
                _buildTextField(assignedToController, 'Assigned To'),
                _buildTextField(deadlineController, 'Deadline'),
                _buildTextField(commentsController, 'Comments'),
                _buildTextField(approvalReviewController, 'Approval Review'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _submitForm(context);
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
    );
  }

  void _submitForm(BuildContext context) {
    if (_validateForm()) {
      setState(() {
        letters.add(
          Letter(
            referenceNumber: referenceNumber.text,
            date: dateController.text,
            senderName: senderNameController.text,
            organization: organizationController.text,
            subject: subjectController.text,
            urgency: urgencyController.text,
            contentSummary: contentSummaryController.text,
            attachments: '', // Update this line if needed
            assignedTo: assignedToController.text,
            deadline: deadlineController.text,
            comments: commentsController.text,
            approvalReview: approvalReviewController.text,
            contactInfo: '',
          ),
        );
      });

      _clearControllers();
      Navigator.of(context).pop();
    } else {
      _showErrorDialog(context);
    }
  }

  bool _validateForm() {
    return referenceNumber.text.isNotEmpty &&
        assignedToController.text.isNotEmpty &&
        commentsController.text.isNotEmpty;
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Please fill in all required fields.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _clearControllers() {
    dateController.clear();
    senderNameController.clear();
    organizationController.clear();
    contactInfoController.clear();
    subjectController.clear();
    urgencyController.clear();
    contentSummaryController.clear();
    attachmentsController.clear();
    assignedToController.clear();
    deadlineController.clear();
    commentsController.clear();
    approvalReviewController.clear();
  }

  void _changePage(int delta) {
    setState(() {
      currentPage += delta;
    });
  }
}

void main() {
  runApp(LetterManagementPage());
}