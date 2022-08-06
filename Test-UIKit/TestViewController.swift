//
//  ViewController.swift
//  Test-UIKit
//
//  Created by HotariTobu on 2021/09/02.
//

import SwiftUI

struct TestView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        TestViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

struct TestView_Preview: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

class TestViewController: UIViewController {
    override func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer) {
        super.preferredContentSizeDidChange(forChildContentContainer: container)
        print("\(#function)")
    }
    
    override func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer) {
        super.systemLayoutFittingSizeDidChange(forChildContentContainer: container)
        print("\(#function)")
    }
    
    override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        print("\(#function)")
        return .zero
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("\(#function)")
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        print("\(#function)")
    }
    
    override func loadView() {
        super.loadView()
        print("\(#function)")
    }
    
    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        print("\(#function)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#function)")
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        super.performSegue(withIdentifier: identifier, sender: sender)
        print("\(#function)")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("\(#function)")
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        print("\(#function)")
    }
    
    override func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, sender: Any?) -> Bool {
        print("\(#function)")
        return true
    }
    
    override func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any) -> Bool {
        print("\(#function)")
        return true
    }
    
    override func allowedChildrenForUnwinding(from source: UIStoryboardUnwindSegueSource) -> [UIViewController] {
        print("\(#function)")
        return []
    }
    
    override func childContaining(_ source: UIStoryboardUnwindSegueSource) -> UIViewController? {
        print("\(#function)")
        return UIViewController()
    }
    
    override func forUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any?) -> UIViewController? {
        print("\(#function)")
        return UIViewController()
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        super.unwind(for: unwindSegue, towards: subsequentVC)
        print("\(#function)")
    }
    
    override func segueForUnwinding(to toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue? {
        print("\(#function)")
        return nil
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("\(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("\(#function)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("\(#function)")
    }
    
    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        super.present(viewControllerToPresent, animated: flag, completion: completion)
        print("\(#function)")
    }
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        super.dismiss(animated: flag, completion: completion)
        print("\(#function)")
    }
    
    override func setNeedsStatusBarAppearanceUpdate() {
        super.setNeedsStatusBarAppearanceUpdate()
        print("\(#function)")
    }
    
    override func targetViewController(forAction action: Selector, sender: Any?) -> UIViewController? {
        print("\(#function)")
        return UIViewController()
    }
    
    override func show(_ vc: UIViewController, sender: Any?) {
        super.show(vc, sender: sender)
        print("\(#function)")
    }
    
    override func showDetailViewController(_ vc: UIViewController, sender: Any?) {
        super.showDetailViewController(vc, sender: sender)
        print("\(#function)")
    }
    
    override func rotatingHeaderView() -> UIView? {
        print("\(#function)")
        return UIView()
    }
    
    override func rotatingFooterView() -> UIView? {
        print("\(#function)")
        return UIView()
    }
    
    override func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        super.willRotate(to: toInterfaceOrientation, duration: duration)
        print("\(#function)")
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        super.didRotate(from: fromInterfaceOrientation)
        print("\(#function)")
    }
    
    override func willAnimateRotation(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        super.willAnimateRotation(to: toInterfaceOrientation, duration: duration)
        print("\(#function)")
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        print("\(#function)")
    }
    
    override func addChild(_ childController: UIViewController) {
        super.addChild(childController)
        print("\(#function)")
    }
    
    override func removeFromParent() {
        super.removeFromParent()
        print("\(#function)")
    }
    
    override func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil) {
        super.transition(from: fromViewController, to: toViewController, duration: duration, options: options, animations: animations, completion: completion)
        print("\(#function)")
    }
    
    override func beginAppearanceTransition(_ isAppearing: Bool, animated: Bool) {
        super.beginAppearanceTransition(isAppearing, animated: animated)
        print("\(#function)")
    }
    
    override func endAppearanceTransition() {
        super.endAppearanceTransition()
        print("\(#function)")
    }
    
    override func setOverrideTraitCollection(_ collection: UITraitCollection?, forChild childViewController: UIViewController) {
        super.setOverrideTraitCollection(collection, forChild: childViewController)
        print("\(#function)")
    }
    
    override func overrideTraitCollection(forChild childViewController: UIViewController) -> UITraitCollection? {
        print("\(#function)")
        return UITraitCollection()
    }
    
    override func shouldAutomaticallyForwardRotationMethods() -> Bool {
        print("\(#function)")
        return true
    }
    
    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        print("\(#function)")
    }
    
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        print("\(#function)")
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)
        print("\(#function)")
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)
        print("\(#function)")
    }
    
    override func applicationFinishedRestoringState() {
        super.applicationFinishedRestoringState()
        print("\(#function)")
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        print("\(#function)")
    }
    
    override func viewLayoutMarginsDidChange() {
        super.viewLayoutMarginsDidChange()
        print("\(#function)")
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        print("\(#function)")
    }
    
    override func addKeyCommand(_ keyCommand: UIKeyCommand) {
        super.addKeyCommand(keyCommand)
        print("\(#function)")
    }
    
    override func removeKeyCommand(_ keyCommand: UIKeyCommand) {
        super.removeKeyCommand(keyCommand)
        print("\(#function)")
    }
    
    /*override func registerForPreviewing(with delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing {
        print("\(#function)")
        return UIViewControllerPreviewing
    }*/
    
    override func unregisterForPreviewing(withContext previewing: UIViewControllerPreviewing) {
        super.unregisterForPreviewing(withContext: previewing)
        print("\(#function)")
    }
    
    override func setNeedsUpdateOfScreenEdgesDeferringSystemGestures() {
        super.setNeedsUpdateOfScreenEdgesDeferringSystemGestures()
        print("\(#function)")
    }
    
    override func setNeedsUpdateOfHomeIndicatorAutoHidden() {
        super.setNeedsUpdateOfHomeIndicatorAutoHidden()
        print("\(#function)")
    }
    
    override func setNeedsUpdateOfPrefersPointerLocked() {
        super.setNeedsUpdateOfPrefersPointerLocked()
        print("\(#function)")
    }
    
}
